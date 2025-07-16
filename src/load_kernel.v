module load_kernel 
#
(
    parameter VAL = 71  //total values in weights file - 1 = out_channels*in_channels*kernel_size - 1 
)
(
    input clk,
    input rst,
    input [3:0] cout,
    input c_load,
    output reg signed [7:0] kernel0,
    output reg signed [7:0] kernel1,
    output reg signed [7:0] kernel2,
    output reg signed [7:0] kernel3,
    output reg signed [7:0] kernel4,
    output reg signed [7:0] kernel5,
    output reg signed [7:0] kernel6,
    output reg signed [7:0] kernel7,
    output reg signed [7:0] kernel8
);
    wire signed [7:0] k0, k1, k2, k3, k4, k5, k6, k7, k8;

    // Instantiate kernel memory
    kernel_mem #(.VAL(VAL)) 
    kmem (.addr(cout), .k0(k0), .k1(k1), .k2(k2), 
        .k3(k3), .k4(k4),.k5(k5), 
        .k6(k6), .k7(k7), .k8(k8));

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            kernel0 <= 8'sd0; kernel1 <= 8'sd0; kernel2 <= 8'sd0;
            kernel3 <= 8'sd0; kernel4 <= 8'sd0; kernel5 <= 8'sd0;
            kernel6 <= 8'sd0; kernel7 <= 8'sd0; kernel8 <= 8'sd0;
        end 
        else if (c_load)
        begin
            kernel0 <= k0; kernel1 <= k1; kernel2 <= k2;
            kernel3 <= k3; kernel4 <= k4; kernel5 <= k5;
            kernel6 <= k6; kernel7 <= k7; kernel8 <= k8;
        end
    end
endmodule
