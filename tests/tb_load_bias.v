
`timescale 1ns / 1ps

module load_bias_tb;

    // Parameters
    localparam OC = 8;  // 8 output channels (0 to 7)

    // Inputs
    reg clk;
    reg rst;
    reg c_load;
    reg [2:0] cout;  // 3-bit wide to address up to 8 locations

    // Output
    wire [7:0] bias;

    // Instantiate the Unit Under Test (UUT)
    load_bias #(
        .OC(OC-1)
    ) uut (
        .clk(clk),
        .rst(rst),
        .c_load(c_load),
        .cout(cout),
        .bias(bias)
    );

    // Clock generation
    always #5 clk = ~clk;  // 100 MHz clock

    // Stimulus
    initial begin
        // Initialize signals
        clk = 0;
        rst = 0;
        cout = 0;
        c_load = 0;

        // Apply reset
        #10 rst = 1;
        #5 c_load = 1;
        // Step through all output channels
        #10;
        repeat (OC) begin
            cout = cout + 1;
            #10;
        end

        // Finish simulation
        #20 $finish;
    end

    // Monitor output
    initial begin
        $dumpfile("w_load_bias.vcd");
        $dumpvars(0, load_bias_tb);

        $display("Time\tcout\tbias");
        $monitor("%0t\t%d\t0x%02x", $time, cout, bias);
    end

endmodule
