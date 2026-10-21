module digital_pwm_motor_controller (
    input  wire       clk,
    input  wire       reset,
    input  wire       enable,
    input  wire [7:0] duty_cycle,
    output reg        pwm_out
);

    reg [7:0] counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 8'd0;
            pwm_out <= 1'b0;
        end
        else if (!enable) begin
            counter <= 8'd0;
            pwm_out <= 1'b0;
        end
        else begin
            counter <= counter + 8'd1;

            if (counter < duty_cycle)
                pwm_out <= 1'b1;
            else
                pwm_out <= 1'b0;
        end
    end

endmodule