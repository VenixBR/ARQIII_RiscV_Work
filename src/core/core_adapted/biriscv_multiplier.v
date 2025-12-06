module biriscv_multiplier
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
    ,input           hold_i

    // Outputs
    ,output stall_o
    ,output [ 31:0]  writeback_value_o
);



// mul
`define INST_MUL 32'h2000033
`define INST_MUL_MASK 32'hfe00707f

// mulh
`define INST_MULH 32'h2001033
`define INST_MULH_MASK 32'hfe00707f

// mulhsu
`define INST_MULHSU 32'h2002033
`define INST_MULHSU_MASK 32'hfe00707f

// mulhu
`define INST_MULHU 32'h2003033
`define INST_MULHU_MASK 32'hfe00707f



    /*===============================
             OPCODES
    =================================*/
    localparam MUL    = 3'b000;
    localparam MULH   = 3'b001;
    localparam MULHSU = 3'b010;
    localparam MULHU  = 3'b011;

    localparam PP_WIDTH = 65;
    // Alterado para 17 para suportar unsigned
    localparam NUM_PPS  = 17; 
    
    //================================================================
    // STAGE 1: DECODE AND PARTIAL PRODUCT GENERATION (Combinational)
    //================================================================

    // Control Signals
    wire [2:0] funct3_s;
    reg ext_A_s;
    reg ext_B_s;
    reg upper_s;

    // Radix-4 Booth Signals
    wire [32:0] operand_a_33b_s;
    wire [32:0] operand_b_33b_s;
    
    // B estendido para 34 bits (bits 32 e 33)
    wire [33:0] operand_b_34b_s;

    wire [PP_WIDTH-1:0] pp_scaled_s [NUM_PPS-1:0];
    
    /*===============================
             CONTROL
    ===============================*/

    wire mult_inst_w;

    assign mult_inst_w    = ((opcode_opcode_i & `INST_MUL_MASK) == `INST_MUL)        || 
                      ((opcode_opcode_i & `INST_MULH_MASK) == `INST_MULH)      ||
                      ((opcode_opcode_i & `INST_MULHSU_MASK) == `INST_MULHSU)  ||
                      ((opcode_opcode_i & `INST_MULHU_MASK) == `INST_MULHU);

    assign funct3_s = opcode_opcode_i[14:12];

    always @(opcode_valid_i or funct3_s) 
    begin
        // Default values
        ext_A_s = 1'b0;
        ext_B_s = 1'b0;
        upper_s = 1'b0;
        
        if (opcode_valid_i) 
        begin
            case (funct3_s)
                MUL: 
                begin
                    ext_A_s = 1'b0;
                    ext_B_s = 1'b0;
                    upper_s = 1'b0;
                end
                MULH: 
                begin
                    ext_A_s = 1'b1;
                    ext_B_s = 1'b1;
                    upper_s = 1'b1;
                end
                MULHU: 
                begin
                    ext_A_s = 1'b0;
                    ext_B_s = 1'b0;
                    upper_s = 1'b1;
                end
                MULHSU: 
                begin
                    ext_A_s = 1'b1;
                    ext_B_s = 1'b0;
                    upper_s = 1'b1;
                end
                default: 
                begin 
                    ext_A_s = 1'b0;
                    ext_B_s = 1'b0;
                    upper_s = 1'b0;
                end
            endcase
        end
    end

    /*===============================
        PREPARE OPERANDS
    ===============================*/
    assign operand_a_33b_s = opcode_valid_i ? 
                             (ext_A_s ? {opcode_ra_operand_i[31], opcode_ra_operand_i} : 
                                        {1'b0, opcode_ra_operand_i}) : 
                             33'b0;

    assign operand_b_33b_s = opcode_valid_i ? 
                             (ext_B_s ? {opcode_rb_operand_i[31], opcode_rb_operand_i} : 
                                        {1'b0, opcode_rb_operand_i}) : 
                             33'b0;
    
    // Extensão para 34 bits para o loop do Booth funcionar até i=16
    assign operand_b_34b_s = {operand_b_33b_s[32], operand_b_33b_s};

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

            // Lógica de seleção dos bits do Booth
            assign booth_in[0] = (i == 0) ? 1'b0 : operand_b_34b_s[2*i-1];
            assign booth_in[1] = operand_b_34b_s[2*i];
            
            // Proteção de borda para o último grupo
            assign booth_in[2] = (2*i+1 > 33) ? operand_b_34b_s[33] : operand_b_34b_s[2*i+1];

            always @(*) 
            begin
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

    //================================================================
    // PIPELINE REGISTER 1 (Stage 1 -> Stage 2)
    //================================================================
    reg [PP_WIDTH-1:0] pp_scaled_s_p1_r [NUM_PPS-1:0];
    reg                upper_s_p1_r;
    reg                stall_s_p1_r;

    always @(posedge clk_i) 
    begin : reg_logic_p1
        integer j;
        
        if (rst_i) 
        begin
            upper_s_p1_r <= 1'b0;
            stall_s_p1_r <= 1'b0;
            for (j = 0; j < NUM_PPS; j = j + 1) 
            begin
                pp_scaled_s_p1_r[j] <= {PP_WIDTH{1'b0}};
            end
        end 
        else if (!hold_i) 
        begin
            upper_s_p1_r <= upper_s;
            stall_s_p1_r <= mult_inst_w;
            for (j = 0; j < NUM_PPS; j = j + 1) 
            begin
                pp_scaled_s_p1_r[j] <= pp_scaled_s[j];
            end
        end
    end

    //================================================================
    // STAGE 2: ADDER TREE LEVELS 1 AND 2 (Combinational)
    //================================================================
    wire [PP_WIDTH-1:0] Add_L1_s [7:0];
    wire [PP_WIDTH-1:0] Add_L2_s [3:0];
    
    // Nível 1: Soma os primeiros 16 produtos parciais
    // O 17º produto parcial (pp_scaled_s_p1_r[16]) passa direto
    genvar l; 
    generate
        for (l=0 ; l<8 ; l=l+1) 
        begin
            assign Add_L1_s[l] = pp_scaled_s_p1_r[l*2] + 
                                 pp_scaled_s_p1_r[l*2+1];
        end
    endgenerate

    // Nível 2: Soma os 8 resultados do Nível 1
    genvar m;
    generate
        for (m=0 ; m<4 ; m=m+1) 
        begin
            assign Add_L2_s[m] = Add_L1_s[m*2] + 
                                 Add_L1_s[m*2+1];
        end
    endgenerate

    //================================================================
    // PIPELINE REGISTER 2 (Stage 2 -> Stage 3)
    //================================================================
    reg [PP_WIDTH-1:0] Add_L2_s_p2_r [3:0];
    // Registrador extra para carregar o 17º PP até o estágio final
    reg [PP_WIDTH-1:0] pp_17_p2_r;
    reg                upper_s_p2_r;
    reg                stall_s_p2_r;

    always @(posedge clk_i) 
    begin : reg_logic_p2
        integer j;
        
        if (rst_i) 
        begin
            upper_s_p2_r <= 1'b0;
            stall_s_p2_r <= 1'b0;
            pp_17_p2_r   <= {PP_WIDTH{1'b0}};
            for (j = 0; j < 4; j = j + 1) 
            begin
                 Add_L2_s_p2_r[j] <= {PP_WIDTH{1'b0}};
            end
        end 
        else if (!hold_i) 
        begin
            upper_s_p2_r <= upper_s_p1_r;
            stall_s_p2_r <= stall_s_p1_r;
            // Passa o 17º PP (índice 16) adiante
            pp_17_p2_r   <= pp_scaled_s_p1_r[16];
            for (j = 0; j < 4; j = j + 1) 
            begin
                Add_L2_s_p2_r[j] <= Add_L2_s[j];
            end
        end
        else
            stall_s_p2_r <= 1'b0;
    end

    //================================================================
    // STAGE 3: FINAL ADDITION (Combinational)
    //================================================================
    wire [PP_WIDTH-1:0] Add_L3_s [1:0];
    wire [PP_WIDTH-1:0] sum_tree_result_s;
    wire [PP_WIDTH-1:0] final_result_s;

    // Nível 3: Reduz de 4 para 2
    genvar n;
    generate
        for (n=0 ; n<2 ; n=n+1) 
        begin
            assign Add_L3_s[n] = Add_L2_s_p2_r[n*2] + 
                                 Add_L2_s_p2_r[n*2+1];
        end
    endgenerate
    
    // Nível 4: Reduz de 2 para 1
    assign sum_tree_result_s = Add_L3_s[0] + Add_L3_s[1];

    // Soma Final: Resultado da Árvore + o 17º PP (que veio viajando pelo pipeline)
    assign final_result_s = sum_tree_result_s + pp_17_p2_r;


wire [31:0] result_s;
    reg [31:0] result_r;

    assign result_s = upper_s_p2_r ? 
                               final_result_s[63:32] : 
                               final_result_s[31:0];

    


    always@(posedge clk_i, posedge rst_i)begin
        if (rst_i)
            result_r <= 32'h00000000;
        else if (hold_i)
            result_r <= result_s;
    end

    /*===============================
        FINAL RESULT SELECTION
    ===============================*/
    assign stall_o = stall_s_p2_r;
    assign writeback_value_o = result_r;
    

endmodule