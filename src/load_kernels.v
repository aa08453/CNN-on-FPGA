// `define KERNEL_OUTPUTS(idx) \
//     output reg signed [7:0] kernel``idx``0, kernel``idx``1, kernel``idx``2, \
//                             kernel``idx``3, kernel``idx``4, kernel``idx``5, \
//                             kernel``idx``6, kernel``idx``7, kernel``idx``8



`define FILE "conv2_weight.mem"


module load_kernels
#(
    parameter VAL = 1151,      // Total number of weights
    parameter OC = 7           // Output channels
)
(
    input wire clk,
    input wire rst,
    input wire c_load,
    input wire [3:0] out_c,
    output reg signed [7:0] kernel [0:OC][0:8] // Internal register array
);

`include "functions.v"

(* rom_style = "distributed" *) reg signed [7:0] rom_data [0:VAL];
wire [10:0] base_addr;

assign base_addr = out_c * 8 * 9;  // Each output channel has 72 weights

integer oc, k;
always @(posedge clk or negedge rst) begin
    if (!rst) begin
        for (oc = 0; oc <= OC; oc = oc + 1)
            for (k = 0; k < 9; k = k + 1)
                kernel[oc][k] <= 0;
    end else if (c_load) begin
        for (oc = 0; oc <= OC; oc = oc + 1)
            for (k = 0; k < 9; k = k + 1)
                kernel[oc][k] <= rom_data[kernel_addr(k, oc, base_addr)];
    end
end

initial begin
    $readmemh(`FILE, rom_data);
end

endmodule
