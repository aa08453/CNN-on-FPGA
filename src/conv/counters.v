module counters 
#
(
    parameter IC = 0
)
(
    input wire clk,
    input wire rst_n,
    input wire count_enable,
    input wire conv,
    output reg [4:0] i,
    output reg [4:0] j,
    output reg done,
    input wire cout_done
);

localparam step = (IC == 0) ? 1 : 2;

always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n) 
    begin
        i <= 0;
        j <= 0;
        done <= 0;
    end
    if (conv && done) 
    begin
        i <= 0;
        j <= 0;
        done <= 0;
        // $display("HERE");
    end
    if (count_enable && !done) 
    begin
        if (j < 27) 
        begin
            j <= j + step;
        end 
        else 
        begin
            j <= 0;
            if (i < 27) 
            begin
                i <= i + step;
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
