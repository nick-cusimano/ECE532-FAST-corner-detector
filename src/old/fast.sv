module fast(i_clk, i_din, i_valid, o_corner, o_corner_valid);
	parameter threshold = 1;
	// INPUTS
	input logic i_clk;
	input logic [7:0] i_din;
	input logic i_valid;
	
	// OUTPUTS
	output logic o_corner;
	output logic o_corner_valid;
	
	// WIRES
	logic [7:0] crc [0:15];
	logic [7:0] ctr;
	logic [7:0] thr;
	logic [12:0] scr;
	logic corner_pos;
	
	// VALID WIRES
	logic v0, v1;
	
	assign thr = threshold;
	
	circle_pixel_buffer cbuf0 (.i_clk(i_clk), .i_din(i_din), .o_dout(crc), .o_ctr(ctr),
		.i_v(i_valid), .o_v(v0));
	
	corner_detect c0 (.i_clk(i_clk), .i_crc(crc), .i_ctr(ctr), .i_thr(thr), .o_scr(scr), .o_corner_pos(corner_pos),
		.i_v(v0), .o_v(v1));
	
	nms_and_buffer nms0 (.i_clk(i_clk), .i_corner_pos(corner_pos), .i_scr(scr), .o_is_corner(o_corner),
		.i_v(v1), .o_v(o_corner_valid));

endmodule