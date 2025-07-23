module memory
#(
    parameter DEPTH = 195,
    parameter LOAD_ADDR_LEN = 7,
    parameter FILE = "split_0.mem"
)
(
    input wire clk,
    input wire rst,
    input wire  load,
    input wire [LOAD_ADDR_LEN:0] addr1, addr2,
    output reg signed [7:0] dout1, dout2
    );
    
    (*ram_style = "block" *) reg signed [7:0] mem [0:DEPTH];
    initial begin
        $readmemh(FILE, mem);
    end
    
    always @(posedge clk) 
    begin
    if(!rst) begin
        dout1 <= 0;
        dout2 <= 0;
        end
    else if (load)
        begin
            dout1 <= mem[addr1];
            dout2 <= mem[addr2];
        end
    end
endmodule
