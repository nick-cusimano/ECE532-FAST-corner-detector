/**
* Open file.  Return file handle.
*/
function integer open_file(
    input string fname,
    input string mode
);
    integer fh;

    fh = $fopen(fname, mode);
    if (fh == 0) begin
        $display("Error: Failed to open file.\n");
        $display("Exiting Simulation.\n");
        $finish;
    end

    return fh;
endfunction

/**
* Copy input bitmap header to output bitmap.
*/
task write_bmp_head(
    input integer ifh,
    input integer ofh
);
    integer i, r;
    integer offset_to_data;

    reg [7:0] value0;
    reg [7:0] value1;
    reg [7:0] value2;
    reg [7:0] value3;
    reg [31:0] value_32;


    r = $fseek(ifh, 10, 0);
    offset_to_data = Utils#($bits(value_32))::read(ifh, "offset to data");

    // Copy from header from input file.
    //
    // Read 4 bytes and write a word because endianness and different sized
    // data types, and may only write with the granularity of one word.
    r = $fseek(ifh, 0, 0);
    for (i = 0; i < offset_to_data; i += 4) begin
        r = $fread(value0, ifh);
        r = $fread(value1, ifh);
        r = $fread(value2, ifh);
        r = $fread(value3, ifh);
        $fwrite(ofh, "%u", { value3, value2, value1, value0 });
    end

endtask

/**
* Read bitmap header.
*/
task read_bmp_head(
    input integer ifh,
    output integer width,
    output integer height,
    output integer size_of_data,
    output integer offset_to_data,
    output integer bytes_per_pixel,
    output integer padding
);
    integer bytes_per_row, bits_per_pixel;
    integer r;

    reg [31:0] value_32;
    reg [23:0] value_24;
    reg [15:0] value_16;
    reg [7:0] value_8;

    // Read bitmap header
    value_16       = Utils#($bits(value_16))::read(ifh, "signature");
    value_32       = Utils#($bits(value_32))::read(ifh, "size of file");
    value_32       = Utils#($bits(value_32))::read(ifh, "reserved");
    offset_to_data = Utils#($bits(value_32))::read(ifh, "offset to data");
    value_32       = Utils#($bits(value_32))::read(ifh, "size of header");
    width          = Utils#($bits(value_32))::read(ifh, "width");
    height         = Utils#($bits(value_32))::read(ifh, "height");
    value_16       = Utils#($bits(value_16))::read(ifh, "planes");
    bits_per_pixel = Utils#($bits(value_16))::read(ifh, "bits per pixel");
    value_32       = Utils#($bits(value_32))::read(ifh, "compression method");
    size_of_data   = Utils#($bits(value_32))::read(ifh, "size of data");
    value_32       = Utils#($bits(value_32))::read(ifh, "horizontal res");
    value_32       = Utils#($bits(value_32))::read(ifh, "vertical res");
    value_32       = Utils#($bits(value_32))::read(ifh, "no. colors");
    value_32       = Utils#($bits(value_32))::read(ifh, "no. important colors");

    // Bitmaps pad end of row to 4 bytes
    bytes_per_pixel = bits_per_pixel / 8;
    bytes_per_row = width * bytes_per_pixel;
    padding = (bytes_per_row % 4) ? 4 - (bytes_per_row % 4) : 0;

    $display("%20s %d", "bytes_per_pixel", bytes_per_pixel);
    $display("%20s %d", "bytes_per_row", bytes_per_row);
    $display("%20s %d", "padding", padding);

    // Seek to data. read pixel data.
    r = $fseek(ifh, offset_to_data, 0);
endtask

/**
* Read image data into memory.
*/
task read_bmp_data(
    input integer ifh,
    input integer bytes_per_row,
    input integer rows,
    input integer padding,
    output reg [`CHANNEL_SIZE - 1:0] mem[0:`MEM_SIZE],
	output reg [`CHANNEL_SIZE - 1:0] mem0[0:`MEM_SIZE]
);
    integer i, j, r;
    reg [7:0] pixel;

    for (i = 0; i < rows; i++) begin
        for (j = 0; j < bytes_per_row; j++) begin
            r = $fread(pixel, ifh);
            mem[i * bytes_per_row + j] = pixel;
			mem0[i * bytes_per_row + j] = pixel;
        end
        for (j = 0; j < padding; j++) begin
            r = $fgetc(ifh);
        end
    end

endtask

/*
* Write image data to file.
*/
task write_bmp_data(
    input integer ofh,
    input integer bytes_per_row,
    input integer rows,
    input integer padding,
    input reg [`CHANNEL_SIZE - 1:0] mem[0:`MEM_SIZE]
);
    integer i, j, idx;
    reg [31:0] value;

    // WARNING alignment issues with size of header.
    //
    // $fwrite may only write a word (4 bytes) at a time, but start of image
    // data is not word aligned.  At this time, it is not clear whether or not
    // a static offset will work for all images.
    for (i = 0; i < rows; i++) begin
        for (j = 0; j < bytes_per_row + padding; j += 4) begin
            idx = i * bytes_per_row + j + 5;
            value[31:24] = (j + 3 < bytes_per_row) ? mem[idx + 3] : 8'h0;
            value[23:16] = (j + 2 < bytes_per_row) ? mem[idx + 2] : 8'h0;
            value[15:8]  = (j + 1 < bytes_per_row) ? mem[idx + 1] : 8'h0;
            value[7:0]   = (j + 0 < bytes_per_row) ? mem[idx + 0] : 8'h0;
            $fwrite(ofh, "%u", value);
        end
    end

endtask
