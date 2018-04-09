module input_proc(i_clk, i_vsync, o_a);
	parameter xRes = 320;
	parameter yRes = 240;
	// INPUTS
	input logic i_clk;
	input logic i_vsync;
	
	// OUTPUTS
	output logic [9:0] o_a [0:1];

	// WIRES AND REGS
	logic [9:0] ycount;
	logic [9:0] xcount;
	
	// if this pixel is within coordinate space of output space, flag valid
	/*assign o_valid = (xcount > 5 && xcount < (xRes-6) &&
		ycount > 5 && ycount < (yRes-6)) ? 1 : 0;*/
		
	assign o_a = {xcount,ycount};
	
	always @ (posedge i_clk)
	begin
		if(i_vsync) begin
			ycount <= 0;
			xcount <= 0;
		end else begin
			if(xcount > xRes) begin
				xcount <= 0;
				ycount <= ycount + 1'b1;
				if (ycount > yRes) begin
					ycount <= ycount;
				end
			end else begin
				xcount <= xcount + 1'b1;
			end
		end
	end
endmodule
