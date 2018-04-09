module nms_and_buffer(i_clk, i_corner_pos, i_scr, o_is_corner, i_a, o_a, i_nms_en);
	// INPUTS
	input logic i_clk;
	input logic i_corner_pos;
	input logic [12:0] i_scr;
	input logic [9:0] i_a [0:1];
	input logic i_nms_en;
	
	// OUTPUTS
	output logic o_is_corner;
	output logic [9:0] o_a [0:1];
	
	// WIRES
	logic [12:0] scr;
	logic corner_pos;
	logic [0:6][12:0] nms_inputs [0:6] ;
	logic nms_corner;
	logic [9:0] a0 [0:1];
	logic buf_clk;
	
	assign scr = i_scr;
	assign corner_pos = i_corner_pos;
	
	assign buf_clk = i_nms_en ? i_clk : 0;
	
	nms_buf nmsbuf0 (.i_clk(buf_clk), .i_din(scr), .i_is_corner(corner_pos),
		.o_dout(nms_inputs), .o_is_corner(nms_corner), .i_a(i_a), .o_a(a0));	
		
	non_max_sup nms0 (.i_clk(i_clk), .i_scr(nms_inputs), .i_is_corner(nms_corner), .o_corner(o_is_corner),
		.i_a(a0), .o_a(o_a));
endmodule

module nms_buf (i_clk, i_din, i_is_corner, o_dout, o_is_corner, i_a, o_a);

	//extract a 7x7 square that contains the corner score value for the respective pixel in the image 
	//Ex: nms_buf[6][6] == corner_score_of_img[3][3] (this is the first cntr pixel mapped to the first pixel of the nms buffer)
	//buffer FIFO works in a similar manner to circle_buffer (with the sliding window)	

	parameter res = 320;
	localparam l = res-7-6;
	//localparam center_location = (3*res) + 3;

	// INPUTS
	input logic i_clk;
	input logic [12:0] i_din;
	input logic i_is_corner;
	input logic [9:0] i_a [0:1];
	
	// OUTPUTS
	output logic [0:6][12:0]o_dout [0:6] ;
	output logic o_is_corner;
	output logic [9:0] o_a [0:1];
	
	// WIRES AND REGS
	logic [0:6][12:0] d [0:6] ;
	logic [0:l-1][12:0] fifo [0:5];	

	logic [0:6][7:0] c [0:6];	       
	logic [0:l-1][7:0] c_fifo [0:5];
	logic [0:6][7:0] x [0:6];	       
	logic [0:l-1][7:0] x_fifo [0:5];   
	logic [0:6][7:0] y [0:6];	       
	logic [0:l-1][7:0] y_fifo [0:5];	

	logic [12:0] data;
	assign data = i_is_corner ? i_din : 0;
	
	assign o_dout = d;
	assign o_is_corner = c[3][3];
	assign o_a = {x[3][3],y[3][3]};
	
	always @ (posedge i_clk)
	begin
		d[6][0:6] <= {data, d[6][0:5]};	
		x[6][0:6] <= {i_a[0], x[6][0:5]};
		y[6][0:6] <= {i_a[1], y[6][0:5]};
		c[6][0:6] <= {i_is_corner, c[6][0:5]};

		
		for(int i = 1; i < 7; i=i+1)	
		begin	
			//add the right most pixel from the 7 x 7 box to the first elem of the fifo, slide the fifo over 			
			fifo[i-1][0:l-1] <= {d[i][6], fifo[i-1][0:l-2]};	
			x_fifo[i-1][0:l-1] <= {x[i][6], x_fifo[i-1][0:l-2]};
			y_fifo[i-1][0:l-1] <= {y[i][6], y_fifo[i-1][0:l-2]};
			c_fifo[i-1][0:l-1] <= {c[i][6], c_fifo[i-1][0:l-2]};			
		end
		for(int j = 0; j < 6; j=j+1)
		begin
			//d[i][0] = fifo[i][l-1], d[i][1:6] = d[i][0:5] (slide the row one pixel to the right)
			d[j][0:6] <= {fifo[j][l-1], d[j][0:5]};	
			x[j][0:6] <= {x_fifo[j][l-1], x[j][0:5]};	
			y[j][0:6] <= {y_fifo[j][l-1], y[j][0:5]};	
			c[j][0:6] <= {c_fifo[j][l-1], c[j][0:5]};
		end
	end

endmodule

module non_max_sup (i_clk, i_scr, i_is_corner, o_corner, i_a, o_a);
	// INPUTS
	input logic [0:6][12:0] i_scr [0:6];
	input logic i_is_corner;
	input logic i_clk;
	input logic [9:0] i_a [0:1];
	
	// OUTPUTS
	output logic o_corner;
	output logic [9:0] o_a [0:1];
	
	// WIRES
	logic highest, h0, h1, h2,h3,h4,h5,h6;
	
	// COMBINATIONAL ASSIGNMENTS
	always @ (posedge i_clk)
	begin
		h0 = ((i_scr[3][3] >  i_scr[0][0]) & (i_scr[3][3] >  i_scr[0][1]) & (i_scr[3][3] >  i_scr[0][2]) & 
			(i_scr[3][3] >  i_scr[0][3]) & (i_scr[3][3] >  i_scr[0][4]) & (i_scr[3][3] >  i_scr[0][5]) & (i_scr[3][3] >  i_scr[0][6]));
		h1 = (i_scr[3][3] >  i_scr[1][0]) & (i_scr[3][3] >  i_scr[1][1]) & (i_scr[3][3] >  i_scr[1][2]) & (i_scr[3][3] >  i_scr[1][3]) & 
			(i_scr[3][3] >  i_scr[1][4]) & (i_scr[3][3] >  i_scr[1][5]) & (i_scr[3][3] >  i_scr[1][6]);
		h2 = (i_scr[3][3] >  i_scr[2][0]) & (i_scr[3][3] >  i_scr[2][1]) & (i_scr[3][3] >  i_scr[2][2]) & (i_scr[3][3] >  i_scr[2][3]) & (i_scr[3][3] >  i_scr[2][4]) & (i_scr[3][3] >  i_scr[2][5]) & (i_scr[3][3] >  i_scr[2][6]);
		h3 = (i_scr[3][3] >  i_scr[3][0]) & (i_scr[3][3] >  i_scr[3][1]) & 
			(i_scr[3][3] >  i_scr[3][2]) & (i_scr[3][3] >  i_scr[3][4]) & (i_scr[3][3] >  i_scr[3][5]) & 
			(i_scr[3][3] >  i_scr[3][6]);
		h4 = (i_scr[3][3] >  i_scr[4][0]) & (i_scr[3][3] >  i_scr[4][1]) & (i_scr[3][3] >  i_scr[4][2]) & 
			(i_scr[3][3] >  i_scr[4][3]) & (i_scr[3][3] >  i_scr[4][4]) & (i_scr[3][3] >  i_scr[4][5]) & (i_scr[3][3] >  i_scr[4][6]);
		h5 = (i_scr[3][3] >  i_scr[5][0]) & 
			(i_scr[3][3] >  i_scr[5][1]) & (i_scr[3][3] >  i_scr[5][2]) & (i_scr[3][3] >  i_scr[5][3]) & (i_scr[3][3] >  i_scr[5][4]) & 
			(i_scr[3][3] >  i_scr[5][5]) & (i_scr[3][3] >  i_scr[5][6]);
		h6 = ((i_scr[3][3] >  i_scr[6][0]) & (i_scr[3][3] >  i_scr[6][1]) & 
			(i_scr[3][3] >  i_scr[6][2]) & (i_scr[3][3] >  i_scr[6][3]) & (i_scr[3][3] >  i_scr[6][4]) & (i_scr[3][3] >  i_scr[6][5]) & 
			(i_scr[3][3] >  i_scr[6][6]));
		highest = h0 && h1 && h2 && h3 && h4 && h5 && h6;
		o_corner <= /*i_is_corner &&*/ highest;
		
		o_a <= i_a;
	end
	
endmodule

