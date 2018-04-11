`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2018 02:42:15 PM
// Design Name: 
// Module Name: vga_top
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


module vga_top (
        output [1:0] vga444_red,
        output [2:0] vga444_green,
        output [1:0] vga444_blue,
        output vga_hsync,
        output vga_vsync,
        output [18:0] frame_addr_out,
        input [7:0] frame_pixel_in,
        input clk25,
        input pic_sel_0,
        input pic_sel_1
    );
    
     wire [16:0] raw_frame_addr;
    
     
     assign frame_addr_out[16:0] = {pic_sel_1, pic_sel_0, raw_frame_addr};
  
 
     vga444   Inst_vga(
   		.clk25       (clk25),
        .vga_red    (vga444_red),
        .vga_green   (vga444_green),
        .vga_blue    (vga444_blue),
        .vga_hsync   (vga_hsync),
        .vga_vsync  (vga_vsync),
        .HCnt       (),
        .VCnt       (),
        .frame_pixel  (frame_pixel_in),
        .frame_addr   (raw_frame_addr)
);

endmodule
