module corner_detect(i_clk, i_crc, i_ctr, i_thr, o_scr, o_corner_pos, i_a, o_a, i_scr_en, o_scr_en);
	// INPUTS
	input logic i_clk;
	input logic [7:0] i_crc [0:15];
	input logic [7:0] i_ctr;
	input logic [7:0] i_thr;
	input logic [9:0] i_a [0:1];
	input logic i_scr_en;
	
	// OUTPUTS
	output logic [12:0] o_scr;
	output logic o_corner_pos;
	output logic [9:0] o_a [0:1];	// 4 delays of i_v;
	output logic o_scr_en;
	
	// WIRES
	logic  [7:0] crc [0:15];
	logic  [7:0] ctr;
	logic  [7:0] thr;
	logic is_bd [0:1][0:15];
	logic  [7:0] bd_scr [0:1][0:15];
	logic  [12:0] scr;
	logic corner_pos;
	logic [5:0] corner_clk_ctrl;
	
	// valid-register delays
	logic [9:0] a0 [0:1];
	logic [9:0] a1 [0:1];	
	logic [9:0] a2 [0:1];
	logic [9:0] a3 [0:1];
	logic [9:0] a4 [0:1];
	logic [9:0] a5 [0:1];
	
	logic [5:0] scr_fifo;
	
	assign crc = i_crc;
	assign ctr = i_ctr;
	assign thr = i_thr;
	assign o_scr = scr;
	assign o_corner_pos = corner_pos;
		
	assign clk = (i_scr_en || corner_clk_ctrl[5]) ? i_clk : 0;

	threshold thrs0 (.i_clk(clk), .i_crc(crc), .i_ctr(ctr), .i_thr(thr), .o_scr(bd_scr), .o_thr(is_bd));
	corner_score  cs0 (.i_clk(clk), .i_scr(bd_scr),  .o_scr(scr));
	contiguity con0 (.i_clk(clk), .i_b(is_bd[0]), .i_d(is_bd[1]), .o(corner_pos));
	
	always @ (posedge i_clk)
	begin
		o_a <= a0;
		a0 <= a1;
		a1 <= a2;
		a2 <= a3;
		a3 <= a4;
		a4 <= a5;
		a5 <= i_a;
		
		o_scr_en <= scr_fifo[0];
		scr_fifo <= scr_fifo >> 1;
		scr_fifo[5] <= i_scr_en;
		
		corner_clk_ctrl <= corner_clk_ctrl << 1;
		if(i_scr_en) begin
			corner_clk_ctrl <= 6'b111111;
		end
		
	end
	
endmodule

module threshold (i_clk, i_crc, i_ctr, i_thr, o_scr, o_thr);
	// Recommended one register at output
	//INPUTS
	input logic i_clk;
	input logic  [7:0] i_crc [0:15]; 		// 16 element array of 8bit vectors
	input logic  [7:0] i_ctr;				// pixel intensity
	input logic  [7:0] i_thr;	

	// OUTPUTS
	output logic  [7:0] o_scr [0:1] [0:15] ; 		
	output logic o_thr [0:1] [0:15] ;

	// WIRES AND REGS
	logic signed [8:0] bri_reg [0:15];
	logic signed [8:0] dar_reg [0:15];
	logic signed [9:0] thr_bri [0:15];
	logic signed [9:0] thr_dar [0:15];
	logic bright [0:15];
	logic dark [0:15];
	logic bright_sel [0:15];
	logic dark_sel [0:15];
	logic [7:0] bri_scr [0:15];
	logic [7:0] dar_scr [0:15];
	
	logic signed [8:0] britest [0:15];
	logic signed [8:0] dartest [0:15];
	logic signed [8:0] britest0 [0:15];
	logic signed [8:0] dartest0 [0:15];
	
	// COMBINATIONAL LOGIC
	assign o_thr[0] = bright;
	assign o_thr[1] = dark;
	assign o_scr = '{bri_scr, dar_scr};
	
	
	
	always_comb
	begin
		for(int j = 0; j < 16; j = j + 1)
		begin
			bright_sel[j] = (thr_bri[j] > 0);
			dark_sel[j] = (thr_dar[j] > 0);
			britest[j] = i_crc[j] - i_ctr;
			dartest[j] = i_ctr - i_crc[j];
			britest0[j] = bri_reg[j] - i_thr;
			dartest0[j] = dar_reg[j] - i_thr;
		end
	end
	
	// SEQUENTIAL LOGIC
	always @ (posedge i_clk)
	begin
		for(int i=0;i<16;i=i+1)
		begin 
			bri_reg[i] <= (britest[i] > 0) ? britest[i] : 0;
			dar_reg[i] <= (dartest[i] > 0) ? dartest[i] : 0;
			thr_bri[i] <= (britest0[i] > 0 /*&& ~(britest0[i] < 100 && i_ctr < 8'h20)*/) ? britest0[i] : 0;
			thr_dar[i] <= (dartest0[i] > 0 /*&& ~(britest0[i] < 50 && i_ctr > 8'hf0)*/) ? dartest0[i] : 0;
			bright[i] <= bright_sel[i];
			dark[i]   <= dark_sel[i];
			bri_scr[i] <= bright_sel[i] ? thr_bri[i] : 0;
			dar_scr[i] <= dark_sel[i] ? thr_dar[i] : 0;
		end 
	end
	
endmodule

module corner_score  (i_clk, i_scr,  o_scr);
	// 4 stage adder with 4 register delays
	// INPUTS
	input logic [7:0] i_scr [0:1] [0:15]; 		// 16x 8bit vectors
	input logic i_clk;
	
	// OUTPUTS
	output logic [12:0] o_scr;

	// WIRES AND REGS
	logic [9:0] A [0:1][0:7];
	logic [10:0] B [0:1][0:3];
	logic [11:0] C [0:1][0:1];
	logic [12:0] D [0:1];
	logic [12:0] scr;
	
	assign o_scr = scr;
	
	always @(posedge i_clk)			// 4 register delays
	begin
		for (int i = 0; i<8; i=i+1)
		begin
			A[0][i] <= i_scr[0][i] + i_scr[0][i+8];
			A[1][i] <= i_scr[1][i] + i_scr[1][i+8];
		end
		for (int j = 0; j<4; j=j+1)
		begin
			B[0][j] <= A[0][j] + A[0][j+4];
			B[1][j] <= A[1][j] + A[1][j+4];
		end
		for (int k = 0; k < 2; k = k + 1)
		begin
			C[0][k] <= B[0][k] + B[0][k+2];
			C[1][k] <= B[1][k] + B[1][k+2];
		end
		D[0] = C[0][0] + C[0][1];
		D[1] = C[1][0] + C[1][1];
		scr <= (D[0] > D[1]) ? D[0] : D[1] ; 
	end
endmodule

module contiguity (i_clk, i_b, i_d, o);
	// INPUTS
	input logic i_b [0:15];
	input logic i_d [0:15];
	input logic i_clk;

	// OUTPUTS
	output logic o;
	
	// WIRES
	logic b_and [0:15];
	logic d_and [0:15];
	logic o_1, o_2_b, o_2_d, b16, d16, b15, d15;
	
	always @ (posedge i_clk)		// 4 register delays
	begin
		// First
		b_and[0] <= i_b[0] & i_b[1] & i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8];
		b_and[1] <= i_b[9] & i_b[1] & i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8];
		b_and[2] <= i_b[9] & i_b[10] & i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8];
		b_and[3] <= i_b[9] & i_b[10] & i_b[11] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8];
		b_and[4] <= i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8];
		b_and[5] <= i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[5] & i_b[6] & i_b[7] & i_b[8];
		b_and[6] <= i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[6] & i_b[7] & i_b[8];
		b_and[7] <= i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15] & i_b[7] & i_b[8];
		b_and[8] <= i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15] & i_b[0] & i_b[8];
		b_and[9] <= i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15] & i_b[0] & i_b[1];
		b_and[10] <= i_b[2] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15] & i_b[0] & i_b[1];
		b_and[11] <= i_b[2] & i_b[3] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15] & i_b[0] & i_b[1];
		b_and[12] <= i_b[2] & i_b[3] & i_b[4] & i_b[12] & i_b[13] & i_b[14] & i_b[15] & i_b[0] & i_b[1];
		b_and[13] <= i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[13] & i_b[14] & i_b[15] & i_b[0] & i_b[1];
		b_and[14] <= i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[14] & i_b[15] & i_b[0] & i_b[1];
		b_and[15] <= i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[15] & i_b[0] & i_b[1];
		
		b16 <= i_b[0] & i_b[1] & i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8] & i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15];
		b15 <= (i_b[1] & i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8] & i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14] & i_b[15]) ||  (i_b[0] & i_b[1] & i_b[2] & i_b[3] & i_b[4] & i_b[5] & i_b[6] & i_b[7] & i_b[8] & i_b[9] & i_b[10] & i_b[11] & i_b[12] & i_b[13] & i_b[14]);
	
		d_and[0] <= i_d[0] & i_d[1] & i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8];
		d_and[1] <= i_d[9] & i_d[1] & i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8];
		d_and[2] <= i_d[9] & i_d[10] & i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8];
		d_and[3] <= i_d[9] & i_d[10] & i_d[11] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8];
		d_and[4] <= i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8];
		d_and[5] <= i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[5] & i_d[6] & i_d[7] & i_d[8];
		d_and[6] <= i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[6] & i_d[7] & i_d[8];
		d_and[7] <= i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15] & i_d[7] & i_d[8];
		d_and[8] <= i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15] & i_d[0] & i_d[8];
		d_and[9] <= i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15] & i_d[0] & i_d[1];
		d_and[10] <= i_d[2] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15] & i_d[0] & i_d[1];
		d_and[11] <= i_d[2] & i_d[3] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15] & i_d[0] & i_d[1];
		d_and[12] <= i_d[2] & i_d[3] & i_d[4] & i_d[12] & i_d[13] & i_d[14] & i_d[15] & i_d[0] & i_d[1];
		d_and[13] <= i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[13] & i_d[14] & i_d[15] & i_d[0] & i_d[1];
		d_and[14] <= i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[14] & i_d[15] & i_d[0] & i_d[1];
		d_and[15] <= i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[15] & i_d[0] & i_d[1];
		
		d16 <= i_d[0] & i_d[1] & i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8] & i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15];
		d15 <= (i_d[1] & i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8] & i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14] & i_d[15]) || (i_d[0] & i_d[1] & i_d[2] & i_d[3] & i_d[4] & i_d[5] & i_d[6] & i_d[7] & i_d[8] & i_d[9] & i_d[10] & i_d[11] & i_d[12] & i_d[13] & i_d[14]);
		
		// Second
		o_2_b <= ~b15 && ~b16 && (b_and[0] | b_and[1] | b_and[2] | b_and[3] | b_and[4] | b_and[5] | b_and[6] | b_and[7]
				| b_and[8] | b_and[9] | b_and[10] | b_and[11] | b_and[12] | b_and[13] | b_and[14] | b_and[15]);
		o_2_d <= ~d15 && ~d16 && (d_and[0] | d_and[1] | d_and[2] | d_and[3] | d_and[4] | d_and[5] | d_and[6] | d_and[7]
				| d_and[8] | d_and[9] | d_and[10] | d_and[11] | d_and[12] | d_and[13] | d_and[14] | d_and[15]);
		// Third	
		o_1 <= o_2_b | o_2_d;
		// Fourth
		o <= o_1;
	end
endmodule
