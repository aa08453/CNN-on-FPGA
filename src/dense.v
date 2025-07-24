module dense #(
parameter NC = 9,
parameter WEIGHT_ADDR_LEN=9,
parameter OC=15,
parameter MAX_COL = 12
)
(
    input clk,
    input rst,
    input start,
    input wire signed [7:0] dataOut [0:OC][0:1],
    output wire [4:0] row, col, channelCount,
    output reg donePending
    );
    
//    wire [4:0] row, col, channelCount;
//    wire done;
    reg dense;
    wire validData2;
    wire  signed [7:0] weights [0:NC][0:1];
    wire [WEIGHT_ADDR_LEN:0] weightAddr1, weightAddr2;
    wire signed [7:0] result [0:NC];
    reg prevDense;
    reg [4:0] prevChannelCount, prevCol, prevRow;
    reg done;
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            prevDense <= 0;
            prevChannelCount <= 0;
            prevCol <= 0;
            prevRow <= 0;
            done<=0;
            donePending <= 0;

            end
        else begin
            prevDense <= dense;
            prevChannelCount <= channelCount;
            prevCol <= col;
            prevRow <= row;
            
            if(prevCol == MAX_COL && prevChannelCount == OC && prevRow == MAX_COL) begin
            done <= 1;
            end
    
            if (done) begin
                donePending <= 1;
//                donePending <= 0; // reset pending after use
            end
                end
          if(start) dense <= 1;
    end
    
//    always @ (posedge clk) begin
    
//    if(prevCol == MAX_COL && prevChannelCount == OC && prevRow==MAX_COL) done <= 1;
//    end
    
    wire validInput = prevDense;

    
    ftCounter count (.clk(clk), .rst_n(rst), .signal(dense), .rowCount(row), .colCount(col), .channelCount(channelCount), .complete(done));
    
    assign weightAddr1 = channelCount*6'd49 + (row/2)*4'd7 + (col/2);
    assign weightAddr2 = weightAddr1 + 1; 
    weightMem loadWeights(.clk(clk), .rst(rst), .load(dense), .addr1(weightAddr1), .addr2(weightAddr2), .weights(weights));
    
     
    assign validData2 = (prevCol != MAX_COL);
    compD compute (.clk(clk), .rst(rst), .done(donePending), .validInput(validInput), .validData2(validData2), .channelCount(prevChannelCount), 
    .weights(weights), .data(dataOut), .result(result));
    
    
endmodule  