// Simple dual-port BRAM with pooling support
`timescale 1ns / 1ps

module mem 
#(
    parameter DEPTH = 783,
    parameter LOAD_ADDR_LEN = 9,
    parameter STORE_ADDR_LEN = 7, // 10 - 1
    parameter W = 28
)
(
    input wire clk,
    input wire store,
    input wire [STORE_ADDR_LEN:0] addr,
    input wire signed [7:0] din,

    input wire load,

    input wire [LOAD_ADDR_LEN:0] addr1, addr2,
    output reg signed [7:0] dout1, dout2
);

    (*ram_style = "block" *) reg signed [7:0] mem [0:DEPTH];

    always @(posedge clk) 
    begin
        if (store)
            mem[addr] <= din;
        
        if (load)
        begin
            dout1 <= (addr1 == 10'd785) ? 0 : mem[addr1];
            dout2 <= (addr2 == 10'd785) ? 0 : mem[addr2];
        end
    end
endmodule