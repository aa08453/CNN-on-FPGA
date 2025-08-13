`timescale 1ns / 1ps

module image_mem
(
    input wire clk,
    input wire rst,
    input wire load,
    input wire store,
    input wire [7:0] inputData,
    input wire [9:0] addr1,
    input wire [9:0] addr2,
    output  reg signed [7:0] data_out1,
    output  reg signed [7:0] data_out2,
    output reg init
//    output reg [7:0] data
);

    (* ram_style = "block" *)  reg signed [7:0] mem [0:783];
    reg [9:0] writeCount;

//    initial 
//    begin
//         $readmemh("image.mem", mem);
////        $readmemh("test_image.mem" , mem);
//    end
//    always @(posedge clk)
//        data <= writeCount;
    

    always @(posedge clk) 
    if (rst)
    begin
        data_out1 <= 0;
        data_out2 <= 0;
        init <= 0;
        writeCount <= 0;
    end    
    else if (load)
    begin
        data_out1 <= (addr1 == 10'd785) ? 0:mem[addr1];
        data_out2 <= (addr2 == 10'd785) ? 0:mem[addr2];
    end
    else if (writeCount == 10'd50)
        init <= 1;
        
        
    else if(store && writeCount < 10'd784) begin
        mem[writeCount] <= inputData;
        writeCount <= writeCount + 1;
    end
   



endmodule
