
module top_control 
(
    input wire clk,
    input wire rst_n,

    input wire pool1_done,
    input wire pool2_done,
    output reg start
);

parameter START     = 3'd0;
parameter LAYER1    = 3'd1;
parameter LAYER2    = 3'd2;
parameter IDLE      = 3'd3;

reg [2:0] state;
reg [2:0] next_state;


// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= LAYER1;
    else
        state <= next_state;
        
end

// Combinational logic: next state and outputs
always @(*) 
begin
    // Default outputs

    start = 1'b0;
    
    case (state)
        LAYER1:
        begin
            next_state = pool1_done ? LAYER2: LAYER1;
        end

        LAYER2:
        begin
            next_state = pool2_done ? IDLE : LAYER2;
        end

        IDLE:
        begin
            next_state = IDLE;
        end

        default: 
        begin
            next_state = IDLE;
        end
    endcase
end

endmodule
