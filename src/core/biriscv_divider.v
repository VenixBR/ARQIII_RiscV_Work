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
reg        div_calc_clz_q; // [NOVO] Estágio 1: CLZ e Pre-Calculo
reg        div_prepare_q;  // [ANTIGO] Estágio 2: Shift (Barrel Shifter)

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

// [NOVO] Registradores Intermediários para quebrar a lógica "Minus"
reg [31:0] op_a_abs_r; 
reg [31:0] op_b_abs_r;


wire div_start_w    = opcode_valid_i & div_rem_inst_w;
// Só completa se não estiver ocupado nem nos estágios de setup
wire div_complete_w = !(|q_mask_q) & div_busy_q & !div_prepare_q & !div_calc_clz_q;

//-------------------------------------------------------------
// Logic: Pre-calculation (Combinational)
//-------------------------------------------------------------
// Essa é a lógica "Minus" (negativo/absoluto) que aparece no inicio do seu timing report.
wire [31:0] op_a_abs_w = (signed_operation_w && opcode_ra_operand_i[31]) ? 
                         -opcode_ra_operand_i : opcode_ra_operand_i;
wire [31:0] op_b_abs_w = (signed_operation_w && opcode_rb_operand_i[31]) ? 
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

// [ALTERADO] O CLZ agora olha para o Registrador (r) e não para o Wire (w).
// Isso move a lógica pesada de CLZ para o próximo ciclo de clock.
wire [5:0] lz_a_w = clz(op_a_abs_r);
wire [5:0] lz_b_w = clz(op_b_abs_r);
wire [5:0] diff_lz_w = (lz_b_w > lz_a_w) ? (lz_b_w - lz_a_w) : 6'b0;


//-------------------------------------------------------------
// Logic: Speculative Subtraction
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
    div_calc_clz_q    <= 1'b0; // Reset novo estágio
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
    op_a_abs_r        <= 32'b0;
    op_b_abs_r        <= 32'b0;
end
// CICLO 0: Entrada (START)
else if (div_start_w && !div_busy_q && !div_prepare_q && !div_calc_clz_q)
begin
    // Check Cache...
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

        // [AQUI ESTA A CORREÇÃO DO TIMING]
        // Neste ciclo, APENAS calculamos o absoluto (lógica "Minus")
        // e salvamos nos registradores _r.
        // O CLZ não é feito agora. O caminho crítico aqui é curto (~1.2ns).
        op_a_abs_r     <= op_a_abs_w;
        op_b_abs_r     <= op_b_abs_w;
        
        div_inst_q     <= div_operation_w;
        quotient_q     <= 32'b0;

        invert_res_q  <= (((opcode_opcode_i & `INST_DIV_MASK) == `INST_DIV) && 
                          (opcode_ra_operand_i[31] != opcode_rb_operand_i[31]) && 
                          |opcode_rb_operand_i) || 
                         (((opcode_opcode_i & `INST_REM_MASK) == `INST_REM) && 
                          opcode_ra_operand_i[31]);

        // Vai para o próximo estágio
        div_calc_clz_q <= 1'b1; 
        div_busy_q     <= 1'b1; 
    end
end
// CICLO 1: CLZ Calc (NOVO ESTÁGIO)
else if (div_calc_clz_q) 
begin
    // Aqui usamos os valores já registrados (op_a_abs_r) para rodar o CLZ.
    // O caminho crítico começa nos regs _r e termina em saved_shift_amt_q.
    
    // Salva resultados para o próximo estágio (Shift)
    saved_op_b_abs_q  <= op_b_abs_r;
    saved_shift_amt_q <= diff_lz_w;
    
    // Dividend já está estável no _r, passa para o registro principal
    dividend_q        <= op_a_abs_r;

    // Check de Early Termination
    if (op_b_abs_r > op_a_abs_r)
        q_mask_q      <= 32'b0; // Sinaliza fim
        
    div_calc_clz_q    <= 1'b0;
    div_prepare_q     <= 1'b1; // Vai para o estágio de Shift
end
// CICLO 2: Barrel Shifter (PREPARE)
else if (div_prepare_q)
begin
    // Se q_mask_q já for zero (Early Termination do estágio anterior), não faz nada
    if (q_mask_q != 32'b0 || (saved_op_b_abs_q <= dividend_q)) 
    begin
        q_mask_q      <= 32'h1 << saved_shift_amt_q;
        divisor_q     <= {31'b0, saved_op_b_abs_q} << saved_shift_amt_q;
        
        // Redundância de segurança para o caso Divisor > Dividendo
        if (saved_op_b_abs_q > dividend_q) 
             q_mask_q <= 32'b0;
    end
    else
    begin
        // Caso de early termination
        divisor_q     <= {31'b0, saved_op_b_abs_q};
    end

    div_prepare_q <= 1'b0;
end
// CICLO 3+: Execução (EXECUTE)
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