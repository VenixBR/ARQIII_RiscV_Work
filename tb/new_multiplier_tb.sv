module new_multiplier_tb;

    localparam CLK_PERIOD = 10;

    logic clk, rst, opcode_valid, hold;
    logic [31:0] opcode, A_op, B_op, answer;

    biriscv_multiplier DUV (
        .clk_i               ( clk          ),
        .rst_i               ( rst          ),
        .opcode_valid_i      ( opcode_valid ),
        .opcode_opcode_i     ( opcode       ),
        .opcode_ra_operand_i ( A_op         ),
        .opcode_rb_operand_i ( B_op         ),
        .hold_i              ( hold         ),
        .writeback_value_o   ( answer       )
    );

    always #CLK_PERIOD clk <= ~clk;

    initial begin
        clk = 0;
        rst = 0;
        A_op = 32'h80000001; // 2147483649 ou -2147483647
        B_op = 32'h00010002; // 65538 ou 65538

        // A_op = 32'h00000009; // 2147483649 ou -2147483647
        // B_op = 32'h00000007; // 65538 ou 65538
        opcode = 32'b0000001_0101010101_000_01010_0110011; // MUL

        #(CLK_PERIOD/2)
        rst = 1;
        #(CLK_PERIOD/2)
        rst = 0;
        #CLK_PERIOD

        $display("\n+-------------+------------+------------+");
        $display(  "| Instruction |  Expected  |   Answer   |");
        $display(  "+-------------+------------+------------+");
        $display(  "| MUL         | 0x00010002 | 0x%h |", answer);
        $finish;
    end



endmodule