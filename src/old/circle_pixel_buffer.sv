module circle_pixel_buffer (i_clk, i_din, o_dout, o_ctr, /*o_buf,*/ i_v, o_v);
	parameter resolution = 320;
	localparam l = resolution - 7;
	localparam center_location = (3*resolution) + 3;
	
	// INPUTS
	input logic [7:0] i_din;            //pixel data stream
	input logic i_clk;
	input logic i_v;
	
	// OUTPUTS
	output logic [7:0] o_dout [0:15];   //the bresenham circle 
	output logic [7:0] o_ctr;	        //cntr of the bresenham circle
	output logic o_v;
		
	// WIRES AND REGS
	logic [0:6][7:0] d [0:6];	        //7 x 7 box that stores the pixels that make the bresenham circle (7 vectors of 7 elements, each element is 1B (pixel))
	logic [0:l-1][7:0] fifo [0:5];    //6 FIFOs - depth is the horizonal resolution of the image. each element is a byte
	
	logic center_valid;									// valid only needed for final check
	logic [0:center_location] valid_fifo ;					// this fifo is to get the centre pixel's valid value.
	
	//DEBUG
    //output logic [0:6][7:0] o_buf [0:6]; //kept for debug
    
	always @ (posedge i_clk)
	begin
		//d[0][0] = input data, d[0][1:6] = d[0][0:5] (slide the first row one pixel to the right)
		d[0][0:6] <= {i_din, d[0][0:5]};	
		
		valid_fifo[0:center_location] <= {i_v, valid_fifo[0:center_location-1]};
		center_valid <= valid_fifo[center_location-1];

		for(int i = 0; i < 6; i=i+1)	
		begin	
			//add the right most pixel from the 7 x 7 box to the first elem of the fifo, slide the fifo over 			
			fifo[i][0:l-1] <= {d[i][6], fifo[i][0:l-2]};	
		end
		for(int j = 1; j < 7; j=j+1)
		begin
			//d[i][0] = fifo[i][l-1], d[i][1:6] = d[i][0:5] (slide the row one pixel to the right)
			d[j][0:6] <= {fifo[j-1][l-1], d[j][0:5]};	
		end
	end
	
	//populate the bresenham circle
	assign o_dout[0] = d[0][3];
	assign o_dout[1] = d[0][4];
	assign o_dout[2] = d[1][5];
	assign o_dout[3] = d[2][6];
	assign o_dout[4] = d[3][6];
	assign o_dout[5] = d[4][6];
	assign o_dout[6] = d[5][5];
	assign o_dout[7] = d[6][4];
	assign o_dout[8] = d[6][3];
	assign o_dout[9] = d[6][2];
	assign o_dout[10] = d[5][1];
	assign o_dout[11] = d[4][0];
	assign o_dout[12] = d[3][0];
	assign o_dout[13] = d[2][0];
	assign o_dout[14] = d[1][1];
	assign o_dout[15] = d[0][2];
	assign o_ctr = d[3][3];
	
	assign o_v = center_valid;
	
	//DEBUG
	//assign o_buf = d;
endmodule 