
`timescale 1ns / 1ps

module products_reg_tb;

    // Inputs
    reg clk;
    reg rst;
    reg load;
    reg [15:0] sum;

    // Output
    wire [15:0] result;

    // Instantiate the DUT
    products_reg dut (
        .clk(clk),
        .sum(sum),
        .result(result),
        .rst(rst),
        .load(load)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz clock (10ns period)

    initial begin
        $dumpfile("w_products_reg.vcd");
        $dumpvars(0, products_reg_tb);
        $display("Starting products_reg test...");

        // Initial state
        rst = 1;
        load = 0;
        sum = 0;

        #10;
        rst = 0; // Release reset

        // First value, load = 1
        sum = 16'd10;
        load = 1; #10;

        $display("After 1st load: result = %d", result); // Expected: 0

        // Second value
        sum = 16'd20;
        #10;
        $display("After 2nd load: result = %d", result); // Expected: 10

        // Third value
        sum = 16'd30;
        #10;
        $display("After 3rd load: result = %d", result); // Expected: 10+20 = 30

        // Fourth value
        sum = 16'd40;
        #10;
        $display("After 4th load: result = %d", result); // Expected: 10+20+30 = 60

        // Deassert load
        load = 0;
        sum = 16'd100;
        #10;
        $display("Load=0: result should remain the same -> %d", result); // Still 60

        // Assert reset
        rst = 1; #10;
        rst = 0; #10;
        $display("After reset: result = %d (Expected: 0)", result);

        $display("Test completed.");
        $finish;
    end

endmodule
