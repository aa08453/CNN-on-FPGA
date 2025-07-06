
`timescale 1ns / 1ps

module top_tb;

    // Parameters
    parameter CHANNEL_SIZE = 784;
    parameter H = 28;
    parameter W = 28;
    parameter OC = 7;
    parameter IC = 0;

    // Testbench signals
    reg clk;
    reg rst;

    // DUT instantiation
    top #(
        .CHANNEL_SIZE(CHANNEL_SIZE),
        .H(H),
        .W(W),
        .OC(OC),
        .IC(IC)
    ) dut (
        .clk(clk),
        .rst(rst)
    );

    // Clock generation (20ns period = 50MHz)
    always #10 clk = ~clk;

    initial begin
        $dumpfile("w_top.vcd");
        $dumpvars(0, top_tb);

        // Initialize inputs
        clk = 0;
        rst = 0;

        // Apply reset
        #50;
        rst = 1;

        // Wait and let internal FSM run
        #1500000;  // Adjust as needed for simulation to finish

        $display("Simulation finished.");
        $finish;
    end

    // Optional monitoring
    initial begin
        $display("Time\tconv\tconv_done\tcout_done\tresult\taddr");
        $monitor("%t\t%b\t%b\t%b\t%d\t%h", 
            $time, 
            dut.conv, 
            dut.conv_done, 
            dut.cout_done, 
            dut.result, 
            dut.addr);
    end

endmodule
