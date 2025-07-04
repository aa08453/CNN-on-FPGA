
module channel_counter 
#
(
    parameter CHANNELS = 7 // out_channels - 1
)
(
    input wire clk,
    input wire rst_n,
    input wire signal,
    output reg [3:0] count,
    output reg complete
);

always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n) 
    begin
        count <= 0;
        complete <= 0;
    end 
    else if (signal && !complete) 
    begin
        if (count < CHANNELS) 
            count <= count + 1;
        else 
            complete <= 1;
    end
end

endmodule
