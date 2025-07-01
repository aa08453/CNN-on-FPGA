
module kernel_mem 
(
    output wire [7:0] k_values [0:8]
);
    reg [7:0] rom_data [0:71];  // Enough space for 8 kernels of 3x3 = 72 values

    initial 
    begin
        $readmemh("mem_files/conv1_weight.mem", rom_data);  // Your file with all kernels
    end

    genvar i;
    generate
        for (i = 0; i < 9; i = i + 1) 
        begin : kernel_out
            assign k_values[i] = rom_data[i];  // Only use the first kernel
        end
    endgenerate
endmodule


// module kernel_mem 
// (
//     output wire [7:0] k_values [0:8]
// );

//     reg [7:0] rom_data [0:8];

//     initial begin
//         $readmemh("kernel.mem", rom_data);  // works with space-separated values
//     end

//     genvar i;
//     generate
//         for (i = 0; i < 9; i = i + 1) 
//         begin : gen_kernel_outputs
//             assign k_values[i] = rom_data[i];
//         end
//     endgenerate

// endmodule
// 
