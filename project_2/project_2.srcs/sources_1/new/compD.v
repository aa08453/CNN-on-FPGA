`timescale 1ns / 1ps

module compD #(
parameter NC = 9,
parameter OC=15,
parameter FILE = "fc1_bias.mem"
)(
    input clk,
    input rst,
    input validInput,
    input done,
    input validData2,
    input [4:0] row, col,
    input [4:0] channelCount,
    input signed [7:0] weights [0:NC] [0:1],
    input wire signed [7:0] data [0:OC][0:1],
    output reg signed [7:0] result [0:NC]
//    output reg done
    );
    
   reg signed [7:0] bias [0:NC];

    initial begin
        $readmemh(FILE, bias);
    end

 integer i;
    reg signed [15:0] prod0, prod1;
    reg signed [7:0] accum;

    always @(posedge clk) begin
        if (!rst) begin
            for (i = 0; i <= NC; i = i + 1) begin
                result[i] <= 0;
            end
//            done <= 0;
        end
        else if (validInput && !done) begin
            for (i = 0; i <= NC; i = i + 1) begin
                prod0 = data[channelCount][0] * weights[i][0];
                prod1 = validData2 ? data[channelCount][1] * weights[i][1] : 0;
                accum = (prod0 >>> 3) + (prod1 >>> 3); 
                if(row==0 && col==0 && channelCount==0) result[i] <= result[i] + accum + bias[i]; // add bias only initially
                else result[i] <= result[i] + accum;
              
            end
//            if (channelCount == OC)
//            done <= 1;
//            else
//            done <= 0;
        end
    end

//always @(posedge clk) begin
//    if(!rst) begin
//    for(i=0; i<=NC; i=i+1) begin
//        result[i] <= 0;
//        end
//    end
//    else begin
//    for(i=0; i<=NC; i=i+1) begin
//        result[i] <= result[i]+(data[channelCount][0] * weights[i][0]);;
//        end
//    end

//end
endmodule
