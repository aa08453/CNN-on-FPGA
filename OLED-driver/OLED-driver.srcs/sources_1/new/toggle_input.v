`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 01:31:46 PM
// Design Name: 
// Module Name: toggle_input
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


module toggle_input(
    input clk, 
    input reset,              // 100 MHz clock from ZedBoard
    input [3:0] cnn_output,          // 4 switches on the ZedBoard
    output oled_spi_clk,
    output oled_spi_data,
    output oled_vdd,
    output oled_vbat,
    output oled_reset_n,
    output oled_dc_n
    );
    
    

    // Instantiate the top module
    top uut (
    .clock(clk), // 100MHz onboard clock
    .reset(reset),
    .cnn_output(cnn_output),
    // OLED interface
    .oled_spi_clk(oled_spi_clk),
    .oled_spi_data(oled_spi_data),
    .oled_vdd(oled_vdd),
    .oled_vbat(oled_vbat),
    .oled_reset_n(oled_reset_n),
    .oled_dc_n(oled_dc_n)
    );

endmodule
