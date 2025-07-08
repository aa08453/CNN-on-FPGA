
`timescale 1ns / 1ps

module comp_tb;

    // Inputs
    reg [7:0] image_data [0:8];
    reg [7:0] kernel_data [0:8];
    reg [1:0] select;
    reg clk;

    // Outputs
    wire [7:0] sum;

    // Instantiate the DUT
    comp dut (
        .image_data0(image_data[0]), .image_data1(image_data[1]), .image_data2(image_data[2]),
        .image_data3(image_data[3]), .image_data4(image_data[4]), .image_data5(image_data[5]),
        .image_data6(image_data[6]), .image_data7(image_data[7]), .image_data8(image_data[8]),
        .kernel_data0(kernel_data[0]), .kernel_data1(kernel_data[1]), .kernel_data2(kernel_data[2]),
        .kernel_data3(kernel_data[3]), .kernel_data4(kernel_data[4]), .kernel_data5(kernel_data[5]),
        .kernel_data6(kernel_data[6]), .kernel_data7(kernel_data[7]), .kernel_data8(kernel_data[8]),
        .select(select),
        .clk(clk),
        .sum(sum)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("w_comp.vcd");
        $dumpvars(0, comp_tb);
        $display("Starting comp test...");

        // Initialize image and kernel data
        image_data[0] = 8'd1;  kernel_data[0] = 8'd1;
        image_data[1] = 8'd2;  kernel_data[1] = 8'd2;
        image_data[2] = 8'd3;  kernel_data[2] = 8'd3;
        image_data[3] = 8'd4;  kernel_data[3] = 8'd4;
        image_data[4] = 8'd5;  kernel_data[4] = 8'd5;
        image_data[5] = 8'd6;  kernel_data[5] = 8'd6;
        image_data[6] = 8'd7;  kernel_data[6] = 8'd7;
        image_data[7] = 8'd8;  kernel_data[7] = 8'd8;
        image_data[8] = 8'd9;  kernel_data[8] = 8'd9;

        // Try all select values
        select = 2'b00; #10;
        $display("sel=%b -> sum=%d", select, sum);

        select = 2'b01; #10;
        $display("sel=%b -> sum=%d", select, sum);

        select = 2'b10; #10;
        $display("sel=%b -> sum=%d", select, sum);

        select = 2'b11; #10;
        $display("sel=%b -> sum=%d (Expected: 0)", select, sum);

        $display("Test completed.");
        $finish;
    end

endmodule
