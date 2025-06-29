
`timescale 1ns / 1ps

module control_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg done;

    // Outputs
    wire load;
    wire [1:0] mux_sel;
    wire acc_enable;
    wire flush_acc;
    wire counter_enable;

    // Instantiate the Unit Under Test (UUT)
    control uut (
        .clk(clk),
        .rst_n(rst_n),
        .done(done),
        .load(load),
        .mux_sel(mux_sel),
        .acc_enable(acc_enable),
        .flush_acc(flush_acc),
        .counter_enable(counter_enable)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("w_control.vcd");
        $dumpvars(0, control_tb);
        // Initialize inputs
        clk = 0;
        rst_n = 0;
        done = 0;

        // Apply reset
        #12 rst_n = 1;

        // Let it run for some cycles
        #100;

        // Simulate 'done' signal to check transition
        done = 1;
        #30;
        done = 0;

        #100;

        $finish;
    end

    // Optional: monitor output signals
    initial begin
        $display("Time\tState\tLoad\tMuxSel\tAccEn\tFlush\tCounterEn\tDone");
        $monitor("%0t\t%b\t%b\t%02b\t%b\t%b\t%b\t\t%b", 
            $time, uut.state, load, mux_sel, acc_enable, flush_acc, counter_enable, done);
    end

endmodule
