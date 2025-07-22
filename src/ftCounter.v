module ftCounter
#(
    parameter MAX_PIXELS = 194,
    parameter MAX_ROW = 12,
    parameter MAX_COL = 13,
    parameter MAX_CHANNEL = 15
)
(
    input wire clk,
    input wire rst_n,
    input wire signal,  
    output reg [4:0] rowCount,
    output reg [4:0] colCount,     
    output reg [4:0] channelCount,  
    output reg complete            
);
// make nested loop of 3??

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rowCount <= 0;
        colCount <= 0;
        channelCount <= 0;
        complete <= 0;
    end
    else if (signal && !complete) begin
        if (channelCount < MAX_CHANNEL) begin
            channelCount <= channelCount + 1;
        end 
        else begin
            channelCount <= 0;
            if (rowCount < MAX_ROW)
                rowCount <= rowCount + 4;
            else begin
                rowCount = 0;
                if(colCount < MAX_COL)
                    colCount <= colCount + 2;
                else 
                complete <= 1;
            end
        end
    end
    else if (signal && complete) begin
//        count <= 0;
        channelCount <= 0;
        rowCount <= 0;
        colCount <= 0;
//        complete <= 0;
    end
end

endmodule
