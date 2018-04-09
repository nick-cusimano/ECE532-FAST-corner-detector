`include "global.vh"

`include "utils.sv"
`include "tasks.sv"

`timescale 1ns/100ps

module tb();
    integer i, ifh, ofh, dfh;

    // Frame buffer
    reg [`CHANNEL_SIZE - 1:0] mem[0:`MEM_SIZE];
	reg [`CHANNEL_SIZE - 1:0] mem0[0:`MEM_SIZE];
	integer elements = 512;
	
	// VSYNV
	logic vsync_in;
	logic vsync_out;
	
	// CORNER WRITE ENABLE
	logic corner_we;
	
	// CORNER COORDINATES (x,y)
	logic [9:0] y_coor, x_coor;
	
    // Bitmap metadata
    integer unsigned width;
	integer count;
	integer donecount;
    integer unsigned height;
    integer unsigned size_of_data;
    integer unsigned offset_to_data;
    integer unsigned padding;
    integer unsigned bytes_per_pixel;
	logic unsigned [63:0] temp;
	
	function int start_corner;
		input int x_c,y_c;	
			start_corner = (y_c-3)*width + x_c;
    endfunction
	
	// Dynamic allocated points
	logic [9:0] x_mem[1024];
	logic [9:0] y_mem[1024];
	integer iter;	
	
    // Inputs to DUT
    reg clk;
    reg en;
    reg [`PIXEL_SIZE - 1:0] data;
	reg reset_n;
	
	fast_top dut0 (
		.i_clk(clk),
		.i_din((8'd255-data)), 
		.i_vsync(vsync_in), 
		.o_corner_we(corner_we), 
		.o_x(x_coor), 
		.o_y(y_coor), 
		.o_vsync(vsync_out));
	

    // -----------------------
    // Initialization sequence
    // -----------------------
    initial begin
        // Initialize inputs
        clk = 0;
        reset_n = 0;
        en = 0;
		count = 0;
		vsync_in = 0;
		iter <= 0;
	
        // Take out of reset
        #20
        reset_n = 1;

        // Open files
        ifh = open_file(`IFILE, "rb");
        ofh = open_file(`OFILE, "wb");

        // Read bitmap
        read_bmp_head(
            .ifh(ifh),
            .width(width),
            .height(height),
            .size_of_data(size_of_data),
            .offset_to_data(offset_to_data),
            .padding(padding),
            .bytes_per_pixel(bytes_per_pixel)
        );

        read_bmp_data(
            .ifh(ifh),
            .bytes_per_row(width * bytes_per_pixel),
            .rows(height),
            .padding(padding),
            .mem(mem),
			.mem0(mem0)
        );
		
		// START
		#20
		en = 1;
    end

    // --------------------
    // Termination sequence
    // --------------------
    initial begin
        #`SIM_TIME

        // Write bitmap
        write_bmp_head(ifh, ofh);

        write_bmp_data(
            .ofh(ofh),
            .bytes_per_row(width * bytes_per_pixel),
            .rows(height),
            .padding(padding),
            .mem(mem0)
        );

        // Close files
        $fclose(ifh);
        $fclose(ofh);

        // Exit
        $finish;
    end

    // ----------------
    // Clock generation
    // ----------------
    always
        #10 clk  = ~clk ;

    //-----------
    // Test logic
    //-----------
	always @ (posedge clk) begin
		if(!vsync_out && en && iter == 0)
			donecount <= 0;
		if(vsync_out && en && iter != 0 && donecount < iter)
		begin
			temp = start_corner(x_mem[donecount],y_mem[donecount]);
			$display("x: %d , y: %d, temp: %d \n", x_mem[donecount], y_mem[donecount], temp);
			donecount <= donecount + 1;
			mem0[temp] = 8'd0;				// bottom horizontal line
			mem0[temp+1] = 8'd0;
			mem0[temp+2] = 8'd0;
			mem0[temp+3] = 8'd0;
			mem0[temp+4] = 8'd0;
			mem0[temp+5] = 8'd0;
			mem0[temp+6] = 8'd0;
			
			mem0[temp + width] = 8'd0;		// left vertical line
			mem0[temp + 2*width] = 8'd0;
			mem0[temp + 3*width] = 8'd0;
			mem0[temp + 4*width] = 8'd0;
			mem0[temp + 5*width] = 8'd0;
			mem0[temp + 6*width] = 8'd0;
			
			//mem[temp + 6] = 8'd246;
			mem0[temp + width + 6] = 8'd0;		// right vertical line
			mem0[temp + 2*width + 6] = 8'd0;
			mem0[temp + 3*width + 6] = 8'd0;
			mem0[temp + 4*width + 6] = 8'd0;
			mem0[temp + 5*width + 6] = 8'd0;
			mem0[temp + 6*width + 6] = 8'd0;
			
			
			mem0[temp + 6*width + 1] = 8'd0;		// top horizontal line
			mem0[temp + 6*width + 2] = 8'd0;
			mem0[temp + 6*width + 3] = 8'd0;
			mem0[temp + 6*width + 4] = 8'd0;
			mem0[temp + 6*width + 5] = 8'd0;
			//mem0[temp + 6*width + 6] = 8'd246;
		end
	end
	
	always @ (posedge clk) begin
		// something to do with mem --> data
		data <= mem[count];
		vsync_in <= 1'b0;
		if(en) begin
			if( count <= 76801)
				count <= count + 1;
			if(count == 0 && vsync_in <= 1'b0) begin
				// Initialization
				vsync_in <= 1'b1;
				count <= 0;
			end
			if(corner_we) begin
				x_mem[iter] = x_coor;
				y_mem[iter] = y_coor;
				iter <= iter + 1;
			end
		end
	end

endmodule
