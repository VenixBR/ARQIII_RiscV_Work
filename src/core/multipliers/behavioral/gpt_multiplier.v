// 3-stage pipelined multiplier (behavioral, broken into partials)
// Supports RISC-V MUL, MULH, MULHSU, MULHU selected by funct3 (opcode[14:12])
module biriscv_multiplier
(
    input           clk_i,
    input           rst_i,
    input           opcode_valid_i,
    input  [31:0]   opcode_opcode_i,
    input  [31:0]   opcode_ra_operand_i,
    input  [31:0]   opcode_rb_operand_i,
    input           hold_i,

    output reg [31:0] writeback_value_o
);

    // funct3
    localparam MUL    = 3'b000;
    localparam MULH   = 3'b001;
    localparam MULHSU = 3'b010;
    localparam MULHU  = 3'b011;

    wire [2:0] funct3_s = opcode_opcode_i[14:12];

    // Control decode
    wire sigA_stage0 = (funct3_s == MULH) || (funct3_s == MULHSU);
    wire sigB_stage0 = (funct3_s == MULH);
    wire upper_stage0 = (funct3_s != MUL); // MULHU, MULH, MULHSU => take high

    // -------------------------
    // Stage 0 registers (capture inputs)
    // -------------------------
    reg [31:0] A_s0, B_s0;
    reg sigA_s0, sigB_s0, upper_s0;
    reg [2:0] funct3_s0;

    always@* begin
            A_s0 = opcode_ra_operand_i;
            B_s0 = opcode_rb_operand_i;
            sigA_s0 = sigA_stage0;
            sigB_s0 = sigB_stage0;
            upper_s0 = upper_stage0;
            funct3_s0 = funct3_s;
    end

    // -------------------------
    // Stage 1: compute partials p0, p1, p2
    // p0 = Al * Bl
    // p1 = Al * Bh_ext (Bh sign- or zero-extended depending on sigB)
    // p2 = Ah_ext * Bl (Ah sign- or zero-extended depending on sigA)
    // -------------------------

    // Decode halves from stage0
    wire [15:0] Al_s0 = A_s0[15:0];
    wire [15:0] Ah_s0 = A_s0[31:16];
    wire [15:0] Bl_s0 = B_s0[15:0];
    wire [15:0] Bh_s0 = B_s0[31:16];

    // Build 32-bit extensions for stage1 multiplication (choose sign/zero based on sigA_s0/sigB_s0)
    // For low halves always zero-extend
    wire [31:0] Al_z32 = {16'd0, Al_s0};
    wire [31:0] Bl_z32 = {16'd0, Bl_s0};

    // For high halves we prepare both signed-extended and zero-extended versions and choose
    wire signed [31:0] Ah_s32_signed = {{16{Ah_s0[15]}}, Ah_s0};
    wire [31:0] Ah_s32_unsigned = {16'd0, Ah_s0};
    wire signed [31:0] Bh_s32_signed = {{16{Bh_s0[15]}}, Bh_s0};
    wire [31:0] Bh_s32_unsigned = {16'd0, Bh_s0};

    // Choose according to sig flags
    wire signed [31:0] Ah_for_p2 = sigA_s0 ? Ah_s32_signed : $signed(Ah_s32_unsigned);
    wire signed [31:0] Bh_for_p1 = sigB_s0 ? Bh_s32_signed : $signed(Bh_s32_unsigned);

    // Compute partials (do math now in combinational, will be registered)
    // We keep them as signed 64 so they combine nicely later.
    wire signed [63:0] p0_comb = $unsigned(Al_z32) * $unsigned(Bl_z32);       // Al*Bl (non-negative)
    wire signed [63:0] p1_comb = $signed(Bh_for_p1) * $signed({16'd0, Al_s0}); // Al * Bh_ext
    wire signed [63:0] p2_comb = $signed(Ah_for_p2) * $signed({16'd0, Bl_s0}); // Ah_ext * Bl

    // Stage1 registers
    reg signed [63:0] p0_s1, p1_s1, p2_s1;
    reg sigA_s1, sigB_s1, upper_s1;
    reg [31:0] A_s1_for_p3_hi, B_s1_for_p3_hi; // keep top halves for stage2
    reg [2:0] funct3_s1;

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i) begin
            p0_s1 <= 64'd0;
            p1_s1 <= 64'd0;
            p2_s1 <= 64'd0;
            sigA_s1 <= 1'b0;
            sigB_s1 <= 1'b0;
            upper_s1 <= 1'b0;
            A_s1_for_p3_hi <= 32'd0;
            B_s1_for_p3_hi <= 32'd0;
            funct3_s1 <= 3'd0;
        end else begin
            p0_s1 <= p0_comb;
            p1_s1 <= p1_comb;
            p2_s1 <= p2_comb;
            sigA_s1 <= sigA_s0;
            sigB_s1 <= sigB_s0;
            upper_s1 <= upper_s0;
            // store top halves (we'll form their extended versions in stage2)
            A_s1_for_p3_hi <= {16'd0, Ah_s0}; // keep raw half bits (lower 16 bits used)
            B_s1_for_p3_hi <= {16'd0, Bh_s0};
            funct3_s1 <= funct3_s0;
        end
    end

    // -------------------------
    // Stage 2: compute p3 and combine
    // p3 = Ah_ext * Bh_ext     (Ah_ext/Bh_ext chosen signed or zero-ext by sigA_s1/sigB_s1)
    // final product = p0 + ((p1 + p2) << 16) + (p3 << 32)
    // -------------------------

    // Reconstruct high halves and their appropriate sign/zero extension
    wire [15:0] Ah_hi_bits_s1 = A_s1_for_p3_hi[15:0];
    wire [15:0] Bh_hi_bits_s1 = B_s1_for_p3_hi[15:0];

    wire signed [31:0] Ah_s32_s1_signed = {{16{Ah_hi_bits_s1[15]}}, Ah_hi_bits_s1};
    wire [31:0] Ah_s32_s1_unsigned = {16'd0, Ah_hi_bits_s1};
    wire signed [31:0] Bh_s32_s1_signed = {{16{Bh_hi_bits_s1[15]}}, Bh_hi_bits_s1};
    wire [31:0] Bh_s32_s1_unsigned = {16'd0, Bh_hi_bits_s1};

    wire signed [31:0] Ah_for_p3 = sigA_s1 ? Ah_s32_s1_signed : $signed(Ah_s32_s1_unsigned);
    wire signed [31:0] Bh_for_p3 = sigB_s1 ? Bh_s32_s1_signed : $signed(Bh_s32_s1_unsigned);

    // p3 (64-bit signed)
    wire signed [63:0] p3_comb = $signed(Ah_for_p3) * $signed(Bh_for_p3);

    // Combine
    // Use 128-bit signed accumulator to avoid any overflow/truncation during intermediate sums
    wire signed [127:0] term_p0 = $signed(p0_s1); // p0 non-negative but ok
    wire signed [127:0] term_mid = $signed(p1_s1 + p2_s1); // sum may be signed
    wire signed [127:0] term_p3 = $signed(p3_comb);

    // shift and add
    wire signed [127:0] acc =
        term_p0 +
        (term_mid <<< 16) +      // multiply by 2^16
        (term_p3 <<< 32);        // multiply by 2^32

    // final 64-bit product (lower and upper parts)
    wire [63:0] product64 = acc[63:0]; // full 64-bit product bits

    // Stage2 registers -> final writeback (one more reg to complete pipeline)
    reg [63:0] product64_s2;
    reg upper_s2;
    reg [2:0] funct3_s2;

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i) begin
            product64_s2 <= 64'd0;
            upper_s2 <= 1'b0;
            funct3_s2 <= 3'd0;
        end else begin
            // compute p3 then combine (p3_comb depends on A_s1_for_p3_hi/B_s1_for_p3_hi and sig flags)
            product64_s2 <= product64;
            upper_s2 <= upper_s1;
            funct3_s2 <= funct3_s1;
        end
    end

    always@* begin
                    // output from this cycle is the result of 2 cycles earlier inputs
            if (upper_s2)
                writeback_value_o <= product64_s2[63:32];
            else
                writeback_value_o <= product64_s2[31:0];
    end

endmodule
