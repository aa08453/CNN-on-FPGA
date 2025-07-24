module tbCounter;

    reg clk;
    reg rst;
    
    topM uut (
        .clk(clk),
        .rst(rst)
        );
        
        initial clk =1;
    always #5 clk = ~clk;  



    initial begin

        rst = 0;

        #10;
        rst = 1;

    end

    
endmodule