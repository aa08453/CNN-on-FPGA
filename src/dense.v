module dense #(
parameter NC = 9,
parameter WEIGHT_ADDR_LEN=10,
parameter OC=15,
parameter MAX_COL = 12
)
(
    input clk,
    input rst,
    input dense,
    input wire signed [7:0] dataOut [0:OC][0:1],
    output wire [4:0] row, col, channelCount
    );
    
//    wire [4:0] row, col, channelCount;
    wire done;
    wire validData2;
    wire  signed [7:0] weights [0:NC][0:1];
    wire [WEIGHT_ADDR_LEN:0] weightAddr1, weightAddr2;
    wire signed [7:0] result [0:NC];
    reg prevDense;
    reg [4:0] prevChannelCount;
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            prevDense <= 0;
            prevChannelCount <= 0;
            end
        else begin
            prevDense <= dense;
            prevChannelCount <= channelCount;
            end
    end
    
    wire validInput = prevDense;

    
    ftCounter count (.clk(clk), .rst_n(rst), .signal(dense), .rowCount(row), .colCount(col), .channelCount(channelCount), .complete(done));
    
    assign weightAddr1 = channelCount*6'd49 + (row/2)*4'd7 + (col/2);
    assign weightAddr2 = weightAddr1 + 1; 
    weightMem loadWeights(.clk(clk), .rst(rst), .load(dense), .validWeight2(validData2), .addr1(weightAddr1), .addr2(weightAddr2), .weights(weights));
    
     
    assign validData2 = (col != MAX_COL);
    compD compute (.clk(clk), .rst(rst), .validInput(validInput), .validData2(validData2), .channelCount(prevChannelCount), 
    .weights(weights), .data(dataOut), .result(result));
    
endmodule  