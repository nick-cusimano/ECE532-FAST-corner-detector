`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/05/23 15:11:30
// Design Name: 
// Module Name: ov7725_capture
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


module ov7670_capture(
input pclk,
input vsync,
input href,
input[7:0] d,
output[16:0] addr,
//* 16 bits is required for RGB format (5,6,5), gray scale can use just 8 bits)
//output reg[15:0] dout,
output reg[7:0] dout,
output reg we
    );
	// latch will still be used to hold on to bits
    reg [15:0] d_latch;
    reg [16:0] address;
    reg [16:0] address_next;  
     reg [1:0] wr_hold;    
     reg [1:0] cnt;
  initial d_latch = 16'b0;
   initial address = 19'b0;
   initial address_next = 19'b0;
    initial wr_hold = 2'b0;   
    initial cnt = 2'b0;        
assign addr =    address;

always@(posedge pclk)begin 
 if( vsync ==1) begin
           address <=17'b0;
           address_next <= 17'b0;
           wr_hold <=  2'b0;
           cnt <=  2'b0;
           end
        else begin
           if(address<76800)  // Check if at end of frame buffer
             address <= address_next;
           else
             address <= 76800;
		// Code for Grayscale format
		// set write enable to reflect higher bit of wr_hold
			we		 <= wr_hold[1];
			// wr_hold will write pixel every other cycle, as YCrCb422 cycle goes Cr->Y->Cb->Y
			wr_hold  <= {wr_hold[0] , (href &&( ! wr_hold[0]))  };
			// push new pixel onto latch			
			d_latch  <= {d_latch[7:0] , d};
		    // check for higher bit of wr_hold
			if (wr_hold[1] == 1)
			begin
				address_next <= address_next + 1;
				// always take older bits due to YCrCb422 cycle
				dout[7:0] = d_latch[15:8];
			end
        end;
 end

endmodule
