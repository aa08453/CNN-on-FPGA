
`timescale 1ns / 1ps

module top_control_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg conv_done;
    reg cin_done;
    reg cout_done;
    reg is_single_input_channel;

    // Outputs
    wire cout;
    wire c_load;
    wire bias_init;
    wire cin;
    wire conv;
    wire relu;

    // Instantiate the DUT
    top_control dut (
        .clk(clk),
        .rst_n(rst_n),
        .conv_done(conv_done),
        .cin_done(cin_done),
        .cout_done(cout_done),
        .is_single_input_channel(is_single_input_channel),
        .cout(cout),
        .c_load(c_load),
        .bias_init(bias_init),
        .cin(cin),
        .conv(conv),
        .relu(relu)
    );

    // Clock generation
    always #10 clk = ~clk;

    // Simulation control
    initial begin
        $dumpfile("w_top_control.vcd");
        $dumpvars(0, top_control_tb);

        // Initialize signals
        clk = 0;
        rst_n = 0;
        conv_done = 0;
        cin_done = 0;
        cout_done = 0;
        is_single_input_channel = 0;

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
        cin_done = 1;
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
        $display("Time\tState\tcout\tc_load\tbias_init\tcin\tconv\trelu");
        $monitor("%0t\t%b\t%b\t%b\t%b\t\t%b\t%b\t%b",
                 $time, dut.state, cout, c_load, bias_init, cin, conv, relu);
    end

endmodule
