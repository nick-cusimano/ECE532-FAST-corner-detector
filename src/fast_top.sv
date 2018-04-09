module fast_top(i_clk, i_din, i_vsync, o_corner_we, o_x, o_y, o_vsync);
	// INPUTS
	input logic i_clk;
	input logic [7:0] i_din;	// VALID PIXEL EVERY CLK CYCLE
	input logic i_vsync;		// PIXEL[0][0] is on i_din when i_vsync is high
	
	// OUTPUTS
	output logic o_corner_we;
	output logic [9:0] o_x, o_y;
	output logic o_vsync;
	
	// WIRES AND REGS
	logic [9:0] t_addr [0:1];		// input to FAST pipeline
	logic [9:0] t_corner_addr [0:1];	// output from FAST pipeline
	logic t_corner_detected;		// corner present
	
	input_proc c0 (.i_clk(i_clk), 		// generates valid bits for pipeline
		.i_vsync(i_vsync), 
		.o_a(t_addr));
	
	fast fast0 (.i_clk(i_clk), .i_din(i_din), 
		.i_a(t_addr),
		.o_corner(t_corner_detected), 
		.o_a(t_corner_addr));
		
	output_proc o0 (.i_clk(i_clk), 		// based off valid bits, decode address
		.i_c_addr(t_corner_addr), 
		.i_corner(t_corner_detected), 
		.o_x(o_x), .o_y(o_y),
		.o_we(o_corner_we),
		.o_vsync(o_vsync));

endmodule
