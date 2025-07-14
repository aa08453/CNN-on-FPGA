`define KERNEL_OUTPUTS(idx) \
    output reg signed [7:0] kernel``idx``0, kernel``idx``1, kernel``idx``2, \
                            kernel``idx``3, kernel``idx``4, kernel``idx``5, \
                            kernel``idx``6, kernel``idx``7, kernel``idx``8

`define RESET_KERNELS(idx) \
    kernel``idx``0 <= 0; kernel``idx``1 <= 0; kernel``idx``2 <= 0; \
    kernel``idx``3 <= 0; kernel``idx``4 <= 0; kernel``idx``5 <= 0; \
    kernel``idx``6 <= 0; kernel``idx``7 <= 0; kernel``idx``8 <= 0

`define LOAD_KERNELS(idx) \
    kernel``idx``0 <= rom_data[addr + (``idx`` * 9) + 0]; \
    kernel``idx``1 <= rom_data[addr + (``idx`` * 9) + 1]; \
    kernel``idx``2 <= rom_data[addr + (``idx`` * 9) + 2]; \
    kernel``idx``3 <= rom_data[addr + (``idx`` * 9) + 3]; \
    kernel``idx``4 <= rom_data[addr + (``idx`` * 9) + 4]; \
    kernel``idx``5 <= rom_data[addr + (``idx`` * 9) + 5]; \
    kernel``idx``6 <= rom_data[addr + (``idx`` * 9) + 6]; \
    kernel``idx``7 <= rom_data[addr + (``idx`` * 9) + 7]; \
    kernel``idx``8 <= rom_data[addr + (``idx`` * 9) + 8]

`define FILE "mem_files/conv2_weight.mem"


module load_kernels
#(
    parameter VAL = 1151 // 16*8*9 - 1
)
(
    input clk,
    input rst,
    input c_load,
    input [3:0] out_c,

    `KERNEL_OUTPUTS(0), `KERNEL_OUTPUTS(1), `KERNEL_OUTPUTS(2), `KERNEL_OUTPUTS(3),
    `KERNEL_OUTPUTS(4), `KERNEL_OUTPUTS(5), `KERNEL_OUTPUTS(6), `KERNEL_OUTPUTS(7)
);

// ROM: total values = OC * IC * 9 = 16 * 8 * 9 = 1152
(* rom_style = "distributed" *) reg signed [7:0] rom_data [0:VAL];
wire [10:0] addr = out_c * 8 * 9;

initial 
begin
    $readmemh(`FILE, rom_data);
end

always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        `RESET_KERNELS(0); `RESET_KERNELS(1); `RESET_KERNELS(2); `RESET_KERNELS(3);
        `RESET_KERNELS(4); `RESET_KERNELS(5); `RESET_KERNELS(6); `RESET_KERNELS(7);
    end 
    else if (c_load) 
    begin
        `LOAD_KERNELS(0); `LOAD_KERNELS(1); `LOAD_KERNELS(2); `LOAD_KERNELS(3);
        `LOAD_KERNELS(4); `LOAD_KERNELS(5); `LOAD_KERNELS(6); `LOAD_KERNELS(7);
    end
end

endmodule
