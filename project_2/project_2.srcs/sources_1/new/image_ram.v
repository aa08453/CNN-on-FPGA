`timescale 1ns / 1ps

module image_mem
(
    input wire clk,
    input wire rst,
    input wire load,
    input wire [9:0] addr1,
    input wire [9:0] addr2,
    output reg [7:0] data_out1,
    output reg [7:0] data_out2
);

    (* ram_style = "block" *)  reg signed [7:0] mem [0:783];

    initial 
    begin
         $readmemh("image.mem", mem);
//        $readmemh("test_image.mem" , mem);
    end

    always @(posedge clk) 
    if (!rst)
    begin
        data_out1 <= 0;
        data_out2 <= 0;
    end
    else if (load)
    begin
        data_out1 <= (addr1 == 10'd785) ? 0:mem[addr1];
        data_out2 <= (addr2 == 10'd785) ? 0:mem[addr2];
    end

endmodule
