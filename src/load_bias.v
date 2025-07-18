`define FILE1 "conv1_bias.mem"
`define FILE2 "conv2_bias.mem"

module load_bias 
#(
    parameter OC = 7                                // out_channels - 1
) 
(
    input clk,
    input rst,
    input c_load,
    input [3:0] out_c,
    output reg signed [7:0] bias
);

    reg signed [7:0] rom_data [0:OC];

    generate
        if (OC == 7) 
        begin : load_conv1
            initial $readmemh(`FILE1, rom_data);
        end 
        else 
        begin : load_conv2
            initial $readmemh(`FILE2, rom_data);
        end
    endgenerate

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
            bias <= 8'sd0;
        else if (c_load)
            bias <= rom_data[out_c];
    end

endmodule
