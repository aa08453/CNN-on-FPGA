`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 03:06:36 PM
// Design Name: 
// Module Name: spi_control
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
module spi_control(
input  clock, //On-board Zynq clock (100 MHz)
input  reset,
input [7:0] data_in,
input  load_data, //Signal indicates new data for transmission
output reg done_send,//Signal indicates data has been sent over spi interface
output     spi_clock,//10MHz max
output reg spi_data
);

reg [2:0] counter=0;//counter for matching clockcycles
reg [2:0] dataCount; // counts till 8 such that each bit is extracted on every CC
reg [7:0] shiftReg; // shifts databits for next bit extraction 
reg [1:0] state;
reg clock_10; // 10MHZ clock
reg clock_enable;



assign spi_clock = (clock_enable == 1) ? clock_10 : 1'b1;

always @(posedge clock)
begin
    if(counter != 4)
        counter <= counter + 1;
    else
        counter <= 0;
end

initial
    clock_10 <= 0;

always @(posedge clock)
begin
    if(counter == 4)
        clock_10 <= ~clock_10;
end

localparam IDLE = 'd0,
           SEND = 'd1,
           DONE = 'd2;

always @(negedge clock_10)
begin
    if(reset)
    begin
        state <= IDLE;
        dataCount <= 0;
        done_send <= 1'b0;
        clock_enable <= 0;
        spi_data <= 1'b1;
    end
    else
    begin
        case(state)
            IDLE:begin
                if(load_data)
                begin
                    shiftReg <= data_in;
                    state <= SEND;
                     dataCount <= 0;
                end
            end
            SEND:begin
                spi_data <= shiftReg[7];
                shiftReg <= {shiftReg[6:0],1'b0};
                clock_enable <= 1;
                if(dataCount != 7) //sending next bits 
                    dataCount <= dataCount + 1;
                else
                begin // finished sending data
                    state <= DONE;
                end
            end
            DONE:begin
                clock_enable <= 0; 
                done_send <= 1'b1;
                if(!load_data)
                begin
                    done_send <= 1'b0;
                    state <= IDLE;
                end
            end
        endcase
    end
end

    
    
endmodule
