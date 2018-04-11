`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2018 09:22:10 PM
// Design Name: 
// Module Name: bmp_to_frame
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


module bmp_to_frame(
        output reg [18:0] frame_addr,
        output reg [7:0] pixel_data,
        output reg ld_done,
        output reg read_valid,                 // asserted loading finished
        input in_clk
    );
    
    integer input_file, r;
    reg [7:0] tmp_data;
    
    initial begin
        input_file = $fopen("/nfs/ug/homes-5/f/fengwen2/Desktop/camera1.bmp", "r");
        pixel_data <= 1'b0;
        frame_addr <= 1'b0;
    end
    
    always @ (posedge in_clk) begin
        r = $fread(input_file, tmp_data);
        read_valid <= r;
        //pixel_data <= tmp_data;
        frame_addr <= frame_addr + 1'b1;
    end
    
endmodule
