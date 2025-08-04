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
    conv #(.H(H), .W(W), .IC(0), .LOAD_ADDR_LEN(9), .STORE_ADDR_LEN(9), .LOOP(27)) dut (
        .clk(clk),
        .rst(rst),
        .conv(conv),
        .load(load),
        .kernel(kernel),
        .result(result),
        .address(address),
        .store(store),
        .done(done),
        .data1(data1),
        .data2(data2),
        .addr1(addr1),
        .addr2(addr2)
    );
    
    reg signed [7:0] result_mem [0:783]; 
    
    always @(posedge clk) begin
    if (store)
        result_mem[address] <= result;
end 

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

        kernel[0] = 8'sh03; kernel[1] = 8'shff; kernel[2] = 8'shfd;
        kernel[3] = 8'sh04; kernel[4] = 8'sh02; kernel[5] =  8'sh05;
        kernel[6] =  8'shff; kernel[7] =  8'sh03; kernel[8] =  8'sh02;

        // Reset pulse
        #20 rst = 1;

        // Start convolution
        // #10 conv = 1;
        // #10 conv = 0;

        // Wait for done
        wait(done);
        $writememh("conv_result.mem", result_mem);
$display("Convolution result saved to conv_result.mem");
//        $writememh("mem_ch0.mem", tb_layer1_mem.layer1_mem_inst.brams[0].mem_inst.mem);


        $display("Convolution complete.");
        $finish;
    end

    // Monitor stored outputs
    // Monitor outputs
    initial begin
        $display("addr\tresult");
        $monitor("%d\t%d", address, result);
    end

endmodule
