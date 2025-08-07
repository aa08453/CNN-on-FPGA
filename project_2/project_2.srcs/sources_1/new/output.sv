`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:48:03 AM
// Design Name: 
// Module Name: output
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module max
#(
    parameter NC = 9
)
(
    input clk,
    input rst,
    input compute,
    input wire signed [7:0] outputs [0:NC],
    output reg [3:0] number,
    output reg done
    );
    wire num;
    reg signed [7:0] max1, max2, max3, max4, max5, max6, max7;
    reg [3:0] num1, num2, num3, num4, num5, num6, num7;
    
    
    reg [2:0] state;
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            done <= 0;
            state <= 0;
        end
        
        else if (compute)
        begin
        
        case (state)
        
           0: begin
                max1 <= (outputs[0] > outputs[1]) ? outputs[0] : outputs[1];
                max2 <= (outputs[2] > outputs[3]) ? outputs[2] : outputs[3];
                max3 <= (outputs[4] > outputs[5]) ? outputs[4] : outputs[5];
                max4 <= (outputs[6] > outputs[7]) ? outputs[6] : outputs[7];
                max5 <= (outputs[8] > outputs[9]) ? outputs[8] : outputs[9];
                num1 <= (outputs[0] > outputs[1]) ? 4'd0 : 4'd1;
                num2 <= (outputs[2] > outputs[3]) ? 4'd2 : 4'd3;
                num3 <= (outputs[4] > outputs[5]) ? 4'd4 : 4'd5;
                num4 <= (outputs[6] > outputs[7]) ? 4'd6 : 4'd7;
                num5 <= (outputs[8] > outputs[9]) ? 4'd8 : 4'd9;
                state <= 1;
           end
           
           1: begin
                max6 <= (max1 > max2) ? max1 : max2;
                max7 <= (max3 > max4) ? ((max3 > max5) ? max3 : max5) :  ((max4 > max5) ? max4 : max5);
                num6 <= (max1 > max2) ? num1 : num2;
                num7 <= (max3 > max4) ? ((max3 > max5) ? num3 : num5) : ((max4 > max5) ? num4 : num5);
                state <= 2;
           end
           
          2: begin
                number <= (max6 > max7) ? num6 : num7;
                state <= 2;
                done <= 1;
           end
           


        
           default: state <= 0;

        endcase
        end
    end
    
endmodule
