module result_registerFile
#(
    parameter W = 28
)
(
    input wire clk,
    input wire rst,
    input wire store,
    input wire [18:0] result,
    input wire [4:0] i, j
    
    // output reg [18:0] readData,
);
    reg [18:0] result_mem [0:783];

    reg [9:0] write_index;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            write_index <= 10'd0;
        end
        else if (store) 
        begin
            write_index = i * W + j; 
            result_mem[write_index] <= result;
            
            // Display each result as it's stored
            $display("Result[%0d] = %05h (i=%0d, j=%0d)", 
                     write_index, result, i, j);
            
        end
    end
    
    

endmodule