read_liberty $::env(HOME)/Desktop/skywater-pdk-libs-sky130_fd_sc_hd/timing/sky130_fd_sc_hd__ss_n40C_1v28.lib
read_db results/sky130hd/digital_pwm_motor_controller/base/6_final.odb
read_sdc results/sky130hd/digital_pwm_motor_controller/base/6_final.sdc
source platforms/sky130hd/setRC.tcl
read_spef results/sky130hd/digital_pwm_motor_controller/base/6_final.spef
report_checks -path_delay max -format full_clock_expanded
report_worst_slack -max
exit
