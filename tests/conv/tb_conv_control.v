`timescale 1ns / 1ps

module conv_control_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg conv;
    reg done;

    // Outputs
    wire addr;
    wire load;
    wire [1:0] mux_sel;
    wire acc_enable;
    wire counter_enable;
    wire store;

    // Instantiate the DUT
    conv_control dut (
        .clk(clk),
        .rst_n(rst_n),
        .conv(conv),
        .done(done),
        .addr(addr),
        .load(load),
        .mux_sel(mux_sel),
        .acc_enable(acc_enable),
        .counter_enable(counter_enable),
        .store(store)
    );

    // Clock generation: 50MHz
    always #10 clk = ~clk;

    initial begin
        $dumpfile("w_conv_control.vcd");
        $dumpvars(0, conv_control_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        conv = 0;
        done = 0;

        // Apply reset
        #25;
        rst_n = 1;

        // Start convolution
        #15;
        conv = 1; // trigger FSM
        #20;
        conv = 0; // make it a pulse

        // Let the FSM cycle through its states for one convolution operation
        #200;

        // Simulate done signal (e.g., after a few convolution iterations)
        done = 1;
        #300;
        done = 0;

        // Trigger another convolution sequence
        #60;
        conv = 1;
        #20;
        conv = 0;

        #200;

        $finish;
    end

    // Monitor FSM outputs
    initial begin
        $display("Time\tclk\trst_n\tconv\tdone\taddr\tload\tmux_sel\tacc_en\tstore\tcnt_en");
        $monitor("%t\t%b\t%b\t%b\t%b\t%b\t%b\t%02b\t%b\t%b\t%b", 
            $time, clk, rst_n, conv, done, 
            addr, load, mux_sel, acc_enable, store, counter_enable);
    end

endmodule
