module image_mem(
    input  wire [4:0] i_addr,
    output wire       i_pixel
);

    reg rom_data [0:24];

    initial begin
        rom_data[ 0] = 1; rom_data[ 1] = 0; rom_data[ 2] = 1; rom_data[ 3] = 0; rom_data[ 4] = 1;
        rom_data[ 5] = 0; rom_data[ 6] = 1; rom_data[ 7] = 0; rom_data[ 8] = 1; rom_data[ 9] = 0;
        rom_data[10] = 1; rom_data[11] = 0; rom_data[12] = 1; rom_data[13] = 0; rom_data[14] = 1;
        rom_data[15] = 0; rom_data[16] = 1; rom_data[17] = 0; rom_data[18] = 1; rom_data[19] = 0;
        rom_data[20] = 1; rom_data[21] = 0; rom_data[22] = 1; rom_data[23] = 0; rom_data[24] = 1;
    end

    assign i_pixel = rom_data[i_addr];

endmodule
