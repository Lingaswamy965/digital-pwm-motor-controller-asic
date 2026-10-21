current_design digital_pwm_motor_controller

create_clock -name clk -period 10 [get_ports clk]

set_input_delay 2 -clock clk [get_ports {reset enable duty_cycle[*]}]
set_output_delay 2 -clock clk [get_ports pwm_out]
