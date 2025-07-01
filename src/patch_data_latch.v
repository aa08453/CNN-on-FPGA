
module patch_data_latch
(
    input wire clk,
    input wire rst,
    input wire load,
    input wire [9:0] pixel_addrs [0:8],
    output reg [7:0] pixels [0:8]
);

    wire [7:0] pixel_data [0:8];

    genvar idx;
    generate
        for (idx = 0; idx < 9; idx = idx + 1) 
        begin : mem
            image_mem mem_inst (.clk(clk), .addr(pixel_addrs[idx]), .data_out(pixel_data[idx]));
        end
    endgenerate

    integer x;
    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            for (x = 0; x < 9; x = x + 1)
                pixels[x] <= 8'd0;
        end
        else if (load) 
        begin
            for (x = 0; x < 9; x = x + 1)
                pixels[x] <= pixel_data[x]; // latch after delay
        end
    end
endmodule
