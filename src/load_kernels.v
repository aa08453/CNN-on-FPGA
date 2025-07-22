`timescale 1ns / 1ps

`define KERNEL1 "conv1_weight.mem"
`define KERNEL2 "conv2_weight.mem"


module load_kernels
#(
    parameter VAL = 1151,      // Total number of weights
    parameter IC = 0
)
(
    input wire clk,
    input wire rst,
    input wire c_load,
    input wire [3:0] out_c,
    output reg c_load_done,
    output reg signed [7:0] kernel [0:IC][0:8] // Internal register array
);

(* rom_style = "distributed" *) reg signed [7:0] rom_data [0:VAL];
wire [10:0] base_addr;

assign base_addr = out_c * (IC+1) * 9;  // Each output channel has 72 weights

integer ic, k;
always @(posedge clk or negedge rst) 
begin
    if (!rst) 
    begin
        for (ic = 0; ic <= IC; ic = ic + 1)
            for (k = 0; k < 9; k = k + 1)
                kernel[ic][k] <= 0;
        
        c_load_done <= 0;
    end 
    if (c_load && !c_load_done) 
    begin
        for (ic = 0; ic <= IC; ic = ic + 1)
            for (k = 0; k < 9; k = k + 1)
                kernel[ic][k] <= rom_data[base_addr +(IC+1)*k];
                
        c_load_done <= 1;
    end
    
    if (!c_load && c_load_done)
        c_load_done <= 0;
end

generate
    if (IC == 0) 
    begin : load_conv1
        initial $readmemh(`KERNEL1, rom_data);
    end 
    else 
    begin : load_conv2
        initial $readmemh(`KERNEL2, rom_data);
    end
endgenerate

endmodule
