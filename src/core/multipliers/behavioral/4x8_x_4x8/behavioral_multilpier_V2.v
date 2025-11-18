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

    reg sig_A_S1_s;
    reg sig_B_S1_s;
    reg upper_S1_s;

    wire [32:0] A_ext_33b_s;
    wire [71:0] B_ext_72b_s [7:0];
    wire [71:0] A_ext_72b_s;

    wire [7:0] B_8b_s [3:0];
    wire [7:0] A_8b_s [3:0];

    wire [15:0] A_16b_s [3:0];
    wire [15:0] B_16b_s [3:0];

    wire [15:0] AxB_16b_s [15:0];
    wire [63:0] sft_mult_s [15:0];
    wire [63:0] ext_mult_s [15:0];



    wire [71:0] partial_mult_s [7:0];
    wire [75:0] sft_part_mult_1_s;
    wire [79:0] sft_part_mult_2_s;
    wire [83:0] sft_part_mult_3_s;
    wire [87:0] sft_part_mult_4_s;
    wire [91:0] sft_part_mult_5_s;
    wire [95:0] sft_part_mult_6_s;
    wire [99:0] sft_part_mult_7_s;

    wire [127:0] mult_result_s;

    wire [2:0] funct3_s;

    /*===============================
                CONTROL
    ===============================*/


    // Take the funct3 from opcode, bits 12, 13 and 14.
    assign funct3_s = opcode_opcode_i[14:12];

    // Set the signals to control the operations
    always@* begin
        case (funct3_s)
            MUL : begin
                sig_A_S1_s = 1'b0;
                sig_B_S1_s = 1'b0;
                upper_S1_s = 1'b0;
            end
            MULH : begin
                sig_A_S1_s = 1'b1;
                sig_B_S1_s = 1'b1;
                upper_S1_s = 1'b1;
            end
            MULHU : begin
                sig_A_S1_s = 1'b0;
                sig_B_S1_s = 1'b0;
                upper_S1_s = 1'b1;
            end
            MULHSU : begin
                sig_A_S1_s = 1'b1;
                sig_B_S1_s = 1'b0;
                upper_S1_s = 1'b1;
            end
            default : begin // Division instructions, do MUL
                sig_A_S1_s = 1'b0;
                sig_B_S1_s = 1'b0;
                upper_S1_s = 1'b0;
            end
        endcase
    end

    /*===============================
             4(A_8b) x 4(B_8b)
    ===============================*/

    assign A_8b_s[0] = opcode_ra_operand_i[7:0];
    assign A_8b_s[1] = opcode_ra_operand_i[15:8];
    assign A_8b_s[2] = opcode_ra_operand_i[23:16];
    assign A_8b_s[3] = opcode_ra_operand_i[31:24];

    assign B_8b_s[0] = opcode_rb_operand_i[7:0];
    assign B_8b_s[1] = opcode_rb_operand_i[15:8];
    assign B_8b_s[2] = opcode_rb_operand_i[23:16];
    assign B_8b_s[3] = opcode_rb_operand_i[31:24];

    assign A_16b_s[0] = {8'b00000000 ,A_8b_s[0]};
    assign A_16b_s[1] = {8'b00000000 ,A_8b_s[1]};
    assign A_16b_s[2] = {8'b00000000 ,A_8b_s[2]};
    assign A_16b_s[3] = (sig_A_S1_s==1'b1) ? {{{4{A_8b_s[3][7]}}},A_8b_s[3]} : {4'b0000 ,A_8b_s[3]};

    assign B_16b_s[0] = {8'b00000000 ,B_8b_s[0]};
    assign B_16b_s[1] = {8'b00000000 ,B_8b_s[1]};
    assign B_16b_s[2] = {8'b00000000 ,B_8b_s[2]};
    assign B_16b_s[3] = (sig_B_S1_s==1'b1) ? {{{4{B_8b_s[3][7]}}},B_8b_s[3]} : {4'b0000 ,B_8b_s[3]};



    genvar i, j;
    generate
        for (i = 0; i < 4; i = i + 1) begin : loopA
            for (j = 0; j < 4; j = j + 1) begin : loopB
                assign AxB_16b_s[i*4 + j] = A_16b_s[i] * B_16b_s[j];
            end
        end
    endgenerate

    /*===============================
            EXTEND RESULTS
    ===============================*/

    generate
        for (i = 0; i < 16; i = i + 1) begin
            assign ext_mult_s[i] = {{48{AxB_16b_s[i][15]}}, AxB_16b_s[i]} ;
        end
    endgenerate

    /*===============================
            SHIFT RESULTS
    ===============================*/


    assign sft_mult_s[0]  = ext_mult_s[0];        // A0 + B0
    assign sft_mult_s[1]  = ext_mult_s[1]<<8;     // A0 + B1<<8
    assign sft_mult_s[2]  = ext_mult_s[2]<<16;    // A0 + B2<<16
    assign sft_mult_s[3]  = ext_mult_s[3]<<24;    // A0 + B3<<24

    assign sft_mult_s[4]  = ext_mult_s[4]<<8;     // A0<<8 + B0
    assign sft_mult_s[5]  = ext_mult_s[5]<<16;    // A0<<8 + B1<<8
    assign sft_mult_s[6]  = ext_mult_s[6]<<24;    // A0<<8 + B2<<16
    assign sft_mult_s[7]  = ext_mult_s[7]<<32;    // A0<<8 + B3<<24

    assign sft_mult_s[8]  = ext_mult_s[8]<<16;    // A0<<16 + B0
    assign sft_mult_s[9]  = ext_mult_s[9]<<24;    // A0<<16 + B1<<8
    assign sft_mult_s[10] = ext_mult_s[10]<<32;   // A0<<16 + B2<<16
    assign sft_mult_s[11] = ext_mult_s[11]<<40;   // A0<<16 + B3<<24

    assign sft_mult_s[12] = ext_mult_s[12]<<24;   // A0<<24 + B0
    assign sft_mult_s[13] = ext_mult_s[13]<<32;   // A0<<24 + B1<<8
    assign sft_mult_s[14] = ext_mult_s[14]<<40;   // A0<<24 + B2<<16
    assign sft_mult_s[15] = ext_mult_s[15]<<48;   // A0<<24 + B3<<24

    

    /*===============================
        EXTEND A AND B TO 33 BITS
    ===============================*/


    assign mult_result_s = sft_mult_s[0] + sft_mult_s[1] + sft_mult_s[2] + sft_mult_s[3] +
                           sft_mult_s[4] + sft_mult_s[5] + sft_mult_s[6] + sft_mult_s[7] + 
                           sft_mult_s[8] + sft_mult_s[9] + sft_mult_s[10] + sft_mult_s[11] +
                           sft_mult_s[12] + sft_mult_s[13] + sft_mult_s[14] + sft_mult_s[15];
                           
    assign writeback_value_o = (upper_S1_s==1'b1) ? mult_result_s[63:32] : mult_result_s[31:0];
    

endmodule
