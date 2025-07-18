module patch_data_latch 
(
    input wire clk,
    input wire rst,
    input wire load,
    input wire load_full_patch,

    input wire [9:0] pixel_addr0,
    input wire [9:0] pixel_addr1,
    input wire [9:0] pixel_addr2,
    input wire [9:0] pixel_addr3,
    input wire [9:0] pixel_addr4,
    input wire [9:0] pixel_addr5,
    input wire [9:0] pixel_addr6,
    input wire [9:0] pixel_addr7,
    input wire [9:0] pixel_addr8,

    input wire signed [7:0] data1, data2,
    output reg [9:0] addr1, addr2,

    output reg signed [7:0] pixel0,
    output reg signed [7:0] pixel1,
    output reg signed [7:0] pixel2,
    output reg signed [7:0] pixel3,
    output reg signed [7:0] pixel4,
    output reg signed [7:0] pixel5,
    output reg signed [7:0] pixel6,
    output reg signed [7:0] pixel7,
    output reg signed [7:0] pixel8,

    output reg load_done
);


    reg [2:0] state;

    always @(posedge clk or negedge rst) 
    begin
        if (!rst)
        begin
            load_done <= 0;
            state <= 0;

            pixel0 <= 8'sd0;
            pixel1 <= 8'sd0;
            pixel2 <= 8'sd0;
            pixel3 <= 8'sd0;
            pixel4 <= 8'sd0;
            pixel5 <= 8'sd0;
            pixel6 <= 8'sd0;
            pixel7 <= 8'sd0;
            pixel8 <= 8'sd0;
        end 
        else if (load && !load_done)
        begin
            case (state)
                0: begin
                    if (load && load_full_patch) 
                    begin
                        addr1 <= pixel_addr0;
                        addr2 <= pixel_addr1;
                        state <= 1;
                        load_done <= 0;
                    end 
                    else if (load && !load_full_patch) 
                    begin
                        addr1 <= pixel_addr6;
                        addr2 <= pixel_addr7;

                        pixel0 <= pixel3;
                        pixel1 <= pixel4;
                        pixel2 <= pixel5;
                        pixel3 <= pixel6;
                        pixel4 <= pixel7;
                        pixel5 <= pixel8;

                        state <= 4;
                        load_done <= 0;
                    end
                end

                1: begin // Read pixel0 and pixel1
                    pixel0 <= data1;
                    pixel1 <= data2;
                    addr1 <= pixel_addr2;
                    addr2 <= pixel_addr3;
                    state <= 2;
                end

                2: begin // Read pixel2 and pixel3
                    pixel2 <= data1;
                    pixel3 <= data2;
                    addr1 <= pixel_addr4;
                    addr2 <= pixel_addr5;
                    state <= 3;
                end

                3: begin // Read pixel4 and pixel5
                    pixel4 <= data1;
                    pixel5 <= data2;
                    addr1 <= pixel_addr6;
                    addr2 <= pixel_addr7;
                    state <= 4;
                end

                4: begin // Read pixel6 and pixel7
                    pixel6 <= data1;
                    pixel7 <= data2;
                    addr1 <= pixel_addr8;
                    addr2 <= 10'd0;
                    state <= 5;
                end

                5: begin // Read pixel8
                    pixel8 <= data1;
                    load_done <= 1;
                    state <= 0;
                end

            endcase
        end
        else if (load && load_done)
        begin
            load_done <= 0;
            state <= 0;
        end

    end
endmodule
