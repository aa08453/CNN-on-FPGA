

`timescale 1ns / 1ps

module out_counter_tb;

    // Inputs
    reg clk;
    reg rst_n;
    reg cout;

    // Outputs
    wire [5:0] out;
    wire complete;

    // Instantiate the Unit Under Test (UUT)
    out_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .cout(cout),
        .out(out),
        .complete(complete)
    );

    // Generate clock (100 MHz)
    always #5 clk = ~clk;

    initial begin
        // Initialize inputs
        clk = 0;
        rst_n = 0;
        cout = 0;

        // Dump waveform
        $dumpfile("w_out_counter.vcd");
        $dumpvars(0, out_counter_tb);

        // Display changes
        $display("Time\tcout\tout\tcomplete");
        $monitor("%0t\t%b\t%d\t%b", $time, cout, out, complete);

        // Apply reset
        #10 rst_n = 1;

        // Start toggling cout for 10 cycles
        repeat (10) begin
            #5 cout = 1;   // trigger count
            // #10 cout = 0;  // hold low to simulate pulsed input
        end
        #10

        // Wait a bit and finish
        #20 $finish;
    end

endmodule
