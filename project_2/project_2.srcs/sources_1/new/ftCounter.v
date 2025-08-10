`timescale 1ns / 1ps

module ftCounter
#(
    parameter MAX_PIXELS = 194,
    parameter MAX_ROW = 12,       
    parameter MAX_COL = 12,      
    parameter MAX_CHANNEL = 15
)
(
    input wire clk,
    input wire rst_n,
    input wire signal,  

    output reg [4:0] rowCount,
    output reg [4:0] colCount,     
    output reg [4:0] channelCount             
);
reg complete;


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
        end else begin
            channelCount <= 0;

            if (colCount < MAX_COL) begin
                colCount <= colCount + 4;
            end else begin
                colCount <= 0;

                if (rowCount < MAX_ROW) begin
                    rowCount <= rowCount + 2;
                end else begin
                    rowCount <= 0;
                    complete <= 1; // All loops done
                end
            end
        end
    end 
//    else if (signal && complete) begin
//        rowCount <= 0;
//        colCount <= 0;
//        channelCount <= 0;
////        complete <= 0;
//    end
end

endmodule