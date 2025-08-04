`timescale 1ns/1ps

module tb_layer1;

    // Clock and reset
    reg clk;
    reg rst;

    // Memory interface
    wire signed [7:0] data1, data2;
    wire [9:0] addr1, addr2;

    // Outputs from layer1
    wire store, load;
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
    wire signed [7:0] data_out1 [0:0][0:1];
    

    image_mem mem_inst (
        .clk(clk), .rst(rst), .load(load1),
        .addr1(mem_addr1),
        .addr2(mem_addr2),
        .data_out1(mem_data1),
        .data_out2(mem_data2)
    );
    
    assign data_out1[0][0] = mem_data1;
    assign data_out1[0][1] = mem_data2;;

    layer #(
        .H(28),
        .W(28),
        .OC(7),
        .IC(0),
        .LOAD_ADDR_LEN(9),
        .STORE_ADDR_LEN(9),
        .LOOP(27)
    )
    dut (
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

    // Stimulus
    initial begin
        $display("Starting testbench...");
        $dumpfile("w_layer1.vcd");
        $dumpvars(0, tb_layer1);

        rst = 0;
        #20;
        rst = 1;

        // Run simulation until cout_done
        
        wait(cout1_done);
        // #5000000;


        $display("Layer1 finished convolution.");
        $finish;
    end

    // Monitor useful outputs
    initial begin
        $display("address\tresult");
        $monitor("%d\t%h", 
            dut.address, 
            dut.result);
    end

endmodule
