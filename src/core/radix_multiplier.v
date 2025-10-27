module biriscv_multiplier
(
    // Inputs
    input            clk_i,
    input            rst_i,
    input            opcode_valid_i,
    input   [ 31:0]  opcode_opcode_i,
    input   [ 31:0]  opcode_ra_operand_i,
    input   [ 31:0]  opcode_rb_operand_i,
    input            hold_i,

    // Outputs
    output  [ 31:0]  writeback_value_o
);
    
    /*===============================
              OPCODES
    =================================
    +--------+------------+------------+------------+
    | INST   | funct7 (7) | funct3 (3) | opcode (7) |
    |        |   31 - 25  |   14 - 12  |   6 - 0    |
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

    localparam MUL    = 3'b000;
    localparam MULH   = 3'b001;
    localparam MULHSU = 3'b010;
    localparam MULHU  = 3'b011;

    localparam PP_WIDTH = 65;
    localparam NUM_PPS  = 16;

    // Control Signals
    wire [2:0] funct3_s;
    reg ext_A_s;
    reg ext_B_s;
    reg upper_s;

    // Radix-4 Booth Signals
    wire [32:0] operand_a_33b_s;
    wire [32:0] operand_b_33b_s;
    wire [PP_WIDTH-1:0] pp_scaled_s [NUM_PPS-1:0];
    
    // Adder Tree Signals
    wire [PP_WIDTH-1:0] Add_L1_s [7:0];
    wire [PP_WIDTH-1:0] Add_L2_s [3:0];
    wire [PP_WIDTH-1:0] Add_L3_s [1:0];
    wire [PP_WIDTH-1:0] final_result_s;

    /*===============================
               CONTROL
    ===============================*/
    assign funct3_s = opcode_opcode_i[14:12];

    always@* begin
        case (funct3_s)
            MUL : 
            begin
                ext_A_s = 1'b0;
                ext_B_s = 1'b0;
                upper_s = 1'b0;
            end
            MULH : 
            begin
                ext_A_s = 1'b1;
                ext_B_s = 1'b1;
                upper_s = 1'b1;
            end
            MULHU : 
            begin
                ext_A_s = 1'b0;
                ext_B_s = 1'b0;
                upper_s = 1'b1;
            end
            MULHSU : 
            begin
                ext_A_s = 1'b1;
                ext_B_s = 1'b0;
                upper_s = 1'b1;
            end
            default : 
            begin // Division/REM instructions are ignored
                ext_A_s = 1'b0;
                ext_B_s = 1'b0;
                upper_s = 1'b0;
            end
        endcase
    end

    /*===============================
          PREPARE OPERANDS (33-bit)
    ===============================*/
    assign operand_a_33b_s = ext_A_s ? {opcode_ra_operand_i[31], opcode_ra_operand_i} : {1'b0, opcode_ra_operand_i};
    assign operand_b_33b_s = ext_B_s ? {opcode_rb_operand_i[31], opcode_rb_operand_i} : {1'b0, opcode_rb_operand_i};
    
    /*===============================
       RADIX-4 BOOTH PARTIAL PRODUCTS
    ===============================*/
    wire [PP_WIDTH-1:0] op_a_plus1_s;
    wire [PP_WIDTH-1:0] op_a_plus2_s;
    wire [PP_WIDTH-1:0] op_a_neg1_s;
    wire [PP_WIDTH-1:0] op_a_neg2_s;

    assign op_a_plus1_s = $signed(operand_a_33b_s);
    assign op_a_plus2_s = $signed(operand_a_33b_s) << 1;
    assign op_a_neg1_s  = -$signed(operand_a_33b_s);
    assign op_a_neg2_s  = -($signed(operand_a_33b_s) << 1);

    genvar i;
    generate
        for (i = 0; i < NUM_PPS; i = i + 1) 
        begin : gen_partial_products
            wire [2:0] booth_in;
            reg  [PP_WIDTH-1:0] pp_unscaled;

            assign booth_in[0] = (i == 0) ? 1'b0 : operand_b_33b_s[2*i-1];
            assign booth_in[1] = operand_b_33b_s[2*i];
            assign booth_in[2] = operand_b_33b_s[2*i+1];

            always @* begin
                case (booth_in)
                    3'b000, 3'b111: pp_unscaled = {PP_WIDTH{1'b0}};
                    3'b001, 3'b010: pp_unscaled = op_a_plus1_s;
                    3'b011:         pp_unscaled = op_a_plus2_s;
                    3'b100:         pp_unscaled = op_a_neg2_s;
                    3'b101, 3'b110: pp_unscaled = op_a_neg1_s;
                    default:        pp_unscaled = {PP_WIDTH{1'b0}};
                endcase
            end
            
            assign pp_scaled_s[i] = pp_unscaled << (2 * i);
        end
    endgenerate

    /*===============================
              ADDER TREE
    ===============================*/
    genvar l;
    generate
        for (l=0 ; l<8 ; l=l+1) 
        begin
            assign Add_L1_s[l] = pp_scaled_s[l*2] + pp_scaled_s[l*2+1];
        end
    endgenerate

    genvar m;
    generate
        for (m=0 ; m<4 ; m=m+1) 
        begin
            assign Add_L2_s[m] = Add_L1_s[m*2] + Add_L1_s[m*2+1];
        end
    endgenerate

    genvar n;
    generate
        for (n=0 ; n<2 ; n=n+1) 
        begin
            assign Add_L3_s[n] = Add_L2_s[n*2] + Add_L2_s[n*2+1];
        end
    endgenerate

    assign final_result_s = Add_L3_s[0] + Add_L3_s[1];

    /*===============================
           FINAL RESULT SELECTION
    ===============================*/
    assign writeback_value_o = upper_s ? final_result_s[63:32] : final_result_s[31:0];

endmodule