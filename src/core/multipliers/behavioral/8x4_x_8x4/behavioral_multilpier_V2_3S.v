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
    wire [3:0] A_4b_s [7:0];
    wire [7:0] A_8b_s [7:0];
    wire [7:0] B_8b_s [7:0];
    wire [7:0] AxB_8b_s [63:0];
    wire [63:0] sft_mult_s [63:0];
    wire [63:0] ext_mult_s [63:0];



    wire [71:0] partial_mult_s [7:0];
    wire [75:0] sft_part_mult_1_s;
    wire [79:0] sft_part_mult_2_s;
    wire [83:0] sft_part_mult_3_s;
    wire [87:0] sft_part_mult_4_s;
    wire [91:0] sft_part_mult_5_s;
    wire [95:0] sft_part_mult_6_s;
    wire [99:0] sft_part_mult_7_s;

    wire [63:0] mult_result_s [63:0];

    wire [2:0] funct3_s;

    reg [7:0] pipe_stage_s [63:0];
    reg [63:0] pipe_stage2_s [7:0];
    reg upper_reg;
    reg upper2_reg;

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
             8(A_4b) x 8(B_4b)
    ===============================*/

    assign A_4b_s[0] = opcode_ra_operand_i[3:0];
    assign A_4b_s[1] = opcode_ra_operand_i[7:4];
    assign A_4b_s[2] = opcode_ra_operand_i[11:8];
    assign A_4b_s[3] = opcode_ra_operand_i[15:12];
    assign A_4b_s[4] = opcode_ra_operand_i[19:16];
    assign A_4b_s[5] = opcode_ra_operand_i[23:20];
    assign A_4b_s[6] = opcode_ra_operand_i[27:24];
    assign A_4b_s[7] = opcode_ra_operand_i[31:28];

    assign B_4b_s[0] = opcode_rb_operand_i[3:0];
    assign B_4b_s[1] = opcode_rb_operand_i[7:4];
    assign B_4b_s[2] = opcode_rb_operand_i[11:8];
    assign B_4b_s[3] = opcode_rb_operand_i[15:12];
    assign B_4b_s[4] = opcode_rb_operand_i[19:16];
    assign B_4b_s[5] = opcode_rb_operand_i[23:20];
    assign B_4b_s[6] = opcode_rb_operand_i[27:24];
    assign B_4b_s[7] = opcode_rb_operand_i[31:28];

    assign A_8b_s[0] = {4'b0000 ,A_4b_s[0]};
    assign A_8b_s[1] = {4'b0000 ,A_4b_s[1]};
    assign A_8b_s[2] = {4'b0000 ,A_4b_s[2]};
    assign A_8b_s[3] = {4'b0000 ,A_4b_s[3]};
    assign A_8b_s[4] = {4'b0000 ,A_4b_s[4]};
    assign A_8b_s[5] = {4'b0000 ,A_4b_s[5]};
    assign A_8b_s[6] = {4'b0000 ,A_4b_s[6]};
    assign A_8b_s[7] = (sig_A_S1_s==1'b1) ? {{{4{A_4b_s[7][3]}}},A_4b_s[7]} : {4'b0000 ,A_4b_s[7]};

    assign B_8b_s[0] = {4'b0000 ,B_4b_s[0]};
    assign B_8b_s[1] = {4'b0000 ,B_4b_s[1]};
    assign B_8b_s[2] = {4'b0000 ,B_4b_s[2]};
    assign B_8b_s[3] = {4'b0000 ,B_4b_s[3]};
    assign B_8b_s[4] = {4'b0000 ,B_4b_s[4]};
    assign B_8b_s[5] = {4'b0000 ,B_4b_s[5]};
    assign B_8b_s[6] = {4'b0000 ,B_4b_s[6]};
    assign B_8b_s[7] = (sig_B_S1_s==1'b1) ? {{{4{B_4b_s[7][3]}}},B_4b_s[7]} : {4'b0000 ,B_4b_s[7]};



    genvar i, j;
    generate
        for (i = 0; i < 8; i = i + 1) begin : loopA
            for (j = 0; j < 8; j = j + 1) begin : loopB
                assign AxB_8b_s[i*8 + j] = A_8b_s[i] * B_8b_s[j];
            end
        end
    endgenerate

    generate
        for (j=0 ; j<64 ; j=j+1) begin
            always@(posedge clk_i, posedge rst_i)begin
                if(rst_i) begin
                    pipe_stage_s[j] <= 8'h00;
                end
                else if(~hold_i) begin
                    pipe_stage_s[j] <= AxB_8b_s[j];
                end
            end
        end
    endgenerate

    always@(posedge clk_i, posedge rst_i)begin
        if(rst_i) begin
            upper_reg <= 1'b0;
        end
        else if(~hold_i) begin
            upper_reg <= upper_S1_s;
        end
    end

    

    /*===============================
            EXTEND RESULTS
    ===============================*/

    generate
        for (i = 0; i < 64; i = i + 1) begin
            assign ext_mult_s[i] = {{56{pipe_stage_s[i][7]}}, pipe_stage_s[i]} ;
        end
    endgenerate

    /*===============================
            SHIFT RESULTS
    ===============================*/



    assign sft_mult_s[0] = ext_mult_s[0];     // A0 + B0
    assign sft_mult_s[1] = ext_mult_s[1]<<4;  // A0 + B1<<4
    assign sft_mult_s[2] = ext_mult_s[2]<<8;  // A0 + B2<<8
    assign sft_mult_s[3] = ext_mult_s[3]<<12; // A0 + B3<<12
    assign sft_mult_s[4] = ext_mult_s[4]<<16; // A0 + B4<<16
    assign sft_mult_s[5] = ext_mult_s[5]<<20; // A0 + B5<<20
    assign sft_mult_s[6] = ext_mult_s[6]<<24; // A0 + B6<<24
    assign sft_mult_s[7] = ext_mult_s[7]<<28; // A0 + B7<<28

    assign sft_mult_s[8]  = ext_mult_s[8]<<4;    // A0<<4 + B0
    assign sft_mult_s[9]  = ext_mult_s[9]<<8;    // A0<<4 + B1<<4
    assign sft_mult_s[10] = ext_mult_s[10]<<12;  // A0<<4 + B2<<8
    assign sft_mult_s[11] = ext_mult_s[11]<<16;  // A0<<4 + B3<<12
    assign sft_mult_s[12] = ext_mult_s[12]<<20;  // A0<<4 + B4<<16
    assign sft_mult_s[13] = ext_mult_s[13]<<24;  // A0<<4 + B5<<20
    assign sft_mult_s[14] = ext_mult_s[14]<<28;  // A0<<4 + B6<<24
    assign sft_mult_s[15] = ext_mult_s[15]<<32;  // A0<<4 + B7<<28

    assign sft_mult_s[16] = ext_mult_s[16]<<8;    // A0<<8 + B0
    assign sft_mult_s[17] = ext_mult_s[17]<<12;   // A0<<8 + B1<<4
    assign sft_mult_s[18] = ext_mult_s[18]<<16;   // A0<<8 + B2<<8
    assign sft_mult_s[19] = ext_mult_s[19]<<20;   // A0<<8 + B3<<12
    assign sft_mult_s[20] = ext_mult_s[20]<<24;   // A0<<8 + B4<<16
    assign sft_mult_s[21] = ext_mult_s[21]<<28;   // A0<<8 + B5<<20
    assign sft_mult_s[22] = ext_mult_s[22]<<32;   // A0<<8 + B6<<24
    assign sft_mult_s[23] = ext_mult_s[23]<<36;   // A0<<8 + B7<<28

    assign sft_mult_s[24] = ext_mult_s[24]<<12;    // A0<<12 + B0
    assign sft_mult_s[25] = ext_mult_s[25]<<16;   // A0<<12 + B1<<4
    assign sft_mult_s[26] = ext_mult_s[26]<<20;   // A0<<12 + B2<<8
    assign sft_mult_s[27] = ext_mult_s[27]<<24;   // A0<<12 + B3<<12
    assign sft_mult_s[28] = ext_mult_s[28]<<28;   // A0<<12 + B4<<16
    assign sft_mult_s[29] = ext_mult_s[29]<<32;   // A0<<12 + B5<<20
    assign sft_mult_s[30] = ext_mult_s[30]<<36;   // A0<<12 + B6<<24
    assign sft_mult_s[31] = ext_mult_s[31]<<40;   // A0<<12 + B7<<28

    assign sft_mult_s[32] = ext_mult_s[32]<<16;   // A0<<16 + B0
    assign sft_mult_s[33] = ext_mult_s[33]<<20;   // A0<<16 + B1<<4
    assign sft_mult_s[34] = ext_mult_s[34]<<24;   // A0<<16 + B2<<8
    assign sft_mult_s[35] = ext_mult_s[35]<<28;   // A0<<16 + B3<<12
    assign sft_mult_s[36] = ext_mult_s[36]<<32;   // A0<<16 + B4<<16
    assign sft_mult_s[37] = ext_mult_s[37]<<36;   // A0<<16 + B5<<20
    assign sft_mult_s[38] = ext_mult_s[38]<<40;   // A0<<16 + B6<<24
    assign sft_mult_s[39] = ext_mult_s[39]<<44;   // A0<<16 + B7<<28

    assign sft_mult_s[40] = ext_mult_s[40]<<20;   // A0<<20 + B0
    assign sft_mult_s[41] = ext_mult_s[41]<<24;   // A0<<20 + B1<<4
    assign sft_mult_s[42] = ext_mult_s[42]<<28;   // A0<<20 + B2<<8
    assign sft_mult_s[43] = ext_mult_s[43]<<32;   // A0<<20 + B3<<12
    assign sft_mult_s[44] = ext_mult_s[44]<<36;   // A0<<20 + B4<<16
    assign sft_mult_s[45] = ext_mult_s[45]<<40;   // A0<<20 + B5<<20
    assign sft_mult_s[46] = ext_mult_s[46]<<44;   // A0<<20 + B6<<24
    assign sft_mult_s[47] = ext_mult_s[47]<<48;   // A0<<20 + B7<<28

    assign sft_mult_s[48] = ext_mult_s[48]<<24;   // A0<<24 + B0
    assign sft_mult_s[49] = ext_mult_s[49]<<28;   // A0<<24 + B1<<4
    assign sft_mult_s[50] = ext_mult_s[50]<<32;   // A0<<24 + B2<<8
    assign sft_mult_s[51] = ext_mult_s[51]<<36;   // A0<<24 + B3<<12
    assign sft_mult_s[52] = ext_mult_s[52]<<40;   // A0<<24 + B4<<16
    assign sft_mult_s[53] = ext_mult_s[53]<<44;   // A0<<24 + B5<<20
    assign sft_mult_s[54] = ext_mult_s[54]<<48;   // A0<<24 + B6<<24
    assign sft_mult_s[55] = ext_mult_s[55]<<52;   // A0<<24 + B7<<28

    assign sft_mult_s[56] = ext_mult_s[56]<<28;   // A0<<28 + B0
    assign sft_mult_s[57] = ext_mult_s[57]<<32;   // A0<<28 + B1<<4
    assign sft_mult_s[58] = ext_mult_s[58]<<36;   // A0<<28 + B2<<8
    assign sft_mult_s[59] = ext_mult_s[59]<<40;   // A0<<28 + B3<<12
    assign sft_mult_s[60] = ext_mult_s[60]<<44;   // A0<<28 + B4<<16
    assign sft_mult_s[61] = ext_mult_s[61]<<48;   // A0<<28 + B5<<20
    assign sft_mult_s[62] = ext_mult_s[62]<<52;   // A0<<28 + B6<<24
    assign sft_mult_s[63] = ext_mult_s[63]<<56;   // A0<<28 + B7<<28



    /*===============================
        EXTEND A AND B TO 33 BITS
    ===============================*/

    assign mult_result_s[0] = sft_mult_s[0] + sft_mult_s[1];
    assign mult_result_s[1] = sft_mult_s[2] + sft_mult_s[3];
    assign mult_result_s[2] = sft_mult_s[4] + sft_mult_s[5];
    assign mult_result_s[3] = sft_mult_s[6] + sft_mult_s[7];
    assign mult_result_s[4] = sft_mult_s[8] + sft_mult_s[9];
    assign mult_result_s[5] = sft_mult_s[10] + sft_mult_s[11];
    assign mult_result_s[6] = sft_mult_s[12] + sft_mult_s[13];
    assign mult_result_s[7] = sft_mult_s[14] + sft_mult_s[15];
    assign mult_result_s[8] = sft_mult_s[16] + sft_mult_s[17];
    assign mult_result_s[9] = sft_mult_s[18] + sft_mult_s[19];
    assign mult_result_s[10] = sft_mult_s[20] + sft_mult_s[21];
    assign mult_result_s[11] = sft_mult_s[22] + sft_mult_s[23];
    assign mult_result_s[12] = sft_mult_s[24] + sft_mult_s[25];
    assign mult_result_s[13] = sft_mult_s[26] + sft_mult_s[27];
    assign mult_result_s[14] = sft_mult_s[28] + sft_mult_s[29];
    assign mult_result_s[15] = sft_mult_s[30] + sft_mult_s[31];
    assign mult_result_s[16] = sft_mult_s[32] + sft_mult_s[33];
    assign mult_result_s[17] = sft_mult_s[34] + sft_mult_s[35];
    assign mult_result_s[18] = sft_mult_s[36] + sft_mult_s[37];
    assign mult_result_s[19] = sft_mult_s[38] + sft_mult_s[39];
    assign mult_result_s[20] = sft_mult_s[40] + sft_mult_s[41];
    assign mult_result_s[21] = sft_mult_s[42] + sft_mult_s[43];
    assign mult_result_s[22] = sft_mult_s[44] + sft_mult_s[45];
    assign mult_result_s[23] = sft_mult_s[46] + sft_mult_s[47];
    assign mult_result_s[24] = sft_mult_s[48] + sft_mult_s[49];
    assign mult_result_s[25] = sft_mult_s[50] + sft_mult_s[51];
    assign mult_result_s[26] = sft_mult_s[52] + sft_mult_s[53];
    assign mult_result_s[27] = sft_mult_s[54] + sft_mult_s[55];
    assign mult_result_s[28] = sft_mult_s[56] + sft_mult_s[57];
    assign mult_result_s[29] = sft_mult_s[58] + sft_mult_s[59];
    assign mult_result_s[30] = sft_mult_s[60] + sft_mult_s[61];
    assign mult_result_s[31] = sft_mult_s[62] + sft_mult_s[63];

    assign mult_result_s[32] = mult_result_s[0] + mult_result_s[1];
    assign mult_result_s[33] = mult_result_s[2] + mult_result_s[3];
    assign mult_result_s[34] = mult_result_s[4] + mult_result_s[5];
    assign mult_result_s[35] = mult_result_s[6] + mult_result_s[7];
    assign mult_result_s[36] = mult_result_s[8] + mult_result_s[9];
    assign mult_result_s[37] = mult_result_s[10] + mult_result_s[11];
    assign mult_result_s[38] = mult_result_s[12] + mult_result_s[13];
    assign mult_result_s[39] = mult_result_s[14] + mult_result_s[15];
    assign mult_result_s[40] = mult_result_s[16] + mult_result_s[17];
    assign mult_result_s[41] = mult_result_s[18] + mult_result_s[19];
    assign mult_result_s[42] = mult_result_s[20] + mult_result_s[21];
    assign mult_result_s[43] = mult_result_s[22] + mult_result_s[23];
    assign mult_result_s[44] = mult_result_s[24] + mult_result_s[25];
    assign mult_result_s[45] = mult_result_s[26] + mult_result_s[27];
    assign mult_result_s[46] = mult_result_s[28] + mult_result_s[29];
    assign mult_result_s[47] = mult_result_s[30] + mult_result_s[31];

    assign mult_result_s[48] = mult_result_s[32] + mult_result_s[33];
    assign mult_result_s[49] = mult_result_s[34] + mult_result_s[35];
    assign mult_result_s[50] = mult_result_s[36] + mult_result_s[37];
    assign mult_result_s[51] = mult_result_s[38] + mult_result_s[39];
    assign mult_result_s[52] = mult_result_s[40] + mult_result_s[41];
    assign mult_result_s[53] = mult_result_s[42] + mult_result_s[43];
    assign mult_result_s[54] = mult_result_s[44] + mult_result_s[45];
    assign mult_result_s[55] = mult_result_s[46] + mult_result_s[47];




    generate
        for (j=0 ; j<8 ; j=j+1) begin
            always@(posedge clk_i, posedge rst_i)begin
                if(rst_i) begin
                    pipe_stage2_s[j] <= 64'h0000000000000000;
                end
                else if(~hold_i) begin
                    pipe_stage2_s[j] <= mult_result_s[48+j];
                end
            end
        end
    endgenerate

    always@(posedge clk_i, posedge rst_i)begin
        if(rst_i) begin
            upper2_reg <= 1'b0;
        end
        else if(clk_i && ~hold_i) begin
            upper2_reg <= upper_reg;
        end
    end





    assign mult_result_s[56] = pipe_stage2_s[0] + pipe_stage2_s[1];
    assign mult_result_s[57] = pipe_stage2_s[2] + pipe_stage2_s[3];
    assign mult_result_s[58] = pipe_stage2_s[4] + pipe_stage2_s[5];
    assign mult_result_s[59] = pipe_stage2_s[6] + pipe_stage2_s[7];

    assign mult_result_s[60] = mult_result_s[56] + mult_result_s[57];
    assign mult_result_s[61] = mult_result_s[58] + mult_result_s[59];
    
    assign mult_result_s[62] = mult_result_s[59] + mult_result_s[60];


    assign writeback_value_o = (upper2_reg==1'b1) ? mult_result_s[62][63:32] : mult_result_s[62][31:0];
    

endmodule
