module tbCounter;

    reg clk;
    reg rst;
    
    top uut (
        .clk(clk),
        .rst(rst)
        );
        
        initial clk = 0;
    always #5 clk = ~clk;  



    initial begin

        rst = 0;

        #10;
        rst = 1;

    end

    
endmodule