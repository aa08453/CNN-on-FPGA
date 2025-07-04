`timescale 1ns / 1ps

module control_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg conv_done;
    reg cin_done;
    reg cout_done;

    // Outputs
    wire addr, load, flush_acc, store, counter_enable;
    wire [1:0] mux_sel;
    wire acc_enable;
    wire relu, cin, cout, c_load, result_store, output_store;

    // Instantiate the Unit Under Test (UUT)
    control uut (
        .clk(clk),
        .rst_n(rst_n),
        .conv_done(conv_done),
        .cin_done(cin_done),
        .cout_done(cout_done),
        .addr(addr),
        .load(load),
        .flush_acc(flush_acc),
        .mux_sel(mux_sel),
        .acc_enable(acc_enable),
        .store(store),
        .counter_enable(counter_enable),
        .relu(relu),
        .cin(cin),
        .cout(cout),
        .c_load(c_load),
        .result_store(result_store),
        .output_store(output_store)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("w_control.vcd");
        $dumpvars(0, control_tb);

        // Initialize
        clk = 0;
        rst_n = 0;
        conv_done = 0;
        cin_done = 0;
        cout_done = 0;

        // Apply reset
        #12 rst_n = 1;

        // Wait a bit, FSM should go from COUNT_OUT → CHANNEL_LOAD → COUNT_IN
        #50;

        // Simulate one convolution done
        conv_done = 1; #10; conv_done = 0;

        // Simulate more convolutions (repeats ADDR→MAC→ACC→CHECK_DONE)
        repeat(2) begin
            #100;
            conv_done = 1; #10; conv_done = 0;
        end

        // Now signal that all input channels are done
        cin_done = 1; #20; cin_done = 0;

        // Go through ACTIVATE → OUTPUT
        #100;

        // Now simulate end of all output channels
        cout_done = 1; #20; cout_done = 0;

        #200;
        $finish;
    end

    // Display outputs
    initial begin
        $display("Time\tState\tLoad\tMuxSel\tAccEn\tFlush\tStore\tCEn\tRelu\tCin\tCout\tCLoad\tResStore\tOutStore");
        $monitor("%0t\t%b\t%b\t%02b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t\t%b",
            $time,
            uut.state,
            load, mux_sel, acc_enable, flush_acc,
            store, counter_enable, relu, cin, cout, c_load,
            result_store, output_store
        );
    end

endmodule
