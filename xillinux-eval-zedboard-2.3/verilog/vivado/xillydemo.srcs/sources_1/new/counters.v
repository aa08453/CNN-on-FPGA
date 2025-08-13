`timescale 1ns / 1ps

module counters 
#
(
    parameter LOOP = 13,
    parameter STEP = 1
)
(
    input wire clk,
    input wire rst_n,
    input wire count_enable,
    input wire conv,
    output reg [4:0] i,
    output reg [4:0] j,
    output reg done, load_full_patch
);

//localparam step = (IC == 0) ? 1 : 2;

always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n) 
    begin
        i <= 0;
        j <= 0;
        done <= 0;
        load_full_patch <= 1;
    end
    else if (conv && done) 
    begin
        i <= 0;
        j <= 0;
        done <= 0;

        // $display("HERE");
    end
    else if (count_enable && !done) 
    begin
        if (j < LOOP) 
        begin
            load_full_patch <= 0;
            j <= j + STEP;
        end 
        else 
        begin
            j <= 0;
            load_full_patch <= 1;
            if (i < LOOP) 
            begin
                i <= i + STEP;
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
