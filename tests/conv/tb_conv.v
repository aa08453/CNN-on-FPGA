`timescale 1ns / 1ps

module conv_tb;

    parameter H = 28;
    parameter W = 28;

    // Clock and reset
    reg clk;
    reg rst;

    // Control signals
    reg conv;

    // Kernel
    reg signed [7:0] kernel [0:8];

    // Wires for DUT
    wire signed [7:0] result;
    wire [9:0] address;
    wire store, done;

    wire signed [7:0] data1, data2;
    wire [9:0] addr1, addr2;

    // Clock generation
    always #10 clk = ~clk;

    // Instantiate image memory
    image_mem mem_inst (
        .clk(clk), .rst(rst), .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .data_out1(data1),
        .data_out2(data2)
    );

    // Instantiate convolution module
    conv #(.H(H), .W(W)) dut (
        .clk(clk),
        .rst(rst),
        .conv(conv),
        .load(load),
        .kernel0(kernel[0]), .kernel1(kernel[1]), .kernel2(kernel[2]),
        .kernel3(kernel[3]), .kernel4(kernel[4]), .kernel5(kernel[5]),
        .kernel6(kernel[6]), .kernel7(kernel[7]), .kernel8(kernel[8]),
        .result(result),
        .address(address),
        .store(store),
        .done(done),
        .data1(data1),
        .data2(data2),
        .addr1(addr1),
        .addr2(addr2)
    );

    // Simulation sequence
    initial begin
        $display("Starting test...");
        $dumpfile("w_conv.vcd");
        $dumpvars(0, conv_tb);

        // Initialize signals
        clk = 0;
        rst = 0;
        conv = 1;

        // Initialize kernel (example: edge detection)
        kernel[0] = -1; kernel[1] = -1; kernel[2] = -1;
        kernel[3] =  0; kernel[4] =  0; kernel[5] =  0;
        kernel[6] =  1; kernel[7] =  1; kernel[8] =  1;

        // Reset pulse
        #20 rst = 1;

        // Start convolution
        // #10 conv = 1;
        // #10 conv = 0;

        // Wait for done
        wait(done);
        $finish;


        $display("Convolution complete.");
        $finish;
    end

    // Monitor stored outputs
    // Monitor outputs
    initial begin
        $display("addr\tresult\tflush_acc");
        $monitor("%d\t%h\t%b", address, result, dut.flush_acc);
    end

endmodule
