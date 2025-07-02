
`timescale 1ns / 1ps

module top_tb;

    // Parameters
    parameter H = 28;
    parameter W = 28;

    // Inputs
    reg clk;
    reg rst;
    // reg start;

    // Outputs
    wire [17:0] result;

    // Instantiate the DUT
    top #(.H(H), .W(W)) dut (
        .clk(clk),
        .rst(rst),
        // .start(start),
        .result(result)
    );

    // Clock generation
    always #20 clk = ~clk;

    // Stimulus
    initial 
    begin
        $dumpfile("w_top.vcd");
        $dumpvars(0, top_tb);
        // Initialize
        clk = 0;  
        rst = 0;
        // start = 0;

        // Wait a few cycles
        #50;

        // Deassert reset and start the process
        rst = 1;

        // #20
        // rst = 0;

        #50 
        rst = 1;
        // #50;
        // start = 1;
        // #50;
        // start = 0; // One pulse

        // Run simulation long enough to see processing
        #100000;

        $finish;
    end

    // Optional monitoring
    initial begin
        $display("Time\tclk\trst\tresult");
        $monitor("%g\t%b\t%b\t%b", $time, clk, rst, result);
    end

endmodule
