`timescale 1ns / 1ps
module pwm(
    input clk,            
    input [1:0] sw,       
    output reg pwm
);

reg [12:0] counter = 0;   
reg [12:0] duty;

always @(posedge clk)
begin
    if(counter == 4999)
        counter <= 0;
    else
        counter <= counter + 1;
end

always @(*)
begin
    case(sw)
        2'b00: duty = 1250;   
        2'b01: duty = 2500;   
        2'b10: duty = 3750;   
        2'b11: duty = 5000;   
        default: duty = 1250;
    endcase
end

always @(*)
begin
    if(counter < duty)
        pwm = 1'b1;
    else
        pwm = 1'b0;
end

endmodule
