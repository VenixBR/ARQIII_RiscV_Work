# Cadence Genus(TM) Synthesis Solution, Version 21.18-s082_1, built Jul 18 2023 13:08:41

# Date: Mon Oct 20 23:08:29 2025
# Host: gmicro02 (x86_64 w/Linux 4.18.0-553.37.1.el8_10.x86_64) (16cores*32cpus*2physical cpus*Intel(R) Xeon(R) Silver 4314 CPU @ 2.40GHz 16384KB)
# OS:   Red Hat Enterprise Linux release 8.10 (Ootpa)

source /home/schultz/Documents/ARQIII_RiscV_Work/Synthesis/scripts/riscv_core.tcl
# entering suspend mode
get_db hinsts
gui_show
get_db hinst:riscv_core/u_mul
set_db hinst:riscv_core/u_mul .ungroup_ok false
get_db hinst:riscv_core/u_div
set_db hinst:riscv_core/u_div .ungroup_ok false
resume
# resuming normal operation
report_timing
report_hierarchy
report_area
report_timing -max_slack
report_timing -nworst 10
report_timing -nworst 20
report_timing -nworst 40
resume
report_timing -h
report_timing -from hinst:riscv_core/u_mul
report_timing -module hinst:riscv_core/u_mul
report_timing -hinst hinst:riscv_core/u_mul
write_db riscv_core
exit
