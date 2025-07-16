`define FILE_PATH "conv1_weight.mem"

module kernel_mem 
#(
    parameter VAL = 71
    // parameter string FILE = "mem_files/conv1_weight.mem"  // New parameter
)
(
    input wire [3:0] addr,
    output wire [7:0] k0, k1, k2, k3, k4, k5, k6, k7, k8
);
    (* rom_style = "distributed" *) reg [7:0] rom_data [0:VAL];

    initial 
    begin
        $readmemh(`FILE_PATH, rom_data);  // Now uses parameterized file
    end

    assign k0 = rom_data[addr * 9];
    assign k1 = rom_data[addr * 9 + 1];
    assign k2 = rom_data[addr * 9 + 2];
    assign k3 = rom_data[addr * 9 + 3];
    assign k4 = rom_data[addr * 9 + 4];
    assign k5 = rom_data[addr * 9 + 5];
    assign k6 = rom_data[addr * 9 + 6];
    assign k7 = rom_data[addr * 9 + 7];
    assign k8 = rom_data[addr * 9 + 8];

endmodule
