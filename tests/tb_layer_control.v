
`timescale 1ns / 1ps

module layer_control_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg conv_done;
    reg pool_done;
    reg cout_done;

    // Outputs
    wire cout;
    wire c_load;
    wire pool;
    wire conv;
    wire tree;

    // Instantiate the DUT
    layer_control #(.IC(IC)) dut(
    .clk(clk), .rst_n(rst),  .cout(cout), .c_load(c_load), .pool(pool), 
    .conv(conv), .pool_done(pool_done), .tree(tree),
    .conv_done(conv_done), .cout_done(cout_done));

    // Clock generation
    always #10 clk = ~clk;

    // Simulation control
    initial begin
        $dumpfile("w_layer_control.vcd");
        $dumpvars(0, layer_control_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        conv_done = 0;
        cout_done = 0;

        // Reset the system
        #20;
        rst_n = 1;

        // Go through full flow for multi-input channel
        // COUNT_OUT → CHANNEL_LOAD → BIAS_STORE → COUNT_IN → CONV → ACTIVATE → COUNT_OUT...
        
        // Wait for COUNT_OUT and CHANNEL_LOAD
        // #60;

        // BIAS_STORE → COUNT_IN
        // #20;



        // // ACTIVATE expected after cin_done, then set cout_done to end output channel
        #20;
        conv_done = 0;  // keep conv active
        #60;
        conv_done = 1;
        pool_done = 1;
        cout_done = 1;
        // #60;
        // conv_done = 0;

        // COUNT_IN (cin signal asserted), wait and then assert cin_done
        // #20;
        
        // #20;
        // cin_done = 0;

        // #40;
        
        // #100;
        // cout_done = 0;



        // Test flow with is_single_input_channel = 1

        #100;

        // Finish simulation
        #100;
        $finish;
    end

    // Monitor signal outputs
    initial begin
        $display("Time\tState\tcout\tc_load\tpool\tconv\ttree");
        $monitor("%0t\t%b\t%b\t%b\t%b\t\t%b\t%b\t%b",
                 $time, dut.state, cout, c_load, pool, conv, tree);
    end

endmodule
