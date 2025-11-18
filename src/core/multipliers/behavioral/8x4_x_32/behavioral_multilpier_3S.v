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

    wire [3:0] B_4b_s [7:0];
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

    reg [71:0] pipe_stage_s [7:0];
    reg upper_reg;
    

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
        EXTEND A AND B TO 33 BITS
    ===============================*/

    assign A_ext_33b_s = (sig_A_S1_s==1'b1) ? {opcode_ra_operand_i[31] ,opcode_ra_operand_i} : {1'b0 ,opcode_ra_operand_i};
    assign A_ext_72b_s = (sig_A_S1_s==1'b1) ? {{39{A_ext_33b_s[32]}} ,A_ext_33b_s} : {39'h0000000000 ,A_ext_33b_s};

    assign B_4b_s[0] = opcode_rb_operand_i[3:0];
    assign B_4b_s[1] = opcode_rb_operand_i[7:4];
    assign B_4b_s[2] = opcode_rb_operand_i[11:8];
    assign B_4b_s[3] = opcode_rb_operand_i[15:12];
    assign B_4b_s[4] = opcode_rb_operand_i[19:16];
    assign B_4b_s[5] = opcode_rb_operand_i[23:20];
    assign B_4b_s[6] = opcode_rb_operand_i[27:24];
    assign B_4b_s[7] = opcode_rb_operand_i[31:28];

    assign B_ext_72b_s[0] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[0][3]}} ,B_4b_s[0]} : {67'h00000000000000000 ,B_4b_s[0]};
    assign B_ext_72b_s[1] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[1][3]}} ,B_4b_s[1]} : {67'h00000000000000000 ,B_4b_s[1]};
    assign B_ext_72b_s[2] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[2][3]}} ,B_4b_s[2]} : {67'h00000000000000000 ,B_4b_s[2]};
    assign B_ext_72b_s[3] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[3][3]}} ,B_4b_s[3]} : {67'h00000000000000000 ,B_4b_s[3]};
    assign B_ext_72b_s[4] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[4][3]}} ,B_4b_s[4]} : {67'h00000000000000000 ,B_4b_s[4]};
    assign B_ext_72b_s[5] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[5][3]}} ,B_4b_s[5]} : {67'h00000000000000000 ,B_4b_s[5]};
    assign B_ext_72b_s[6] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[6][3]}} ,B_4b_s[6]} : {67'h00000000000000000 ,B_4b_s[6]};
    assign B_ext_72b_s[7] = (sig_B_S1_s==1'b1) ? {{67{B_4b_s[7][3]}} ,B_4b_s[7]} : {67'h00000000000000000 ,B_4b_s[7]};


    assign partial_mult_s[0] = A_ext_72b_s * B_ext_72b_s[0];
    assign partial_mult_s[1] = A_ext_72b_s * B_ext_72b_s[1];
    assign partial_mult_s[2] = A_ext_72b_s * B_ext_72b_s[2];
    assign partial_mult_s[3] = A_ext_72b_s * B_ext_72b_s[3];
    assign partial_mult_s[4] = A_ext_72b_s * B_ext_72b_s[4];
    assign partial_mult_s[5] = A_ext_72b_s * B_ext_72b_s[5];
    assign partial_mult_s[6] = A_ext_72b_s * B_ext_72b_s[6];
    assign partial_mult_s[7] = A_ext_72b_s * B_ext_72b_s[7];


    always@(posedge clk_i, posedge rst_i)begin
        if(rst_i)begin
            pipe_stage_s[0] <= 72'h000000000000000000;
            pipe_stage_s[1] <= 72'h000000000000000000;
            pipe_stage_s[2] <= 72'h000000000000000000;
            pipe_stage_s[3] <= 72'h000000000000000000;
            pipe_stage_s[4] <= 72'h000000000000000000;
            pipe_stage_s[5] <= 72'h000000000000000000;
            pipe_stage_s[6] <= 72'h000000000000000000;
            pipe_stage_s[7] <= 72'h000000000000000000;
            upper_reg <= 1'b0;
        end
        else begin
            pipe_stage_s[0] <= partial_mult_s[0];
            pipe_stage_s[1] <= partial_mult_s[1];
            pipe_stage_s[2] <= partial_mult_s[2];
            pipe_stage_s[3] <= partial_mult_s[3];
            pipe_stage_s[4] <= partial_mult_s[4];
            pipe_stage_s[5] <= partial_mult_s[5];
            pipe_stage_s[6] <= partial_mult_s[6];
            pipe_stage_s[7] <= partial_mult_s[7];
            upper_reg <= upper_S1_s;
        end
    end

    assign sft_part_mult_1_s = pipe_stage_s[1]<<4;
    assign sft_part_mult_2_s = pipe_stage_s[2]<<8;
    assign sft_part_mult_3_s = pipe_stage_s[3]<<12;
    assign sft_part_mult_4_s = pipe_stage_s[4]<<16;
    assign sft_part_mult_5_s = pipe_stage_s[5]<<20;
    assign sft_part_mult_6_s = pipe_stage_s[6]<<24;
    assign sft_part_mult_7_s = pipe_stage_s[7]<<28;

    assign mult_result_s = pipe_stage_s[0] + sft_part_mult_1_s + sft_part_mult_2_s + sft_part_mult_3_s + sft_part_mult_4_s +
                            sft_part_mult_5_s + sft_part_mult_6_s + sft_part_mult_7_s;

    assign writeback_value_o = (upper_reg==1'b1) ? mult_result_s[63:32] : mult_result_s[31:0];
    

endmodule
