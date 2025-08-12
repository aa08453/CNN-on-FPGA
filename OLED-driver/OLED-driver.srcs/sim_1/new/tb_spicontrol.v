`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 03:23:18 PM
// Design Name: 
// Module Name: tb_spicontrol
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

`timescale 1ns / 1ps

module tb_spicontrol;

// Inputs
reg clock;
reg reset;
reg [7:0] data_in;
reg load_data;

// Outputs
wire done_send;
wire spi_clock;
wire spi_data;

// Instantiate the Unit Under Test (UUT)
spiControl uut (
    .clock(clock),
    .reset(reset),
    .data_in(data_in),
    .load_data(load_data),
    .done_send(done_send),
    .spi_clock(spi_clock),
    .spi_data(spi_data)
);

// Clock generation: 100 MHz -> 10 ns period
always #5 clock = ~clock;

// Test sequence
initial begin
    // Initialize inputs
    clock = 0;
    reset = 1;
    data_in = 8'b00000000;
    load_data = 0;

    // Hold reset for some time
    #20;
    reset = 0;

    // Wait a few cycles
    #50;

    // Load new data
    data_in = 8'b10101010;
    load_data = 1;

    // Wait long enough for SPI to send all bits
    #20;
    load_data = 0;

    // Wait until done_send is high
    wait(done_send == 1);
    $display("Data sent successfully at time %t", $time);

    // Wait for done_send to go low (as per DONE state)
    wait(done_send == 0);

    // Load another byte
    #30;
    data_in = 8'b11001100;
    load_data = 1;
    #20;
    load_data = 0;

    // Wait again for transmission
    wait(done_send == 1);
    $display("Second data sent successfully at time %t", $time);

    #100;
    $finish;
end

endmodule
