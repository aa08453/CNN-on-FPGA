module counters 
(
    input wire clk,
    input wire rst_n,
    input wire count_enable,
    output reg [4:0] i,
    output reg [4:0] j,
    output reg done
);

always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n) 
    begin
        i <= 0;
        j <= 0;
        done <= 0;
    end 
    else if (count_enable && !done) 
    begin
        if (j < 27) 
        begin
            j <= j + 1;
        end 
        else 
        begin
            j <= 0;
            if (i < 27) 
            begin
                i <= i + 1;
            end 
            else 
            begin
                i <= 0;
                done <= 1;
            end
        end
    end
end

endmodule
