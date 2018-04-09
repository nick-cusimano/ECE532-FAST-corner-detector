module output_proc(i_clk, i_c_valid, i_corner, o_x, o_y, o_we, o_vsync);
	parameter xRes = 320;
	parameter yRes = 240;
	// INPUTS
	input logic i_clk;
	input logic i_c_valid;
	input logic i_corner;
	
	// OUTPUTS
	output logic [9:0] o_x, o_y;
	output logic o_we;
	output logic o_vsync;
	
	// WIRES AND REGS
	logic [9:0] xCount, yCount;
	logic [4:0] invalidCount;
	logic vsync;
	
	assign o_we = i_corner && i_c_valid;
	assign o_x = xCount+6; 	// since we shaved off 6 pixels by double filtering
	assign o_y = yCount+6;
	
	always @ (posedge i_clk)
	begin
	    o_vsync <= 1'b0;
		if(i_c_valid == 0) begin	// increment invalid if invalid
			invalidCount <= invalidCount + 1;
		end else begin // i_c_valid == 1
			if (yCount < (yRes-12)) begin
				if(xCount < (xRes-12)) begin
					xCount <= xCount + 1;
				end else begin
					xCount <= 0;
					yCount <= yCount + 1;
				end
			end else begin
			     o_vsync <= 1'b1;        // I don't think this will happen
			end
			invalidCount <= 0;		// if(valid) reset invalidCount
		end
		// wraparound takes 7 cycles, if 8 invalids, then is new frame
		if(invalidCount == 4'd15) begin
			xCount <= 0;
			yCount <= 0;
		end	
		if(yCount == (yRes-12)) begin     // this will happen but not during (valid)
		    o_vsync <= 1'b1;
		    //xCount <= 0;
		    //yCount <= 0;
		end
	end
endmodule