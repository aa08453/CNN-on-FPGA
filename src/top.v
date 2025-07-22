module top(
    input clk,
    input rst
    );
    
    wire [4:0] row, col, channelCount;
    ftCounter count (.clk(clk), .rst_n(rst), .signal(1'b1), .rowCount(row), .colCount(col), .channelCount(channelCount), .complete(done));
    
endmodule  