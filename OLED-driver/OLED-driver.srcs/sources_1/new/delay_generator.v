`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2025 11:55:00 AM
// Design Name: 
// Module Name: delay_generator
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


module delay_generator(
        input clock, 
        input delayEn,
        output reg delayDone
    );
    
    reg [17:0] counter;    

    always @(posedge clock)
    begin
        if(delayEn & counter!=200000)
            counter <= counter+1;
        else
            counter <= 0;
    end
    
    always @(posedge clock)
    begin
        if(delayEn & counter==200000)
            delayDone <= 1'b1;
        else
            delayDone <= 1'b0;
    end
    
endmodule
