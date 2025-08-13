`timescale 1ns / 1ps

module dense #(
parameter NC = 9,
parameter WEIGHT_ADDR_LEN=9,
parameter OC=15,
parameter MAX_COL = 12
)
(
    input clk,
    input rst,
    input dense,
    input wire signed [7:0] dataOut [0:OC][0:1],
    output wire [4:0] row, col,
    output reg done,
    output wire signed [7:0] result [0:NC]
    );
    
    wire [4:0]channelCount;
    
//    wire [4:0] row, col, channelCount;
//    wire done;
    wire validData2;
    wire  signed [7:0] weights [0:NC][0:1];
    wire [WEIGHT_ADDR_LEN:0] weightAddr1, weightAddr2;
    
    reg prevDense;
    reg signal;
    reg [4:0] prevChannelCount, prevCol, prevRow;
    
    
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            prevDense <= 0;
            prevChannelCount <= 0;
            prevCol <= 0;
            prevRow <= 0;
            done<=0;
            signal <= 0;

            end
        else begin
            signal <= dense;
            prevDense <= signal;
            prevChannelCount <= channelCount;
            prevCol <= col;
            prevRow <= row;
            
            if(prevCol == MAX_COL && prevChannelCount == OC && prevRow == MAX_COL) begin
            done <= 1;
            end
        end
    end
    
//    always @ (posedge clk) begin
    
//    if(prevCol == MAX_COL && prevChannelCount == OC && prevRow==MAX_COL) done <= 1;
//    end
    
    wire validInput = prevDense;

    
    ftCounter count (.clk(clk), .rst_n(rst), .signal(signal), .rowCount(row), .colCount(col), .channelCount(channelCount));
    
    assign weightAddr1 = channelCount*6'd49 + (row/2)*4'd7 + (col/2);
    assign weightAddr2 = weightAddr1 + 1; 
    weightMem loadWeights(.clk(clk), .rst(rst), .load(dense), .addr1(weightAddr1), .addr2(weightAddr2), .weights(weights));
    
     
    assign validData2 = (prevCol != MAX_COL);
    compD compute (.clk(clk), .rst(rst), .done(done), .validInput(validInput), .validData2(validData2),.col(prevCol), .row(prevRow), .channelCount(prevChannelCount), 
    .weights(weights), .data(dataOut), .result(result));
    
    
endmodule  