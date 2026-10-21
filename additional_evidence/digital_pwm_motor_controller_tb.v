
`timescale 1ns / 1ps

module digital_pwm_motor_controller_tb;

    reg clk;
    reg reset;
    reg enable;
    reg [7:0] duty_cycle;
    wire pwm_out;

    // Instantiate the DUT
    digital_pwm_motor_controller uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .duty_cycle(duty_cycle),
        .pwm_out(pwm_out)
    );

    // 15 ns clock period (approximately 66.67 MHz)
    initial begin
        clk = 1'b0;
        forever #7.5 clk = ~clk;
    end

    // Test sequence
    initial begin
        reset = 1'b1;
        enable = 1'b0;
        duty_cycle = 8'd0;

        // Reset
        #20;
        reset = 1'b0;
        enable = 1'b1;

        // 25% duty cycle
        duty_cycle = 8'd64;
        #2560;

        // 50% duty cycle
        duty_cycle = 8'd128;
        #2560;

        // 75% duty cycle
        duty_cycle = 8'd192;
        #2560;

        // 100% duty cycle
        duty_cycle = 8'd255;
        #2560;

        // Disable PWM
        enable = 1'b0;
        #100;

        $finish;
    end

    // Generate waveform for GTKWave
    initial begin
        $dumpfile("pwm_motor_controller_15ns.vcd");
        $dumpvars(0, digital_pwm_motor_controller_tb);
    end

endmodule
