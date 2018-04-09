module fast(i_clk, i_din, i_a, o_corner, o_a);
	// INPUTS
	input logic i_clk;
	input logic [7:0] i_din;
	input logic [9:0] i_a [0:1];
	
	// OUTPUTS
	output logic o_corner;
	output logic [9:0] o_a [0:1];
	
	// WIRES
	logic [7:0] crc [0:15];
	logic [7:0] ctr;
	logic signed [7:0] thr;
	logic [12:0] scr;
	logic corner_pos;
	
	// BRESENHAM 
	logic scr_en;
	
	// NMS BUFFER EN
	logic nms_en;
	
	// VALID WIRES
	logic [9:0] a0 [0:1];
	logic [9:0] a1 [0:1];
	
	assign thr = 17;
	
	circle_pixel_buffer cbuf0 (.i_clk(i_clk), .i_din(i_din), .o_dout(crc), .o_ctr(ctr),
		.i_a(i_a), .o_a(a0), .o_scr_en(scr_en));
	
	corner_detect c0 (.i_scr_en(scr_en), .i_clk(i_clk), .i_crc(crc), .i_ctr(ctr), .i_thr(thr), .o_scr(scr), .o_corner_pos(corner_pos),
		.i_a(a0), .o_a(a1), .o_scr_en(nms_en));
	
	nms_and_buffer nms0 (.i_clk(i_clk), .i_corner_pos(corner_pos), .i_scr(scr), .o_is_corner(o_corner),
		.i_a(a1), .o_a(o_a), .i_nms_en(nms_en));

endmodule