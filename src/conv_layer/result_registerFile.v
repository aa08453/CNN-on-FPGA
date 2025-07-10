`define POOL(mem, max, next_addr) \
begin \
    max = next_addr; \
    if (mem[next_addr + 1] > mem[max]) max = next_addr + 1; \
    if (mem[next_addr + 28] > mem[max]) max = next_addr + 28; \
    if (mem[next_addr + 29] > mem[max]) max = next_addr + 29; \
    mem[next_addr] <= (mem[max] > 0) ? mem[max] : 0; \
end 

`define STORE(mem, tmp, inter, first_write, addr, bias, value) \
    tmp = mem[addr]; \
    if (first_write) \
        mem[addr] <= bias; \
    else \
    begin \
        inter = tmp + value; \
        mem[addr] <= (inter >> 1); \
    end

module result_registerFile
#(
    parameter CHANNEL_SIZE = 783
)
(
    input wire clk,
    input wire rst,

    input wire store,
    input wire pool,
    input wire cout_done, 

    input wire [3:0] out_c,         // Output channel index [0–7]
    input wire [9:0] addr,          // Address within the channel
    input wire signed [7:0] bias,          // Bias to initialize with
    input wire signed [7:0] value,          // Value to store
    input wire first_write,

    output reg [3:0] y, // for synthesis
    output reg pool_done

    input wire addr_gen,
    output reg [7:0] pixel0;
    output reg [7:0] pixel1;
    output reg [7:0] pixel2;
    output reg [7:0] pixel3;
    output reg [7:0] pixel4;
    output reg [7:0] pixel5;
    output reg [7:0] pixel6;
    output reg [7:0] pixel7;
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

    reg signed [15:0] inter0, inter1, inter2, inter3, inter4, inter5, inter6, inter7;
    reg [9:0] max0,max1,max2,max3,max4,max5,max6,max7;
    reg signed [7:0] tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    reg [3:0] pool_count;
    reg [9:0] next_addr;
    reg [3:0] channel_count;
    // Core logic
    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            next_addr <= 0;
            pool_count <= 0;
            pool_done <= 0;
            channel_count <= 0;
            inter0 <= 16'sd0;
            inter1 <= 16'sd0;
            inter2 <= 16'sd0;
            inter3 <= 16'sd0;
            inter4 <= 16'sd0;
            inter5 <= 16'sd0;
            inter6 <= 16'sd0;
            inter7 <= 16'sd0;
        end
        else if (store) 
        begin
            case (out_c)
                4'd0: begin `STORE(result_mem0,tmp0, inter0, first_write, addr, bias, value); end 
                4'd1: begin `STORE(result_mem1,tmp1, inter1, first_write, addr, bias, value); end
                4'd2: begin `STORE(result_mem2,tmp2, inter2, first_write, addr, bias, value); end
                4'd3: begin `STORE(result_mem3,tmp3, inter3, first_write, addr, bias, value); end
                4'd4: begin `STORE(result_mem4,tmp4, inter4, first_write, addr, bias, value); end
                4'd5: begin `STORE(result_mem5,tmp5, inter5, first_write, addr, bias, value); end
                4'd6: begin `STORE(result_mem6,tmp6, inter6, first_write, addr, bias, value); end
                4'd7: begin `STORE(result_mem7,tmp7, inter7, first_write, addr, bias, value); end
                default: ; // Do nothing
            endcase
        end
        else if (pool && !pool_done) 
        begin
            
            `POOL(result_mem0, max0, next_addr);
            `POOL(result_mem1, max1, next_addr);
            `POOL(result_mem2, max2, next_addr);
            `POOL(result_mem3, max3, next_addr);
            `POOL(result_mem4, max4, next_addr);
            `POOL(result_mem5, max5, next_addr);
            `POOL(result_mem6, max6, next_addr);
            `POOL(result_mem7, max7, next_addr);

            pool_count <= pool_count + 1;
        
            if (pool_count < 14)
            begin
                next_addr <= next_addr + 2;
            end
            else
            begin
                next_addr <= next_addr + 28;
                pool_count <= 0;
            end

            if (next_addr == 10'd784)
            begin
                pool_done <= (channel_count == 7) ? 1'b1 : 0;
                next_addr <= 0;
                pool_count <= 0;
                channel_count <= channel_count + 1;
            end
        
        end      

        else if (cout_done) 
        begin
            // Optional: write to file for verification
            $writememh("result_mem0.mem", result_mem0);
            $writememh("result_mem1.mem", result_mem1);
            $writememh("result_mem2.mem", result_mem2);
            $writememh("result_mem3.mem", result_mem3);
            $writememh("result_mem4.mem", result_mem4);
            $writememh("result_mem5.mem", result_mem5);
            $writememh("result_mem6.mem", result_mem6);
            $writememh("result_mem7.mem", result_mem7);
        end

        else if (pool_done)
        begin
            $writememh("pool0.mem", result_mem0);
            $writememh("pool1.mem", result_mem1);
            $writememh("pool2.mem", result_mem2);
            $writememh("pool3.mem", result_mem3);
            $writememh("pool4.mem", result_mem4);
            $writememh("pool5.mem", result_mem5);
            $writememh("pool6.mem", result_mem6);
            $writememh("pool7.mem", result_mem7);
        end

        else if (addr_gen)
        begin
            pixel0 <= result_mem0[addr];
            pixel1 <= result_mem1[addr];
            pixel2 <= result_mem2[addr];
            pixel3 <= result_mem3[addr];
            pixel4 <= result_mem4[addr];
            pixel5 <= result_mem5[addr];
            pixel6 <= result_mem6[addr];
            pixel7 <= result_mem7[addr];
        end
    end
    
    assign y = out_c;

endmodule


// case (mem)
            // 3'd0:
            //     begin
            //     pixel0 <= result_mem0[read_addr0];
            //     pixel1 <= result_mem0[read_addr1];
            //     pixel2 <= result_mem0[read_addr2];
            //     pixel3 <= result_mem0[read_addr3];
            //     pixel4 <= result_mem0[read_addr4];
            //     pixel5 <= result_mem0[read_addr5];
            //     pixel6 <= result_mem0[read_addr6];
            //     pixel7 <= result_mem0[read_addr7];
            //     end
            // 3'd1:
            //     begin
            //     pixel0 <= result_mem1[read_addr0];
            //     pixel1 <= result_mem1[read_addr1];
            //     pixel2 <= result_mem1[read_addr2];
            //     pixel3 <= result_mem1[read_addr3];
            //     pixel4 <= result_mem1[read_addr4];
            //     pixel5 <= result_mem1[read_addr5];
            //     pixel6 <= result_mem1[read_addr6];
            //     pixel7 <= result_mem1[read_addr7];
            //     end

            // 3'd2:
            //     begin
            //     pixel0 <= result_mem2[read_addr0];
            //     pixel1 <= result_mem2[read_addr1];
            //     pixel2 <= result_mem2[read_addr2];
            //     pixel3 <= result_mem2[read_addr3];
            //     pixel4 <= result_mem2[read_addr4];
            //     pixel5 <= result_mem2[read_addr5];
            //     pixel6 <= result_mem2[read_addr6];
            //     pixel7 <= result_mem2[read_addr7];
            //     end

            // 3'd3:
            //     begin
            //     pixel0 <= result_mem3[read_addr0];
            //     pixel1 <= result_mem3[read_addr1];
            //     pixel2 <= result_mem3[read_addr2];
            //     pixel3 <= result_mem3[read_addr3];
            //     pixel4 <= result_mem3[read_addr4];
            //     pixel5 <= result_mem3[read_addr5];
            //     pixel6 <= result_mem3[read_addr6];
            //     pixel7 <= result_mem3[read_addr7];
            //     end

            // 3'd4:
            //     begin
            //     pixel0 <= result_mem4[read_addr0];
            //     pixel1 <= result_mem4[read_addr1];
            //     pixel2 <= result_mem4[read_addr2];
            //     pixel3 <= result_mem4[read_addr3];
            //     pixel4 <= result_mem4[read_addr4];
            //     pixel5 <= result_mem4[read_addr5];
            //     pixel6 <= result_mem4[read_addr6];
            //     pixel7 <= result_mem4[read_addr7];
            //     end

            // 3'd5:
            //     begin
            //     pixel0 <= result_mem5[read_addr0];
            //     pixel1 <= result_mem5[read_addr1];
            //     pixel2 <= result_mem5[read_addr2];
            //     pixel3 <= result_mem5[read_addr3];
            //     pixel4 <= result_mem5[read_addr4];
            //     pixel5 <= result_mem5[read_addr5];
            //     pixel6 <= result_mem5[read_addr6];
            //     pixel7 <= result_mem5[read_addr7];
            //     end

            // 3'd6:
            //     begin
            //     pixel0 <= result_mem6[read_addr0];
            //     pixel1 <= result_mem6[read_addr1];
            //     pixel2 <= result_mem6[read_addr2];
            //     pixel3 <= result_mem6[read_addr3];
            //     pixel4 <= result_mem6[read_addr4];
            //     pixel5 <= result_mem6[read_addr5];
            //     pixel6 <= result_mem6[read_addr6];
            //     pixel7 <= result_mem6[read_addr7];
            //     end

            // 3'd7:
            //     begin
            //     pixel0 <= result_mem7[read_addr0];
            //     pixel1 <= result_mem7[read_addr1];
            //     pixel2 <= result_mem7[read_addr2];
            //     pixel3 <= result_mem7[read_addr3];
            //     pixel4 <= result_mem7[read_addr4];
            //     pixel5 <= result_mem7[read_addr5];
            //     pixel6 <= result_mem7[read_addr6];
            //     pixel7 <= result_mem7[read_addr7];
            //     end
            // endcase