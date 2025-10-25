module biriscv_multiplier
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input           opcode_valid_i
    ,input  [ 31:0]  opcode_opcode_i
    ,input  [ 31:0]  opcode_ra_operand_i
    ,input  [ 31:0]  opcode_rb_operand_i
    ,input           hold_i

    // Outputs
    ,output [ 31:0]  writeback_value_o
);
    
    /*===============================
                OPCODES
    =================================
    +--------+------------+------------+------------+
    | INST   | funct7 (7) | funct3 (3) | opcode (7) |
    |        |  31 - 25   |   14 - 12  |   6 - 0    |
    +--------+------------+------------+------------+
    | MUL    |   0000001  |    000     |   0110011  |
    | MULH   |   0000001  |    001     |   0110011  |
    | MULHSU |   0000001  |    010     |   0110011  |
    | MULHU  |   0000001  |    011     |   0110011  |
    +--------+------------+------------+------------+
    | DIV    |   0000001  |    100     |   0110011  |
    | DIVU   |   0000001  |    101     |   0110011  |
    | REM    |   0000001  |    110     |   0110011  |
    | REMU   |   0000001  |    111     |   0110011  |
    +--------+------------+------------+-----------*/

    // Funct3 from multiplication opcodes
    localparam MUL    = 3'b000;
    localparam MULH   = 3'b001;
    localparam MULHSU = 3'b010;
    localparam MULHU  = 3'b011;

    // Stage 1 Signals
    wire [2:0] funct3_s;             // Funct3 of opcode
    reg ext_A_S1_s;                  // Indicate if A needs be extended
    reg ext_B_S1_s;                  // Indicate if B needs be extended
    reg upper_S1_s;                  // Indicate if the output will be the lower or upper part of answer
    wire [31:0] mux_a_S1_s [31:0];   // 32 Mux to select between A or 0
    wire B_msb_S1_s;                 // MSB of A
    wire B_sig_or_unsig_S1_s;        // Set if B is signed or unsigned
    reg  [31:0] B_inverted_S1_s;            // Store B inverted
    reg  [31:0] A_inverted_S1_s;            // Store A inverted

    // Stage 2 Signals
    wire [63:0] A_ext_S2_s [31:0];
    wire [63:0] A_sft_S2_s [31:0];
    wire [63:0] Add_L1_S2_s [15:0];
    wire [63:0] Add_L2_S2_s [7:0];

    // Stage 3 signals
    wire [63:0] Add_L3_S3_s [3:0];
    wire [63:0] Add_L4_S3_s [1:0];
    wire [63:0] Add_L5_S3_s;
    

    /*===============================
                CONTROL
    ===============================*/


    // Take the funct3 from opcode, bits 12, 13 and 14.
    assign funct3_s = opcode_opcode_i[14:12];

    // Set the signals to control the operations
    always@* begin
        case (funct3_s)
            MUL : begin
                ext_A_S1_s = 1'b0;
                ext_B_S1_s = 1'b0;
                upper_S1_s = 1'b0;
            end
            MULH : begin
                ext_A_S1_s = 1'b1;
                ext_B_S1_s = 1'b1;
                upper_S1_s = 1'b1;
            end
            MULHU : begin
                ext_A_S1_s = 1'b0;
                ext_B_S1_s = 1'b0;
                upper_S1_s = 1'b1;
            end
            MULHSU : begin
                ext_A_S1_s = 1'b1;
                ext_B_S1_s = 1'b0;
                upper_S1_s = 1'b1;
            end
            default : begin // Division instructions, do MUL
                ext_A_S1_s = 1'b0;
                ext_B_S1_s = 1'b0;
                upper_S1_s = 1'b0;
            end
        endcase
    end

    /*===============================
              INVERT A AND B
    =================================
    B need be positive if multiplication is signed.

     A  x  B =  AB           --> no invert nothing
    -A  x  B = -AB           --> no invert nothing
    -A  x -B =  AB =  A x B  --> invert both
     A  x -B = -AB = -A x B  --> invert both 

    */

    // Take the MSB of B
    assign B_msb_S1_s = opcode_rb_operand_i[31];

    // This signal indicates if B and A need be inverted
    assign B_sig_or_unsig_S1_s = ext_B_S1_s && B_msb_S1_s;

    // Invert A and B or not
    always@* begin
        if(B_sig_or_unsig_S1_s == 1'b1) begin
            B_inverted_S1_s = ~opcode_rb_operand_i + 32'h00000001;
            A_inverted_S1_s = ~opcode_ra_operand_i + 32'h00000001;
        end
        else begin
            B_inverted_S1_s = opcode_rb_operand_i;
            A_inverted_S1_s = opcode_ra_operand_i;
        end
    end

    /*===============================
                MULTIPLEXERS
    ===============================*/
    
    genvar i;
    generate
        for (i=0 ; i<32 ; i=i+1) begin
            assign mux_a_S1_s[i] = (B_inverted_S1_s[i]==1'b1) ?  A_inverted_S1_s : 32'h00000000;  // TEST ? VALUE_IF_TRUE : VALUE_IF_FALSE ;
        end
    endgenerate


    //PIPELINE STAGE HERE

    /*===============================
                EXTEND A
    ===============================*/

    // if is signed extend the signal, else concatenate 0
    genvar j;
    generate
        for (j=0 ; j<32 ; j=j+1) begin
            assign A_ext_S2_s[j] = (ext_A_S1_s==1'b1) ? {{32{mux_a_S1_s[j][31]}} ,mux_a_S1_s[j]} : {32'h00000000 ,mux_a_S1_s[j]};
        end
    endgenerate

    /*===============================
                SHIFT A
    ===============================*/

    // if is signed extend the signal, else concatenate 0
    genvar k;
    generate
        for (k=0 ; k<32 ; k=k+1) begin
            assign A_sft_S2_s[k] = A_ext_S2_s[k] << k;
        end
    endgenerate

    /*===============================
                ADD 2 LAYERS
    ===============================*/
    genvar l;
    generate
        for (l=0 ; l<16 ; l=l+1) begin
            assign Add_L1_S2_s[l] = A_sft_S2_s[l*2] + A_sft_S2_s[l*2+1];
        end
    endgenerate

    genvar m;
    generate
        for (m=0 ; m<8 ; m=m+1) begin
            assign Add_L2_S2_s[m] = Add_L1_S2_s[m*2] + Add_L1_S2_s[m*2+1];
        end
    endgenerate

    //PIPELINE STAGE HERE

    /*===============================
                ADD 2 LAYERS
    ===============================*/
    genvar n;
    generate
        for (n=0 ; n<4 ; n=n+1) begin
            assign Add_L3_S3_s[n] = Add_L2_S2_s[n*2] + Add_L2_S2_s[n*2+1];
        end
    endgenerate

    genvar o;
    generate
        for (o=0 ; o<2 ; o=o+1) begin
            assign Add_L4_S3_s[o] = Add_L3_S3_s[o*2] + Add_L3_S3_s[o*2+1];
        end
    endgenerate

    assign Add_L5_S3_s = Add_L4_S3_s[0] + Add_L4_S3_s[1];


    assign writeback_value_o = (upper_S1_s==1'b1) ? Add_L5_S3_s[63:32] : Add_L5_S3_s[31:0];
    

endmodule
