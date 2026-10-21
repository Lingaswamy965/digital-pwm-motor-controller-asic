read_liberty {/home/vscode/Desktop/skywater-pdk-libs-sky130_fd_sc_hd/timing/sky130_fd_sc_hd__ff_100C_1v95.lib}
read_db {results/sky130hd/digital_pwm_motor_controller/base/6_final.odb}
read_sdc {/tmp/pwm_test_15ns.sdc}
source platforms/sky130hd/setRC.tcl
read_spef {results/sky130hd/digital_pwm_motor_controller/base/6_final.spef}
puts "===== STA RESULTS: sky130_fd_sc_hd__ff_100C_1v95 | CLOCK 15 ns ====="
report_checks -path_delay max -format full_clock_expanded
report_worst_slack -max
report_tns -max
report_checks -path_delay min -format full_clock_expanded
report_worst_slack -min
report_tns -min
exit
