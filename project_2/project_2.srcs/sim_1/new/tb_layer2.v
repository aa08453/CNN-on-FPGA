`timescale 1ns/1ps

module tb_layer2;

    reg clk;
    reg rst;

    // Clock generation
    initial clk = 0;
    always #10 clk = ~clk;

    // === Wires from layer1_mem to layer2 ===
    wire signed [7:0] data01, data02;
    wire signed [7:0] data11, data12;
    wire signed [7:0] data21, data22;
    wire signed [7:0] data31, data32;
    wire signed [7:0] data41, data42;
    wire signed [7:0] data51, data52;
    wire signed [7:0] data61, data62;
    wire signed [7:0] data71, data72;

    // === Image Memory signals
    wire signed [7:0] data1, data2;
    wire [9:0] addr1, addr2;

    // === layer1 outputs
    wire store_l1;
    wire [9:0] address_l1;
    wire signed [7:0] result_l1;
    wire signed [7:0] bias_l1;
    wire [3:0] out_c_l1;
    wire pool_l1;
    wire cout_done_l1;

    wire pool_done_l1, pool_done_l2;

    // === layer2 outputs
    wire store_l2;
    wire [7:0] result_l2;
    wire pool_l2;
    wire cout_done_l2;
    wire [6:0] address_l2;
    wire load0, load1, load2, load3, load4, load5, load6, load7;
    wire [9:0] addr1_l2, addr2_l2;
    wire [3:0] out_c_l2;
    wire signed [7:0] bias_l2;

    // === Instantiate image_mem ===
    image_mem mem_inst (
        .clk(clk),
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
        .store(store_l1),
        .address(address_l1),
        .result(result_l1),
        .bias(bias_l1),
        .pool(pool_l1),
        .pool_done(pool_done_l1),
        .cout_done(cout_done_l1),
        .data1(data1),
        .data2(data2),
        .addr1(addr1),
        .addr2(addr2),
        .out_c(out_c_l1)
    );

    // === Instantiate layer1_mem ===
    layer1_mem #(
        .CHANNEL_SIZE(783),
        .OC(7)
    ) mem_write_inst (
        .clk(clk),
        .rst(rst),
        .store(store_l1),
        .pool(pool_l1),
        .cout_done(cout_done_l1),
        .out_c(out_c_l1),
        .w_addr(address_l1),
        .bias(bias_l1),
        .value(result_l1),
        .pool_done(pool_done_l1),
        .load0(load0), .load1(load1), .load2(load2), .load3(load3),
        .load4(load4), .load5(load5), .load6(load6), .load7(load7),
        .addr1(addr1_l2),
        .addr2(addr2_l2),
        .data01(data01), .data02(data02),
        .data11(data11), .data12(data12),
        .data21(data21), .data22(data22),
        .data31(data31), .data32(data32),
        .data41(data41), .data42(data42),
        .data51(data51), .data52(data52),
        .data61(data61), .data62(data62),
        .data71(data71), .data72(data72)
    );

    // === Instantiate layer2 ===
    layer2 #(
        .H(14),
        .W(14),
        .OC(15),
        .IC(7),
        .ADDR_LEN(7)
    ) layer2_inst (
        .clk(clk),
        .rst(rst),
        .store(store_l2),
        .pool_done(1'b0),
        .pool(pool_l2),
        .load0(load0), .load1(load1), .load2(load2), .load3(load3),
        .load4(load4), .load5(load5), .load6(load6), .load7(load7),
        .address(address_l2),
        .result(result_l2),
        .bias(bias_l2),
        .cout_done(cout_done_l2),
        .data01(data01), .data02(data02),
        .data11(data11), .data12(data12),
        .data21(data21), .data22(data22),
        .data31(data31), .data32(data32),
        .data41(data41), .data42(data42),
        .data51(data51), .data52(data52),
        .data61(data61), .data62(data62),
        .data71(data71), .data72(data72),
        .addr1(addr1_l2),
        .addr2(addr2_l2),
        .out_c(out_c_l2)
    );

    // === Stimulus ===
    initial begin
        $display("Starting full testbench: layer1 -> layer1_mem -> layer2...");
        $dumpfile("w_layer2.vcd");
        $dumpvars(0, tb_layer2);

        rst = 0;
        #30;
        rst = 1;

        wait(cout_done_l1);
        $display("Layer1 computation complete.");

        wait(pool_done_l1);
        $display("Layer1 pooling done.");

        // Wait for final output
        wait(cout_done_l2);
        $display("Layer2 computation complete.");


        $finish;
    end

    // === Debug Monitor ===
    initial begin
        $display("Time\tstore\taddr\tres_l1\tbias_l1\tpool_l1\tcout_done_l1\tres_l2\tbias_l2\tstore_l2");
        $monitor("%t\t%b\t%h\t%d\t%d\t%b\t%b\t%d\t%d\t%b",
            $time,
            store_l1,
            address_l1,
            result_l1,
            bias_l1,
            pool_l1,
            cout_done_l1,
            result_l2,
            bias_l2,
            store_l2
        );
    end

endmodule
