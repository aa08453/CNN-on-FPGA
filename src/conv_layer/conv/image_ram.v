
module image_mem
(
    input wire clk,
    input wire [9:0] addr,
    output reg [7:0] data_out
);

    (* ram_style = "block" *)  reg [7:0] mem [0:783];

    initial 
    begin
        $readmemh("mem_files/image.mem", mem);
        // $readmemh("image.mem", mem);  // Use your actual image hex file
    end

    always @(posedge clk) 
    begin
        data_out <= mem[addr];
    end

endmodule
