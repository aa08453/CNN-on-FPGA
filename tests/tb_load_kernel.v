module tb_load_kernel();
    reg clk = 0;
    reg rst = 1;
    reg c_load = 0;
    reg [3:0] cout = 0;
    wire [7:0] k0, k1, k2, k3, k4, k5, k6, k7, k8;

    load_kernel uut (
        .clk(clk),
        .rst(rst),
        .cout(cout),
        .c_load(c_load),
        .kernel0(k0), .kernel1(k1), .kernel2(k2),
        .kernel3(k3), .kernel4(k4), .kernel5(k5),
        .kernel6(k6), .kernel7(k7), .kernel8(k8)
    );

    always #10 clk = ~clk;


    initial 
    begin
        $dumpfile("w_load_kernel.vcd");
        $dumpvars(0, tb_load_kernel);

        rst = 1;
        #5;
        rst = 0;
        @(posedge clk);  // apply reset
        rst = 1;
        c_load = 1;
        # 20
        repeat (7) 
        begin
            @(posedge clk);
            cout = cout + 1;
            @(posedge clk);  // wait one more cycle for output to update

            $display("COUT = %0d", cout);
            $display("%d %d %d", k0, k1, k2);
            $display("%d %d %d", k3, k4, k5);
            $display("%d %d %d\n", k6, k7, k8);
        end


        $finish;
    end
endmodule
