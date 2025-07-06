
`timescale 1ns / 1ps

module result_registerFile_tb;

    // Parameters
    parameter CHANNEL_SIZE = 8;   // Use a smaller value for faster simulation
    parameter LAYER_SIZE = 63;

    // Inputs
    reg clk;
    reg rst;
    reg store;
    reg bias_init;
    reg relu;
    reg [3:0] out_c;
    reg [31:0] bias;
    reg [31:0] value;
    reg [9:0] addr;
    reg done;

    // Instantiate DUT
    result_registerFile #(
        .CHANNEL_SIZE(CHANNEL_SIZE),
        .LAYER_SIZE(LAYER_SIZE)
    ) dut (
        .clk(clk),
        .rst(rst),
        .store(store),
        .bias_init(bias_init),
        .relu(relu),
        .out_c(out_c),
        .bias(bias),
        .value(value),
        .addr(addr),
        .done(done)
    );

    // Clock generation
    always #10 clk = ~clk;

    initial begin
        $dumpfile("result_registerFile_tb.vcd");
        $dumpvars(0, result_registerFile_tb);

        // Initialize inputs
        clk = 0;
        rst = 0;
        store = 0;
        bias_init = 0;
        relu = 0;
        out_c = 0;
        bias = 0;
        value = 0;
        addr = 0;
        done = 0;

        // Reset
        #20;
        rst = 1;

        // Apply bias_init for out_c = 1
        #20;
        out_c = 1;
        bias = 32'd5;
        bias_init = 1;
        #20;
        bias_init = 0;

        // Store a value at specific address
        #20;
        addr = 4;
        value = 32'd10;
        store = 1;
        #20;
        store = 0;

        // Store a negative value to test ReLU
        #20;
        addr = 5;
        value = -32;
        store = 1;
        #20;
        store = 0;

        // Apply ReLU to all out_c = 1 values
        #20;
        relu = 1;
        #20;
        relu = 0;

        // Finish and dump memory to file
        #20;
        done = 1;
        #20;
        done = 0;

        #20;
        $finish;
    end

    // Optional monitoring
    initial begin
        $display("Time\tclk\trst\tstore\tbias_init\trelu\tdone\taddr\tvalue\tbias\tout_c");
        $monitor("%t\t%b\t%b\t%b\t%b\t\t%b\t%b\t%0d\t%0d\t%0d\t%0d",
            $time, clk, rst, store, bias_init, relu, done, addr, value, bias, out_c);
    end

endmodule
