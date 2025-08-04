
`timescale 1ns / 1ps

module tb_top;

    // Clock and reset
    reg clk;
    reg rst;
    reg [7:0] outputs [0:9];

    // Instantiate the top module
    top uut (
        .clk(clk),
        .rst(rst),
        .outputs(outputs)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Stimulus
    initial begin
        $display("----- Starting Top Module Testbench -----");
        $dumpfile("w_top.vcd");
        $dumpvars(0, tb_top);

        // Reset pulse
        rst = 0;
        #20;
        rst = 1;

        // Wait for first layer to complete
        wait(uut.cout1_done);
        $display("Layer 1 computation done at time %0t", $time);
        
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch0.mem", tb_top.uut.layer1_mem_inst.brams[0].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch1.mem", tb_top.uut.layer1_mem_inst.brams[1].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch2.mem", tb_top.uut.layer1_mem_inst.brams[2].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch3.mem", tb_top.uut.layer1_mem_inst.brams[3].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch4.mem", tb_top.uut.layer1_mem_inst.brams[4].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch5.mem", tb_top.uut.layer1_mem_inst.brams[5].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch6.mem", tb_top.uut.layer1_mem_inst.brams[6].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_1/mem1_ch7.mem", tb_top.uut.layer1_mem_inst.brams[7].mem_inst.mem);
        
        wait(uut.pool1_done);
        $display("Pooling complete layer1 at time %0t", $time);
        
//        $writememh("C:/Users/aa08453/verification/pool_1/pool0.mem", tb_top.uut.layer1_mem_inst.brams[0].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool1.mem", tb_top.uut.layer1_mem_inst.brams[1].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool2.mem", tb_top.uut.layer1_mem_inst.brams[2].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool3.mem", tb_top.uut.layer1_mem_inst.brams[3].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool4.mem", tb_top.uut.layer1_mem_inst.brams[4].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool5.mem", tb_top.uut.layer1_mem_inst.brams[5].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool6.mem", tb_top.uut.layer1_mem_inst.brams[6].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/pool_1/pool7.mem", tb_top.uut.layer1_mem_inst.brams[7].mem_inst.mem);  

        // Wait for second layer to complete
        wait(uut.cout2_done);
        $display("Layer 2 computation done at time %0t", $time);
        
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch0.mem", tb_top.uut.layer2_mem_inst.brams[0].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch1.mem", tb_top.uut.layer2_mem_inst.brams[1].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch2.mem", tb_top.uut.layer2_mem_inst.brams[2].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch3.mem", tb_top.uut.layer2_mem_inst.brams[3].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch4.mem", tb_top.uut.layer2_mem_inst.brams[4].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch5.mem", tb_top.uut.layer2_mem_inst.brams[5].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch6.mem", tb_top.uut.layer2_mem_inst.brams[6].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch7.mem", tb_top.uut.layer2_mem_inst.brams[7].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch8.mem", tb_top.uut.layer2_mem_inst.brams[8].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_ch9.mem", tb_top.uut.layer2_mem_inst.brams[9].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_cha.mem", tb_top.uut.layer2_mem_inst.brams[10].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_chb.mem", tb_top.uut.layer2_mem_inst.brams[11].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_chc.mem", tb_top.uut.layer2_mem_inst.brams[12].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_chd.mem", tb_top.uut.layer2_mem_inst.brams[13].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_che.mem", tb_top.uut.layer2_mem_inst.brams[14].mem_inst.mem);
//        $writememh("C:/Users/aa08453/verification/mem_2/mem2_chf.mem", tb_top.uut.layer2_mem_inst.brams[15].mem_inst.mem);

        // Optionally: Dump memory or display final result
        wait(uut.pool2_done);
        $display("Pooling complete layer2 at time %0t", $time);
        
        $writememh("C:/Users/aa08453/verification/pool_2/pool0.mem", tb_top.uut.layer2_mem_inst.brams[0].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool1.mem", tb_top.uut.layer2_mem_inst.brams[1].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool2.mem", tb_top.uut.layer2_mem_inst.brams[2].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool3.mem", tb_top.uut.layer2_mem_inst.brams[3].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool4.mem", tb_top.uut.layer2_mem_inst.brams[4].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool5.mem", tb_top.uut.layer2_mem_inst.brams[5].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool6.mem", tb_top.uut.layer2_mem_inst.brams[6].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool7.mem", tb_top.uut.layer2_mem_inst.brams[7].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool8.mem", tb_top.uut.layer2_mem_inst.brams[8].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/pool9.mem", tb_top.uut.layer2_mem_inst.brams[9].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/poola.mem", tb_top.uut.layer2_mem_inst.brams[10].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/poolb.mem", tb_top.uut.layer2_mem_inst.brams[11].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/poolc.mem", tb_top.uut.layer2_mem_inst.brams[12].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/poold.mem", tb_top.uut.layer2_mem_inst.brams[13].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/poole.mem", tb_top.uut.layer2_mem_inst.brams[14].mem_inst.mem);
        $writememh("C:/Users/aa08453/verification/pool_2/poolf.mem", tb_top.uut.layer2_mem_inst.brams[15].mem_inst.mem);
        
        wait(uut.dense_done);
        $display("Dense layer computation complete at time %0t", $time);
       $finish;
    end

    // Optional: preload image memory
    // initial begin
        // $readmemh("image_input.mem", uut.mem_inst.mem); // If you use internal array "mem"
        // Or preload layer memory if needed
        // $readmemh("layer1_output.mem", uut.l1_mem_inst.mem);
    // end

endmodule
