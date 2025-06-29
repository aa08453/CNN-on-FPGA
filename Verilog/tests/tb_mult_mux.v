`timescale 1ns / 1ps

module mult_mux_tb;

    // Testbench signals
    reg [1:0] sel;
    reg [7:0] a0, k0;
    reg [7:0] a1, k1;
    reg [7:0] a2, k2;
    wire [15:0] product;

    // Instantiate the design under test (DUT)
    mult_mux dut (
        .sel(sel),
        .a0(a0), .k0(k0),
        .a1(a1), .k1(k1),
        .a2(a2), .k2(k2),
        .product(product)
    );

    initial begin
        $dumpfile("w_mult_mux.vcd");
        $dumpvars(0, mult_mux_tb);
        // Set input values
        a0 = 8'd3;  k0 = 8'd4;   // 3*4 = 12
        a1 = 8'd5;  k1 = 8'd6;   // 5*6 = 30
        a2 = 8'd7;  k2 = 8'd8;   // 7*8 = 56

        // Test all select cases
        $display("Starting mult_mux test...");

        sel = 2'b00; #10;
        $display("sel=%b -> product=%d (Expected: 12)", sel, product);

        sel = 2'b01; #10;
        $display("sel=%b -> product=%d (Expected: 30)", sel, product);

        sel = 2'b10; #10;
        $display("sel=%b -> product=%d (Expected: 56)", sel, product);

        sel = 2'b11; #10;
        $display("sel=%b -> product=%d (Expected: 0)", sel, product);

        $display("Test completed.");
        $finish;
    end

endmodule
