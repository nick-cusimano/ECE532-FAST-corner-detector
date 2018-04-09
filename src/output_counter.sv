module output_proc(i_clk, i_c_addr, i_corner, o_x, o_y, o_we, o_vsync);
	parameter xRes = 320;
	parameter yRes = 240;
	// INPUTS
	input logic i_clk;
	input logic [9:0] i_c_addr [0:1];
	input logic i_corner;
	
	// OUTPUTS
	output logic [9:0] o_x, o_y;
	output logic o_we;
	output logic o_vsync;
	
	assign o_we = i_corner && (i_c_addr[0] > 5) && (i_c_addr[0] < 314) && (i_c_addr[1] > 5) && (i_c_addr[1] < 234);
	assign o_x = i_c_addr[0];
	assign o_y = i_c_addr[1];
	assign o_vsync = (i_c_addr[1] >= yRes-6);
endmodule