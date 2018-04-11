`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2018 11:09:38 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb();
    reg sys_clk;
    reg reset;
    wire servoPWM1;
    wire servoPWM2;
    // Instantiate DUT
    design_1_wrapper dut
    (.reset(reset),
     .servoPWM1(servoPWM1),
     .servoPWM2(servoPWM2),
     .sys_clock(sys_clk)); // pwm output
    
    always #5 sys_clk = ~sys_clk;
    
    initial
    begin
    sys_clk = 1'b0;
    reset = 1'b1;    
    #100
    reset = 1'b0;
    #10000
    reset = 1'b1;
    end
    
   
  
endmodule
