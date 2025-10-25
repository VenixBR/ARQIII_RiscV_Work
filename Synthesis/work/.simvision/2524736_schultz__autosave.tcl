
# XM-Sim Command File
# TOOL:	xmsim	23.03-s005
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
alias . run
alias indago verisium
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves new_multiplier_tb.DUV.A_ext_S2_s new_multiplier_tb.DUV.A_inverted_S1_s new_multiplier_tb.DUV.A_sft_S2_s new_multiplier_tb.DUV.Add_L1_S2_s new_multiplier_tb.DUV.Add_L2_S2_s new_multiplier_tb.DUV.Add_L3_S3_s new_multiplier_tb.DUV.Add_L4_S3_s new_multiplier_tb.DUV.Add_L5_S3_s new_multiplier_tb.DUV.B_inverted_S1_s new_multiplier_tb.DUV.B_msb_S1_s new_multiplier_tb.DUV.B_sig_or_unsig_S1_s new_multiplier_tb.DUV.clk_i new_multiplier_tb.DUV.ext_A_S1_s new_multiplier_tb.DUV.ext_B_S1_s new_multiplier_tb.DUV.funct3_s new_multiplier_tb.DUV.hold_i new_multiplier_tb.DUV.mux_a_S1_s new_multiplier_tb.DUV.opcode_opcode_i new_multiplier_tb.DUV.opcode_ra_operand_i new_multiplier_tb.DUV.opcode_rb_operand_i new_multiplier_tb.DUV.opcode_valid_i new_multiplier_tb.DUV.rst_i new_multiplier_tb.DUV.upper_S1_s new_multiplier_tb.DUV.writeback_value_o

simvision -input /home/schultz/Documents/ARQIII_RiscV_Work/Synthesis/work/.simvision/2524736_schultz__autosave.tcl.svcf
