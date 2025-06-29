
`timescale 1ns / 1ps

module image_reg_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [7:0] a0, a1, a2;
    reg load_full_patch;

    // Outputs
    wire [7:0] image_reg0, image_reg1, image_reg2;
    wire [7:0] image_reg3, image_reg4, image_reg5;
    wire [7:0] image_reg6, image_reg7, image_reg8;

    wire [7:0] patch_pixels[0:8];
    
    // Instantiate the DUT
    image_reg dut (
        .clk(clk),
        .rst(rst),
        .load_full_patch(load_full_patch),  // From FSM or patch
        .pixels(patch_pixels),
        .a0(a0), .a1(a1), .a2(a2),
        .image_reg0(image_reg0), .image_reg1(image_reg1), .image_reg2(image_reg2),
        .image_reg3(image_reg3), .image_reg4(image_reg4), .image_reg5(image_reg5),
        .image_reg6(image_reg6), .image_reg7(image_reg7), .image_reg8(image_reg8)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Test logic
    initial begin
        $dumpfile("w_image_reg.vcd");
        $dumpvars(0, image_reg_tb);
        $display("Starting image_reg test...");

        rst = 1;
        a0 = 0; a1 = 0; a2 = 0;
        #10;

        rst = 0;
        a0 = 8'd1; a1 = 8'd2; a2 = 8'd3; #10;
        a0 = 8'd4; a1 = 8'd5; a2 = 8'd6; #10;
        a0 = 8'd7; a1 = 8'd8; a2 = 8'd9; #10;

        $display("Image Register:");
        $display("Row 0: %d %d %d", image_reg0, image_reg1, image_reg2);
        $display("Row 1: %d %d %d", image_reg3, image_reg4, image_reg5);
        $display("Row 2: %d %d %d", image_reg6, image_reg7, image_reg8);

        $display("Expected:");
        $display("Row 0: 4 5 6");
        $display("Row 1: 7 8 9");
        $display("Row 2: 0 0 0");

        #10;
        #10;
        #10;
        $finish;
    end

endmodule
