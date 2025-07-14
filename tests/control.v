
module control 
(
    input wire clk,
    input wire rst_n,

    input wire pool1_done,
    input wire pool2_done,


    output reg conv1,
    output reg store,
    output reg conv2,
    output reg pool1,
    output reg pool2,
);

parameter CONV1    = 3'd0;
parameter POOL1    = 3'd1;
parameter CONV2    = 3'd2;
parameter POOL2    = 3'd3;
parameter IDLE     = 3'd4;

reg [2:0] state;
reg [2:0] next_state;


// Sequential logic: state register
always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n)
        state <= CHANNEL_LOAD;
        
end

// Combinational logic: next state and outputs
always @(*) 
begin
    // Default outputs
    cout           = 1'b0;
    c_load         = 1'b0;
    cin            = 1'b0;
    conv           = 1'b0;
    pool           = 1'b0;

    state = next_state;
    
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
