module patch_data_latch
(
    input wire clk,
    input wire rst,
    input wire load,
    
    input wire [9:0] pixel_addr0,
    input wire [9:0] pixel_addr1,
    input wire [9:0] pixel_addr2,
    input wire [9:0] pixel_addr3,
    input wire [9:0] pixel_addr4,
    input wire [9:0] pixel_addr5,
    input wire [9:0] pixel_addr6,
    input wire [9:0] pixel_addr7,
    input wire [9:0] pixel_addr8,

    output reg [7:0] pixel0,
    output reg [7:0] pixel1,
    output reg [7:0] pixel2,
    output reg [7:0] pixel3,
    output reg [7:0] pixel4,
    output reg [7:0] pixel5,
    output reg [7:0] pixel6,
    output reg [7:0] pixel7,
    output reg [7:0] pixel8
);

    wire [7:0] data0, data1, data2, data3, data4, data5, data6, data7, data8;

    image_mem mem0 (.clk(clk), .addr(pixel_addr0), .data_out(data0));
    image_mem mem1 (.clk(clk), .addr(pixel_addr1), .data_out(data1));
    image_mem mem2 (.clk(clk), .addr(pixel_addr2), .data_out(data2));
    image_mem mem3 (.clk(clk), .addr(pixel_addr3), .data_out(data3));
    image_mem mem4 (.clk(clk), .addr(pixel_addr4), .data_out(data4));
    image_mem mem5 (.clk(clk), .addr(pixel_addr5), .data_out(data5));
    image_mem mem6 (.clk(clk), .addr(pixel_addr6), .data_out(data6));
    image_mem mem7 (.clk(clk), .addr(pixel_addr7), .data_out(data7));
    image_mem mem8 (.clk(clk), .addr(pixel_addr8), .data_out(data8));

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            pixel0 <= 8'd0;
            pixel1 <= 8'd0;
            pixel2 <= 8'd0;
            pixel3 <= 8'd0;
            pixel4 <= 8'd0;
            pixel5 <= 8'd0;
            pixel6 <= 8'd0;
            pixel7 <= 8'd0;
            pixel8 <= 8'd0;
        end 
        else if (load) 
        begin
            pixel0 <= data0;
            pixel1 <= data1;
            pixel2 <= data2;
            pixel3 <= data3;
            pixel4 <= data4;
            pixel5 <= data5;
            pixel6 <= data6;
            pixel7 <= data7;
            pixel8 <= data8;
        end
    end

endmodule
