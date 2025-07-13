module load_bias 
#(
    parameter OC = 7,                                // out_channels - 1
    parameter string BIAS_FILE = "mem_files/conv1_bias.mem"  // default memory file
) 
(
    input clk,
    input rst,
    input c_load,
    input [3:0] out_c,
    output reg signed [7:0] bias
);

    (* ram_style = "distributed" *) reg signed [7:0] rom_data [0:OC];

    initial 
    begin
        $readmemh(BIAS_FILE, rom_data);
    end

    always @(posedge clk or negedge rst) begin
        if (!rst)
            bias <= 8'sd0;
        else if (c_load)
            bias <= rom_data[out_c];
    end

endmodule
