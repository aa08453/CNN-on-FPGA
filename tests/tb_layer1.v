`timescale 1ns/1ps

module tb_layer1;

    // Clock and reset
    reg clk;
    reg rst;

    // Memory interface
    wire signed [7:0] data1, data2;
    wire [9:0] addr1, addr2;

    // Outputs from layer1
    wire store;
    wire [9:0] address;
    wire signed [7:0] result;
    wire signed [7:0] bias;
    wire [3:0] out_c;
    wire pool;
    reg pool_done;
    wire cout_done;

    // Clock generation
    initial clk = 0;
    always #10 clk = ~clk;  // 100MHz clock

    // Instantiate image memory
    image_mem mem_inst (
        .clk(clk),
        .addr1(addr1),
        .addr2(addr2),
        .data_out1(data1),
        .data_out2(data2)
    );

    // Instantiate layer1
    layer1 #(
        .H(28),
        .W(28),
        .OC(7),
        .IC(0)
    ) dut (
        .clk(clk),
        .rst(rst),
        .store(store),
        .address(address),
        .result(result),
        .bias(bias),
        .pool(pool),
        .pool_done(pool_done),
        .cout_done(cout_done),
        .data1(data1),
        .data2(data2),
        .addr1(addr1),
        .addr2(addr2),
        .out_c(out_c)
    );

    // Stimulus
    initial begin
        $display("Starting testbench...");
        $dumpfile("w_layer1.vcd");
        $dumpvars(0, tb_layer1);

        rst = 0;
        #20;
        rst = 1;

        // Run simulation until cout_done
        
        // wait(cout_done);
        #5000000;


        $display("Layer1 finished convolution.");
        $finish;
    end

    // Monitor useful outputs
    initial begin
        $display("Time\tconv\tconv_done\tcout_done\tresult\taddress");
        $monitor("%t\t%b\t%b\t%b\t%d\t%h", 
            $time, 
            dut.conv, 
            dut.conv_done, 
            dut.cout_done, 
            dut.result, 
            dut.address);
    end

endmodule
