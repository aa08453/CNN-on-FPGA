`timescale 1ns / 1ps

module comp_tb;

    // Parameters
    localparam W = 14;
    localparam ADDR_LEN = 9;

    // Inputs to DUT
    reg signed [7:0] image_data [0:8];
    reg signed [7:0] kernel [0:8];
    reg clk;
    reg rst;
    reg add;
    reg [4:0] i, j;

    // Outputs from DUT
    wire signed [7:0] result;
    wire [ADDR_LEN:0] addr;
    wire comp_done;

    // Instantiate the DUT
    comp #(.W(W), .ADDR_LEN(ADDR_LEN)) dut (
        .image_data(image_data),
        .kernel(kernel),
        .add(add),
        .clk(clk),
        .rst(rst),
        .i(i),
        .j(j),
        .result(result),
        .addr(addr),
        .comp_done(comp_done)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("w_comp.vcd");
        $dumpvars(0, comp_tb);
        $display("Starting comp test...");

        // Set position
        i = 5'd7;
        j = 5'd8;

        // Initialize inputs
        rst = 0;
        add = 0;
        #10;
        add = 1;
        rst = 1;

        // Initialize image and kernel data
//        image_data[0] = 8'sd14;  kernel[0] = 8'sd0;
//        image_data[1] = 8'sd13;  kernel[1] = -8'sd2;
//        image_data[2] = 8'sd0;   kernel[2] = -8'sd2;
//        image_data[3] = 8'sd5;   kernel[3] = 8'sd2;
//        image_data[4] = 8'sd14;  kernel[4] = 8'sd2;
//        image_data[5] = 8'sd13;  kernel[5] = -8'sd2;
//        image_data[6] = 8'sd0;   kernel[6] = 8'sd0;
//        image_data[7] = 8'sd8;   kernel[7] = 8'sd2;
//        image_data[8] = 8'sd14;  kernel[8] = 8'sd2;

        image_data[0] = 8'sd1;  kernel[0] =  8'sd2;
        image_data[1] = 8'sd2;  kernel[1] = -8'sd2;
        image_data[2] = 8'sd3;  kernel[2] = -8'sd2;
        image_data[3] = 8'sd4;  kernel[3] =  8'sd2;
        image_data[4] = 8'sd5;  kernel[4] =  8'sd2;
        image_data[5] = 8'sd6;  kernel[5] = -8'sd2;
        image_data[6] = 8'sd7;  kernel[6] =  8'sd2;
        image_data[7] = 8'sd8;  kernel[7] =  8'sd2;
        image_data[8] = 8'sd9;  kernel[8] =  8'sd2;



        // Wait for computation
//        wait (comp_done == 1);
        #100

        $display("Computation done: result = %0d, addr = %0d", result, addr);

        $display("Test completed.");
        $finish;
    end

endmodule
