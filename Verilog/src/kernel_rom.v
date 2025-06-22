
module kernel_mem (
    input  wire [3:0] k_addr,
    output wire       k_pixel
);

    reg rom_data [0:8];

    initial begin
        rom_data[ 0] = 1; rom_data[ 1] = 0; rom_data[ 2] = 1; 
        rom_data[ 3] = 0; rom_data[ 4] = 1; rom_data[ 5] = 0; 
        rom_data[ 6] = 1; rom_data[ 7] = 0; rom_data[ 8] = 1;
    end

    assign k_pixel = rom_data[k_addr];

endmodule
