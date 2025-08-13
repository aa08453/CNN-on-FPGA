`timescale 1ns / 1ps

module weightMem #(
    parameter FILE = "weightCol0.mem",
    parameter NC = 9,
    parameter LOAD_ADDR_LENGTH=9
)(
   input wire clk,
   input wire rst,
   input wire load,
   input wire [9:0] addr1,
   input wire [9:0] addr2,
   output reg signed [7:0] weights [0:NC][0:1]

    );
    
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol0.mem")) 
    wmem0 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[0][0]), .dout2(weights[0][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol1.mem")) 
    wmem1 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[1][0]), .dout2(weights[1][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol2.mem")) 
    wmem2 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[2][0]), .dout2(weights[2][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol3.mem")) 
    wmem3 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[3][0]), .dout2(weights[3][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol4.mem")) 
    wmem4 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[4][0]), .dout2(weights[4][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol5.mem")) 
    wmem5 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[5][0]), .dout2(weights[5][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol6.mem")) 
    wmem6 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[6][0]), .dout2(weights[6][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol7.mem")) 
    wmem7 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[7][0]), .dout2(weights[7][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol8.mem")) 
    wmem8 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[8][0]), .dout2(weights[8][1]));
    
    memory # (.DEPTH(783), .LOAD_ADDR_LEN(LOAD_ADDR_LENGTH), .FILE("weightCol9.mem")) 
    wmem9 (.clk(clk), .rst(rst), .load(load), .addr1(addr1), .addr2(addr2), .dout1(weights[9][0]), .dout2(weights[9][1]));
    
//    integer i;
//    always @(*) begin
//        if(!validWeight2) begin
//        for(i=0; i<NC; i=i+1) begin
        
//            weights[i][1] <= 0;
//        end
//        end
//    end
    
    
    
    
    
    
    
     
endmodule
