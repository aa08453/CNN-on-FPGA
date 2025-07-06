`timescale 1ns / 1ps

module conv_tb;

    // Parameters
    parameter H = 28;
    parameter W = 28;

    // Inputs
    reg clk;
    reg rst;
    reg conv;

    // Kernel (dummy values for testing)
    reg [7:0] kernel0, kernel1, kernel2,
              kernel3, kernel4, kernel5,
              kernel6, kernel7, kernel8;

    // Outputs
    wire [31:0] result;
    wire [9:0] addr;

    // Instantiate DUT
    conv #(.H(H), .W(W)) dut (
        .clk(clk),
        .rst(rst),
        .conv(conv),

        .kernel0(kernel0), .kernel1(kernel1), .kernel2(kernel2),
        .kernel3(kernel3), .kernel4(kernel4), .kernel5(kernel5),
        .kernel6(kernel6), .kernel7(kernel7), .kernel8(kernel8),

        .result(result),
        .addr(addr)
    );

    // Clock generation: 25MHz
    always #20 clk = ~clk;

    // Stimulus
    initial begin
        $dumpfile("w_conv.vcd");
        $dumpvars(0, conv_tb);

        // Initial state
        clk = 0;
        rst = 0;
        conv = 0;

        kernel0 = 8'd1;  kernel1 = 8'd2;  kernel2 = 8'd1;
        kernel3 = 8'd0;  kernel4 = 8'd0;  kernel5 = 8'd0;
        kernel6 = -8'd1; kernel7 = -8'd2; kernel8 = -8'd1; // Simple Sobel kernel (Y-dir)

        // Apply reset
        #100;
        rst = 1;

        // Wait and then pulse `conv` to start
        #40;
        conv = 1;
        #40;
        conv = 0;

        // Run simulation for enough cycles to cover all patch iterations
        #1000000;
        $finish;
    end

    // Monitor outputs
    initial begin
        $display("Time\tclk\trst\tconv\taddr\tresult");
        $monitor("%g\t%b\t%b\t%b\t%h\t%d", $time, clk, rst, conv, addr, result);
    end

endmodule
