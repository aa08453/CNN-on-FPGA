// Simple dual-port BRAM with pooling support
module mem 
#(
    parameter DEPTH = 783,
    parameter ADDR_LEN = 9, // 10 - 1
    parameter W = 28
)
(
    input wire clk,
    input wire we,
    input wire [ADDR_LEN:0] addr,
    input wire signed [7:0] din,

    input wire pool,

    input wire [ADDR_LEN:0] addr1, addr2,
    output reg signed [7:0] dout1, dout2
);

    (*ram_style = "block" *) reg signed [7:0] mem [0:DEPTH];
    reg [ADDR_LEN:0] max;

    always @(posedge clk) 
    begin
        if (we)
            mem[addr] <= din;

        if (pool) 
        begin
            max = addr;
            if (mem[addr + 1] > mem[max])  max = addr + 1;
            if (mem[addr + W] > mem[max]) max = addr + W;
            if (mem[addr + W + 1] > mem[max]) max = addr + W + 1;
            mem[addr] <= (mem[max] > 0) ? mem[max] : 0;
        end

        dout1 <= mem[addr1];
        dout2 <= mem[addr2];
    end
endmodule