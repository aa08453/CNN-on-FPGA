`timescale 1ns/1ps

module tb_layer1_mem;

    // Clock and reset
    reg clk;
    reg rst;
    parameter CHANNEL_SIZE1 = 783;
    parameter ADDR_LEN1 = 9;
    parameter H = 28;
    parameter W1 = 28;
    parameter OC1 = 7;
    parameter IC = 0;

    // Memory Interface
    wire signed [7:0] mem_data1, mem_data2;
    wire [ADDR_LEN1:0] mem_addr1, mem_addr2;

    // Layer1 outputs
    wire store1;
    wire [ADDR_LEN1:0] address1;
    wire signed [7:0] result1;
    wire signed [7:0] bias1;
    wire [3:0] out_c1;
    wire pool1;
    wire cout1_done;
    wire pool1_done;

    // Data out buses
    wire signed [7:0] data_out1 [0:IC][0:1];

    // Clock generation
    initial clk = 0;
    always #10 clk = ~clk;

    // Instantiate image memory
    image_mem mem_inst (
        .clk(clk),
        .rst(rst),
        .load(load1),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .data_out1(mem_data1),
        .data_out2(mem_data2)
    );

    assign data_out1[0][0] = mem_data1;
    assign data_out1[0][1] = mem_data2;

    // Instantiate Layer 1
    layer #(
        .H(H),
        .W(W1),
        .OC(OC1),
        .IC(IC),
        .LOAD_ADDR_LEN(ADDR_LEN1),
        .STORE_ADDR_LEN(ADDR_LEN1),
        .LOOP(W1 - 1)
    ) layer1_inst (
        .clk(clk),
        .rst(rst),
        .load(load1),
        .store(store1),
        .address(address1),
        .result(result1),
        .bias(bias1),
        .pool(pool1),
        .start(1'b0),
        .pool_done(pool1_done),
        .cout_done(cout1_done),
        .data_out(data_out1),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .out_c(out_c1)
    );

    // Instantiate layer1 memory
    layer_mem #(
        .CHANNEL_SIZE(CHANNEL_SIZE1),
        .OC(OC1),
        .LOAD_ADDR_LEN(ADDR_LEN1),
        .STORE_ADDR_LEN(ADDR_LEN1),
        .W(W1)
    ) layer1_mem_inst (
        .clk(clk),
        .rst(rst),
        .store(store1),
        .pool(pool1),
        .cout_done(cout1_done),
        .out_c(out_c1),
        .w_addr(address1),
        .bias(bias1),
        .value(result1),
        .load(1'b0),
        .addr1('0),
        .addr2('0),
        .data_out(),  // ignored in this test
        .pool_done(pool1_done)
    );

    // === Simulation and memory write logic ===
//    integer i;
    initial begin
        $display("Starting full layer1+layer1_mem testbench...");
        $dumpfile("w_layer1_mem.vcd");
        $dumpvars(0, tb_layer1_mem);

        rst = 0;
        #30;
        rst = 1;

        // Wait for convolution to complete and pooling to finish
        wait(cout1_done);
        $display("Convolution complete");
        
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch0.mem", tb_layer1_mem.layer1_mem_inst.brams[0].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch1.mem", tb_layer1_mem.layer1_mem_inst.brams[1].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch2.mem", tb_layer1_mem.layer1_mem_inst.brams[2].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch3.mem", tb_layer1_mem.layer1_mem_inst.brams[3].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch4.mem", tb_layer1_mem.layer1_mem_inst.brams[4].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch5.mem", tb_layer1_mem.layer1_mem_inst.brams[5].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch6.mem", tb_layer1_mem.layer1_mem_inst.brams[6].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch7.mem", tb_layer1_mem.layer1_mem_inst.brams[7].mem_inst.mem);
        

        wait(pool1_done);
        $display("Pooling complete. Writing memory to files...");
        
        $writememh("C:/Users/aa08453/verification/pool_1/pool0.mem", tb_layer1_mem.layer1_mem_inst.brams[0].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool1.mem", tb_layer1_mem.layer1_mem_inst.brams[1].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool2.mem", tb_layer1_mem.layer1_mem_inst.brams[2].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool3.mem", tb_layer1_mem.layer1_mem_inst.brams[3].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool4.mem", tb_layer1_mem.layer1_mem_inst.brams[4].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool5.mem", tb_layer1_mem.layer1_mem_inst.brams[5].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool6.mem", tb_layer1_mem.layer1_mem_inst.brams[6].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_1/pool7.mem", tb_layer1_mem.layer1_mem_inst.brams[7].mem_inst.mem);          


        // Dump all channel memories
//        for (i = 0; i <= OC1; i = i + 1) begin

//        end

        $finish;
    end

    // Debugging output
    initial begin
        $display("Address\tResult");
        $monitor("%d\t%h", address1, result1);
    end

endmodule
