module biriscv_divider
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input           opcode_valid_i
    ,input  [ 31:0]  opcode_opcode_i
    ,input  [ 31:0]  opcode_pc_i
    ,input           opcode_invalid_i
    ,input  [  4:0]  opcode_rd_idx_i
    ,input  [  4:0]  opcode_ra_idx_i
    ,input  [  4:0]  opcode_rb_idx_i
    ,input  [ 31:0]  opcode_ra_operand_i
    ,input  [ 31:0]  opcode_rb_operand_i

    // Outputs
    ,output          writeback_valid_o
    ,output [ 31:0]  writeback_value_o
);

//-----------------------------------------------------------------
// Includes
//-----------------------------------------------------------------
`include "biriscv_defs.v"

//-------------------------------------------------------------
// Registers / Wires
//-------------------------------------------------------------
reg          valid_q;
reg  [31:0]  wb_result_q;

//-------------------------------------------------------------
// Decoder Logic
//-------------------------------------------------------------
wire inst_div_w         = (opcode_opcode_i & `INST_DIV_MASK) == `INST_DIV;
wire inst_divu_w        = (opcode_opcode_i & `INST_DIVU_MASK) == `INST_DIVU;
wire inst_rem_w         = (opcode_opcode_i & `INST_REM_MASK) == `INST_REM;
wire inst_remu_w        = (opcode_opcode_i & `INST_REMU_MASK) == `INST_REMU;

wire div_rem_inst_w     = ((opcode_opcode_i & `INST_DIV_MASK) == `INST_DIV)  || 
                          ((opcode_opcode_i & `INST_DIVU_MASK) == `INST_DIVU) ||
                          ((opcode_opcode_i & `INST_REM_MASK) == `INST_REM)  || 
                          ((opcode_opcode_i & `INST_REMU_MASK) == `INST_REMU);

wire signed_operation_w = ((opcode_opcode_i & `INST_DIV_MASK) == `INST_DIV) || 
                          ((opcode_opcode_i & `INST_REM_MASK) == `INST_REM);
wire div_operation_w    = ((opcode_opcode_i & `INST_DIV_MASK) == `INST_DIV) || 
                          ((opcode_opcode_i & `INST_DIVU_MASK) == `INST_DIVU);

//-------------------------------------------------------------
// Core Registers
//-------------------------------------------------------------
reg [31:0] dividend_q;
reg [62:0] divisor_q;
reg [31:0] quotient_q;
reg [31:0] q_mask_q;
reg        div_inst_q;
reg        div_busy_q;
reg        invert_res_q;

// ESTADOS DO PIPELINE
reg        div_calc_clz_q; // Estágio 1: CLZ e Pre-Calculo
reg        div_prepare_q;  // Estágio 2: Shift (Barrel Shifter)

// Cache Registers
reg [31:0] last_a_q;
reg [31:0] last_b_q;
reg        last_div_q;
reg        last_divu_q;
reg        last_rem_q;
reg        last_remu_q;

// Pipeline Registers (Otimização de Caminho Crítico)
reg [5:0]  saved_shift_amt_q;
reg [31:0] saved_op_b_abs_q;


reg [31:0] op_a_abs_clz_r; 
reg [31:0] op_b_abs_clz_r;
reg [31:0] op_a_abs_data_r; 
reg [31:0] op_b_abs_data_r;

wire div_start_w    = opcode_valid_i & div_rem_inst_w;

wire div_complete_w = !(|q_mask_q) & div_busy_q & !div_prepare_q & !div_calc_clz_q;

//-------------------------------------------------------------
// Logic: Pre-calculation (Logic Duplication)
//-------------------------------------------------------------

// Caminho A: Exclusivo para CLZ
wire [31:0] op_a_abs_clz_w = (signed_operation_w && opcode_ra_operand_i[31]) ? 
                             -opcode_ra_operand_i : opcode_ra_operand_i;
wire [31:0] op_b_abs_clz_w = (signed_operation_w && opcode_rb_operand_i[31]) ? 
                             -opcode_rb_operand_i : opcode_rb_operand_i;

// Caminho B: Exclusivo para Dados
wire [31:0] op_a_abs_data_w = (signed_operation_w && opcode_ra_operand_i[31]) ? 
                              -opcode_ra_operand_i : opcode_ra_operand_i;
wire [31:0] op_b_abs_data_w = (signed_operation_w && opcode_rb_operand_i[31]) ? 
                              -opcode_rb_operand_i : opcode_rb_operand_i;


// Função CLZ (Count Leading Zeros)
function [5:0] clz;
    input [31:0] data;
    integer i;
    begin
        clz = 32;
        for (i = 31; i >= 0; i = i - 1) begin
            if (data[i] && (clz == 32)) 
                clz = 31 - i;
        end
    end
endfunction

// O CLZ lê apenas do registrador dedicado a ele (_clz_r)
wire [5:0] lz_a_w = clz(op_a_abs_clz_r);
wire [5:0] lz_b_w = clz(op_b_abs_clz_r);
wire [5:0] diff_lz_w = (lz_b_w > lz_a_w) ? (lz_b_w - lz_a_w) : 6'b0;


//-------------------------------------------------------------
// Logic: Speculative Subtraction (Critical Path Optimization)
//-------------------------------------------------------------
wire [32:0] sub_res_w = {1'b0, dividend_q} - {1'b0, divisor_q[31:0]};
wire divisor_high_is_zero = (divisor_q[62:32] == 31'b0);
wire can_subtract_w = divisor_high_is_zero && !sub_res_w[32];


//-------------------------------------------------------------
// State Machine
//-------------------------------------------------------------
always @(posedge clk_i or posedge rst_i)
if (rst_i)
begin
    div_busy_q        <= 1'b0;
    div_calc_clz_q    <= 1'b0; 
    div_prepare_q     <= 1'b0;
    
    dividend_q        <= 32'b0;
    divisor_q         <= 63'b0;
    invert_res_q      <= 1'b0;
    quotient_q        <= 32'b0;
    q_mask_q          <= 32'b0;
    div_inst_q        <= 1'b0;
    
    last_a_q          <= 32'b0;
    last_b_q          <= 32'b0;
    last_div_q        <= 1'b0;
    last_divu_q       <= 1'b0;
    last_rem_q        <= 1'b0;
    last_remu_q       <= 1'b0;
    
    saved_shift_amt_q <= 6'b0;
    saved_op_b_abs_q  <= 32'b0;
    
    op_a_abs_clz_r    <= 32'b0;
    op_b_abs_clz_r    <= 32'b0;
    op_a_abs_data_r   <= 32'b0;
    op_b_abs_data_r   <= 32'b0;
end
// CICLO 0: Entrada (START)
else if (div_start_w && !div_busy_q && !div_prepare_q && !div_calc_clz_q)
begin

    if (last_a_q    == opcode_ra_operand_i && 
        last_b_q    == opcode_rb_operand_i &&
        last_div_q  == inst_div_w &&
        last_divu_q == inst_divu_w &&
        last_rem_q  == inst_rem_w &&
        last_remu_q == inst_remu_w)
    begin
        div_busy_q     <= 1'b1;
    end
    else
    begin
        // Atualiza Cache
        last_a_q       <= opcode_ra_operand_i;
        last_b_q       <= opcode_rb_operand_i;
        last_div_q     <= inst_div_w;
        last_divu_q    <= inst_divu_w;
        last_rem_q     <= inst_rem_w;
        last_remu_q    <= inst_remu_w;

        op_a_abs_clz_r  <= op_a_abs_clz_w;
        op_b_abs_clz_r  <= op_b_abs_clz_w;
        
        op_a_abs_data_r <= op_a_abs_data_w;
        op_b_abs_data_r <= op_b_abs_data_w;
        
        div_inst_q      <= div_operation_w;
        quotient_q      <= 32'b0;

        invert_res_q    <= (((opcode_opcode_i & `INST_DIV_MASK) == `INST_DIV) && 
                            (opcode_ra_operand_i[31] != opcode_rb_operand_i[31]) && 
                            |opcode_rb_operand_i) || 
                           (((opcode_opcode_i & `INST_REM_MASK) == `INST_REM) && 
                            opcode_ra_operand_i[31]);

        // Vai para o próximo estágio
        div_calc_clz_q  <= 1'b1; 
        div_busy_q      <= 1'b1; 
    end
end
// CICLO 1: CLZ Calc (Pipeline Stage 1)
else if (div_calc_clz_q) 
begin
    // Usa registrador de DADOS para salvar o valor do divisor
    saved_op_b_abs_q  <= op_b_abs_data_r;
    
    // Usa registrador de CLZ para calcular o shift (diff_lz_w vem do _clz_r)
    saved_shift_amt_q <= diff_lz_w;
    
    // Carrega dividendo usando registrador de DADOS
    dividend_q        <= op_a_abs_data_r;

    // Check de Early Termination (usando dados)
    if (op_b_abs_data_r > op_a_abs_data_r)
        q_mask_q      <= 32'b0; // Sinaliza fim imediato
        
    div_calc_clz_q    <= 1'b0;
    div_prepare_q     <= 1'b1; // Vai para o estágio de Shift
end
// CICLO 2: Barrel Shifter (Pipeline Stage 2)
else if (div_prepare_q)
begin
    // Se q_mask_q já for zero, pula (Early Termination anterior)
    if (q_mask_q != 32'b0 || (saved_op_b_abs_q <= dividend_q)) 
    begin
        q_mask_q      <= 32'h1 << saved_shift_amt_q;
        divisor_q     <= {31'b0, saved_op_b_abs_q} << saved_shift_amt_q;
        
        // Redundância de segurança
        if (saved_op_b_abs_q > dividend_q) 
             q_mask_q <= 32'b0;
    end
    else
    begin
        divisor_q     <= {31'b0, saved_op_b_abs_q};
    end

    div_prepare_q <= 1'b0;
end
// CICLO 3+: Execução (Divisão propriamente dita)
else if (div_complete_w)
begin
    div_busy_q <= 1'b0;
end
else if (div_busy_q)
begin
    if (can_subtract_w)
    begin
        dividend_q <= sub_res_w[31:0];
        quotient_q <= quotient_q | q_mask_q;
    end
    divisor_q <= {1'b0, divisor_q[62:1]};
    q_mask_q  <= {1'b0, q_mask_q[31:1]};
end

//-------------------------------------------------------------
// Output Generation
//-------------------------------------------------------------
reg [31:0] div_result_r;
always @ *
begin
    div_result_r = 32'b0;

    if (div_inst_q)
        div_result_r = invert_res_q ? -quotient_q : quotient_q;
    else
        div_result_r = invert_res_q ? -dividend_q : dividend_q;
end

always @(posedge clk_i or posedge rst_i)
if (rst_i)
    valid_q <= 1'b0;
else
    valid_q <= div_complete_w;

always @(posedge clk_i or posedge rst_i)
if (rst_i)
    wb_result_q <= 32'b0;
else if (div_complete_w)
    wb_result_q <= div_result_r;

assign writeback_valid_o = valid_q;
assign writeback_value_o = wb_result_q;

endmodule