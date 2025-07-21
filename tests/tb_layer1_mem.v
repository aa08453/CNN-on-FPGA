
`timescale 1ns/1ps

module tb_layer1_mem;

    // Clock and reset
    reg clk;
    reg rst;

    // === Image Memory Signals ===
    wire signed [7:0] data1, data2;
    wire [9:0] addr1, addr2;

    // === Layer1 Outputs ===
    wire store;
    wire [9:0] address;
    wire signed [7:0] result;
    wire signed [7:0] bias;
    wire [3:0] out_c;
    wire pool;
    wire cout_done;

    // === Pool done signal from layer1_mem ===
    wire pool_done;

    // === Dummy wires for layer1_mem output (not used in this test) ===
    wire signed [7:0] data01, data02;
    wire signed [7:0] data11, data12;
    wire signed [7:0] data21, data22;
    wire signed [7:0] data31, data32;
    wire signed [7:0] data41, data42;
    wire signed [7:0] data51, data52;
    wire signed [7:0] data61, data62;
    wire signed [7:0] data71, data72;

    // Clock generation
    initial clk = 0;
    always #10 clk = ~clk;  // 100MHz clock

    // === Instantiate image_mem ===
    image_mem mem_inst (
        .clk(clk), .rst(rst), .load(load),
        .addr1(addr1),
        .addr2(addr2),
        .data_out1(data1),
        .data_out2(data2)
    );

    // === Instantiate layer1 ===
    layer1 #(
        .H(28),
        .W(28),
        .OC(7),
        .IC(0)
    ) conv_inst (
        .clk(clk),
        .rst(rst),
        .store(store),
        .address(address),
        .result(result),
        .bias(bias),
        .load(load),
        .pool(pool),
        .pool_done(pool_done),
        .cout_done(cout_done),
        .data1(data1),
        .data2(data2),
        .addr1(addr1),
        .addr2(addr2),
        .out_c(out_c)
    );

    // === Instantiate layer1_mem ===
    layer_mem #(
        .CHANNEL_SIZE(783),
        .OC(7)
    ) mem_write_inst (
        .clk(clk),
        .rst(rst),
        .store(store),
        .pool(pool),
        .cout_done(cout_done),
        .out_c(out_c), // You may need to expose this in layer1
        .w_addr(address),
        .bias(bias),
        .value(result),
        .pool_done(pool_done),
        .load0(1'b0), .load1(1'b0),.load2(1'b0),.load3(1'b0),.load4(1'b0), 
        .load5(1'b0), .load6(1'b0), .load7(1'b0),            // No load test in this bench
        .addr1(10'd0),
        .addr2(10'd0),
        .data01(data01), .data02(data02),
        .data11(data11), .data12(data12),
        .data21(data21), .data22(data22),
        .data31(data31), .data32(data32),
        .data41(data41), .data42(data42),
        .data51(data51), .data52(data52),
        .data61(data61), .data62(data62),
        .data71(data71), .data72(data72)
    );

    // === Stimulus ===
    initial begin
        $display("Starting full layer1+layer1_mem testbench...");
        $dumpfile("w_layer1_mem.vcd");
        $dumpvars(0, tb_layer1_mem);

        rst = 0;
        #30;
        rst = 1;

        // Wait for convolution to complete and memory pooling to finish
        wait(cout_done);
        $display("Convolution complete");
        // wait(pool_done);
        // $display("Pooling complete. Verifying memory contents...");

        // Wait a few cycles for memory write
        #100;

        $finish;
    end

    // === Debug monitor ===
    initial begin
        $display("address\tresult");
        $monitor("%d\t%h",
            address,
            result
        );
    end

endmodule
