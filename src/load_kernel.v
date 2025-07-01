module load_kernel 
(
    input clk,
    input rst,
    output reg [7:0] kernel0,
    output reg [7:0] kernel1,
    output reg [7:0] kernel2,
    output reg [7:0] kernel3,
    output reg [7:0] kernel4,
    output reg [7:0] kernel5,
    output reg [7:0] kernel6,
    output reg [7:0] kernel7,
    output reg [7:0] kernel8
);
    wire [7:0] k_values [0:8];

    // Instantiate kernel memory
    kernel_mem kmem (.k_values(k_values));

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            kernel0 <= 0; kernel1 <= 0; kernel2 <= 0;
            kernel3 <= 0; kernel4 <= 0; kernel5 <= 0;
            kernel6 <= 0; kernel7 <= 0; kernel8 <= 0;
        end 
        else 
        begin
            kernel0 <= k_values[0]; kernel1 <= k_values[1]; kernel2 <= k_values[2];
            kernel3 <= k_values[3]; kernel4 <= k_values[4]; kernel5 <= k_values[5];
            kernel6 <= k_values[6]; kernel7 <= k_values[7]; kernel8 <= k_values[8];
        end
    end
endmodule
