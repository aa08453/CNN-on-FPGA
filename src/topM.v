module topM #(
parameter OC = 15
)(
    input clk,
    input rst
    );
    
    wire [4:0] row, col, channel;
    wire [7:0] addr1, addr2;
    
    wire signed [7:0] dataOut [0:OC][0:1];

    
    top dense(.clk(clk), .rst(rst), .row(row), .dense(1'b1),
    .col(col), .channelCount(channel), .dataOut(dataOut));
    
    assign addr1 = row*4'd14 + col;
    assign addr2 = addr1 + 2;

    imgMem img (.clk(clk), .rst(rst), .load(1'b1), .addr1(addr1), .addr2(addr2), .data_out(dataOut));
   

endmodule
