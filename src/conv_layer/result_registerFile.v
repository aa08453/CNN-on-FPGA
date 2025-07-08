module result_registerFile
#(
    parameter CHANNEL_SIZE = 783
)
(
    input wire clk,
    input wire rst,

    input wire store,
    input wire relu,
    input wire cout_done,

    input wire [3:0] out_c,         // Output channel index [0–7]
    input wire [9:0] addr,          // Address within the channel
    input wire [7:0] bias,          // Bias to initialize with
    input wire [7:0] value,          // Value to store
    input wire first_write
);

    // Eight independent memory banks for eight output channels
    (* ram_style = "block" *) reg [7:0] result_mem0 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem1 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem2 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem3 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem4 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem5 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem6 [0:CHANNEL_SIZE];
    (* ram_style = "block" *) reg [7:0] result_mem7 [0:CHANNEL_SIZE];

    reg [15:0] inter0, inter1, inter2, inter3, inter4, inter5, inter6, inter7;
    // Core logic
    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            inter0 <= 0;
            inter1 <= 0;
            inter2 <= 0;
            inter3 <= 0;
            inter4 <= 0;
            inter5 <= 0;
            inter6 <= 0;
            inter7 <= 0;
        end
        else if (store) 
        begin
            case (out_c)
                4'd0: 
                begin
                    if (first_write)
                        result_mem0[addr] <= 0;
                    // result_mem0[addr] 
                    else
                    begin
                    inter0 = result_mem0[addr] + value + bias;
                    result_mem0[addr] <= (inter0 >> 1);
                    end
                end
                4'd1: 
                begin
                    if (first_write)
                        result_mem1[addr] <= 0;
                    else
                    begin
                    inter1 = result_mem1[addr] + value + bias;
                    result_mem1[addr] <= (inter1 >> 1);
                    end
                end
                4'd2: 
                begin
                    if (first_write)
                        result_mem2[addr] <= 0;
                    else
                    begin
                    inter2 = result_mem2[addr] + value + bias;
                    result_mem2[addr] <= (inter2 >> 1);
                    end
                end
                4'd3: 
                begin
                    if (first_write)
                        result_mem3[addr] <= 0;
                    else
                    begin
                    inter3 = result_mem3[addr] + value + bias;
                    result_mem3[addr] <= (inter3 >> 1);
                    end
                end
                4'd4: 
                begin
                    if (first_write)
                        result_mem4[addr] <= 0;
                    else
                    begin
                    inter4 = result_mem4[addr] + value + bias;
                    result_mem4[addr] <= (inter4 >> 1);
                    end
                end
                4'd5: 
                begin
                    if (first_write)
                        result_mem5[addr] <= 0;
                    else
                    begin 
                    inter5 = result_mem5[addr] + value + bias;
                    result_mem5[addr] <= (inter5 >> 1);
                    end
                end
                4'd6: 
                begin
                    if (first_write)
                        result_mem6[addr] <= 0;
                    else 
                    begin 
                    inter6 = result_mem6[addr] + value + bias;
                    result_mem6[addr] <= (inter6 >> 1);
                    end
                end
                4'd7: 
                begin
                    if (first_write)
                        result_mem7[addr] <= 0;
                    else 
                    begin
                    inter7 = result_mem7[addr] + value + bias;
                    result_mem7[addr] <= (inter7 >> 1);
                    end
                end
                // 4'd1: result_mem1[addr] <= result_mem1[addr] + value + bias;
                // 4'd2: result_mem2[addr] <= result_mem2[addr] + value + bias;
                // 4'd3: result_mem3[addr] <= result_mem3[addr] + value + bias;
                // 4'd4: result_mem4[addr] <= result_mem4[addr] + value + bias;
                // 4'd5: result_mem5[addr] <= result_mem5[addr] + value + bias;
                // 4'd6: result_mem6[addr] <= result_mem6[addr] + value + bias;
                // 4'd7: result_mem7[addr] <= result_mem7[addr] + value + bias;
                default: ; // Do nothing
            endcase
        end
        // else if (relu) begin
        //     case (out_c)
        //         4'd0: if (result_mem0[addr][7]) result_mem0[addr] <= 8'd0;
        //         4'd1: if (result_mem1[addr][7]) result_mem1[addr] <= 8'd0;
        //         4'd2: if (result_mem2[addr][7]) result_mem2[addr] <= 8'd0;
        //         4'd3: if (result_mem3[addr][7]) result_mem3[addr] <= 8'd0;
        //         4'd4: if (result_mem4[addr][7]) result_mem4[addr] <= 8'd0;
        //         4'd5: if (result_mem5[addr][7]) result_mem5[addr] <= 8'd0;
        //         4'd6: if (result_mem6[addr][7]) result_mem6[addr] <= 8'd0;
        //         4'd7: if (result_mem7[addr][7]) result_mem7[addr] <= 8'd0;
        //         default: ; // Do nothing
        //     endcase
        // end
        else if (cout_done) begin
            // Optional: write to file for verification
            $writememh("mem_files/result_mem0.mem", result_mem0);
            $writememh("mem_files/result_mem1.mem", result_mem1);
            $writememh("mem_files/result_mem2.mem", result_mem2);
            $writememh("mem_files/result_mem3.mem", result_mem3);
            $writememh("mem_files/result_mem4.mem", result_mem4);
            $writememh("mem_files/result_mem5.mem", result_mem5);
            $writememh("mem_files/result_mem6.mem", result_mem6);
            $writememh("mem_files/result_mem7.mem", result_mem7);
        end
    end

endmodule
