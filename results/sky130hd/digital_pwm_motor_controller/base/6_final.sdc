###############################################################################
# Created by write_sdc
###############################################################################
current_design digital_pwm_motor_controller
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {duty_cycle[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {enable}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {pwm_out}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
