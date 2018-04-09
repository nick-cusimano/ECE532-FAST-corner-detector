module nms_and_buffer(i_clk, i_corner_pos, i_scr, o_is_corner, i_v, o_v);
	// INPUTS
	input logic i_clk;
	input logic i_corner_pos;
	input logic [12:0] i_scr;
	input logic i_v;
	
	// OUTPUTS
	output logic o_is_corner;
	output logic o_v;
	
	// WIRES
	logic [12:0] scr;
	logic corner_pos;
	logic [0:6][12:0] nms_inputs [0:6] ;
	logic nms_corner;
	logic v0;
	
	assign scr = i_scr;
	assign corner_pos = i_corner_pos;
	
	nms_buf nmsbuf0 (.i_clk(i_clk), .i_din(scr), .i_is_corner(corner_pos),
		.o_dout(nms_inputs), .o_is_corner(nms_corner), .i_v(i_v), .o_v(v0));	
		
	non_max_sup nms0 (.i_clk(i_clk), .i_scr(nms_inputs), .i_is_corner(nms_corner), .o_corner(o_is_corner),
		.i_v(v0), .o_v(o_v));
endmodule

module nms_buf (i_clk, i_din, i_is_corner, o_dout, o_is_corner, i_v, o_v);

	//extract a 7x7 square that contains the corner score value for the respective pixel in the image 
	//Ex: nms_buf[6][6] == corner_score_of_img[3][3] (this is the first cntr pixel mapped to the first pixel of the nms buffer)
	//buffer FIFO works in a similar manner to circle_buffer (with the sliding window)	

	parameter res = 320;
	localparam l = res-7;
	localparam center_location = (3*res) + 3;

	// INPUTS
	input logic i_clk;
	input logic [12:0] i_din;
	input logic i_is_corner;
	input logic i_v;
	
	// OUTPUTS
	output logic [0:6][12:0]o_dout [0:6] ;
	output logic o_is_corner;
	output logic o_v;
	
	// WIRES AND REGS
	logic [0:6][12:0] d [0:6] ;
	logic [0:l-1][12:0] fifo [0:5];
	logic center_corner;									// corner only needed for final check
	logic [0:center_location] corner_fifo ;					// this fifo is to get the centre pixel's is_corner value.
	logic center_valid;									// valid only needed for final check
	logic [0:center_location] valid_fifo ;					// this fifo is to get the centre pixel's valid value.

	
	assign o_dout = d;
	assign o_is_corner = center_corner;
	assign o_v = center_valid;
	
	always @ (posedge i_clk)
	begin
		d[0][0:6] <= {i_din, d[0][0:5]};
		corner_fifo[0:center_location] <= {i_is_corner, corner_fifo[0:center_location-1]};	//slide fifo over by one (push onto FIFO)
		center_corner <= corner_fifo[center_location-1];						//grab the tail of the FIFO - this is the result of the contiguity test for the center pixel of d
		
		valid_fifo[0:center_location] <= {i_v, valid_fifo[0:center_location-1]};
		center_valid <= valid_fifo[center_location-1];
		
		for(int i = 0; i < 6; i=i+1)	
		begin
			fifo[i][0:l-1] <= {d[i][6], fifo[i][0:l-2]};					//place the right-most pixel of d onto the FIFO, and slide the FIFO over
		end
		for(int i = 1; i < 7; i=i+1)
		begin
			d[i][0:6] <= {fifo[i-1][l-1], d[i][0:5]};						//slide d one pixel to the right
		end
	end

endmodule

module non_max_sup (i_clk, i_scr, i_is_corner, o_corner, i_v, o_v);
	// INPUTS
	input logic [0:6][12:0] i_scr [0:6];
	input logic i_is_corner;
	input logic i_clk;
	input logic i_v;
	
	// OUTPUTS
	output logic o_corner;
	output logic o_v;
	
	// WIRES
	logic highest;
	
	// COMBINATIONAL ASSIGNMENTS
	always @ (posedge i_clk)
	begin
		highest = ((i_scr[3][3] > i_scr[0][0]) & (i_scr[3][3] > i_scr[0][1]) & (i_scr[3][3] > i_scr[0][2]) & 
			(i_scr[3][3] > i_scr[0][3]) & (i_scr[3][3] > i_scr[0][4]) & (i_scr[3][3] > i_scr[0][5]) & (i_scr[3][3] > i_scr[0][6]) & 
			(i_scr[3][3] > i_scr[1][0]) & (i_scr[3][3] > i_scr[1][1]) & (i_scr[3][3] > i_scr[1][2]) & (i_scr[3][3] > i_scr[1][3]) & 
			(i_scr[3][3] > i_scr[1][4]) & (i_scr[3][3] > i_scr[1][5]) & (i_scr[3][3] > i_scr[1][6]) & (i_scr[3][3] > i_scr[2][0]) & 
			(i_scr[3][3] > i_scr[2][1]) & (i_scr[3][3] > i_scr[2][2]) & (i_scr[3][3] > i_scr[2][3]) & (i_scr[3][3] > i_scr[2][4]) & 
			(i_scr[3][3] > i_scr[2][5]) & (i_scr[3][3] > i_scr[2][6]) & (i_scr[3][3] > i_scr[3][0]) & (i_scr[3][3] > i_scr[3][1]) & 
			(i_scr[3][3] > i_scr[3][2]) & (i_scr[3][3] > i_scr[4][4]) & (i_scr[3][3] > i_scr[3][4]) & (i_scr[3][3] > i_scr[3][5]) & 
			(i_scr[3][3] > i_scr[3][6]) & (i_scr[3][3] > i_scr[4][0]) & (i_scr[3][3] > i_scr[4][1]) & (i_scr[3][3] > i_scr[4][2]) & 
			(i_scr[3][3] > i_scr[4][3]) & (i_scr[3][3] > i_scr[4][5]) & (i_scr[3][3] > i_scr[4][6]) & (i_scr[3][3] > i_scr[5][0]) & 
			(i_scr[3][3] > i_scr[5][1]) & (i_scr[3][3] > i_scr[5][2]) & (i_scr[3][3] > i_scr[5][3]) & (i_scr[3][3] > i_scr[5][4]) & 
			(i_scr[3][3] > i_scr[5][5]) & (i_scr[3][3] > i_scr[5][6]) & (i_scr[3][3] > i_scr[6][0]) & (i_scr[3][3] > i_scr[6][1]) & 
			(i_scr[3][3] > i_scr[6][2]) & (i_scr[3][3] > i_scr[6][3]) & (i_scr[3][3] > i_scr[6][4]) & (i_scr[3][3] > i_scr[6][5]) & 
			(i_scr[3][3] > i_scr[6][6]));
		o_corner <= i_is_corner && highest;
		
		o_v <= i_v;
	end
	
endmodule

