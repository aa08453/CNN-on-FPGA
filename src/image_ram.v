
module image_mem
(
    input wire clk,
    input wire rst,
    input wire [9:0] addr1,
    input wire [9:0] addr2,
    output reg [7:0] data_out1,
    output reg [7:0] data_out2
);

    (* ram_style = "block" *)  reg signed [7:0] mem [0:783];

    initial 
    begin
        $readmemh("mem_files/image.mem", mem);
    end

    always @(posedge clk) 
    if (!rst)
    begin
        data_out1 <= 0;
        data_out2 <= 0;
    end
    else 
    begin
        data_out1 <= mem[addr1];
        data_out2 <= mem[addr2];
    end

endmodule
