
module load_bias
#
(
    parameter OC = 7 //out_channels - 1       
    // need to add string argument to module for different weight files
) 
(
    input clk,
    input rst,
    input c_load,
    input [3:0] cout,
    output reg [7:0] bias
);

    (* ram_style = "distributed" *) reg [7:0] rom_data [0:OC];  // Enough space for 8 out channels

    initial 
    begin
        $readmemh("mem_files/conv1_bias.mem", rom_data);  
        // $readmemh("conv1_bias.mem", rom_data);  
    end

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
            bias <= 0;
        else if (c_load)
            bias <= rom_data[cout]; 
    end
endmodule



