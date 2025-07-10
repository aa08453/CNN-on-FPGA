
module kernel_mem 
(
    // output wire [7:0] kernel0,
    // output wire [7:0] kernel1,
    // output wire [7:0] kernel2,
    // output wire [7:0] kernel3,
    // output wire [7:0] kernel4,
    // output wire [7:0] kernel5,
    // output wire [7:0] kernel6,
    // output wire [7:0] kernel7,
    // output wire [7:0] kernel8,
    output wire [7:0] k_values [0:8]
);
    reg [7:0] rom_data [0:71];  // Enough space for 8 kernels of 3x3 = 72 values

    initial 
    begin
        $readmemh("conv1_weight.mem", rom_data);  // Your file with all kernels
    end

    genvar i;
    generate
        for (i = 0; i < 9; i = i + 1) 
        begin : kernel_out
            assign k_values[i] = rom_data[i];  // Only use the first kernel
        end
    endgenerate

    // assign kernel0  = rom_data[0];
    // assign kernel1  = rom_data[1];        
    // assign kernel2  = rom_data[2];
    // assign kernel3  = rom_data[3];
    // assign kernel4  = rom_data[4];
    // assign kernel5  = rom_data[5];
    // assign kernel6  = rom_data[6];
    // assign kernel7  = rom_data[7];













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
