class Utils #(
    parameter WIDTH=32
);

    /**
    * Reverse endianess of input.
    */
    static function [WIDTH-1:0] reverseEndianness (
        input [WIDTH-1:0] data
    );

        case(WIDTH)
            32: begin
                reverseEndianness[31:24] = data[7:0];
                reverseEndianness[23:16] = data[15:8];
                reverseEndianness[15:8] = data[23:16];
                reverseEndianness[7:0] = data[31:24];
            end
            24: begin
                reverseEndianness[23:16] = data[7:0];
                reverseEndianness[15:8] = data[15:8];
                reverseEndianness[7:0] = data[23:16];
            end
            16: begin
                reverseEndianness[15:8] = data[7:0];
                reverseEndianness[7:0] = data[15:8];
            end
            default: begin
                reverseEndianness = data;
            end
        endcase

    endfunction

    /**
    * Read value from file and display it.  Return the value.
    */
    static function [WIDTH-1:0] read (
        input integer fh,   // input file handle
        input string s      // string describing value
    );
        integer r, position;

        position = $ftell(fh);
        r = $fread(read, fh);
        read = Utils#($bits(read))::reverseEndianness(read);

        $display("0x%x %20s 0x%h", position, s, read);
    endfunction
endclass
