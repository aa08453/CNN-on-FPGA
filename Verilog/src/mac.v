module mac #
(
    parameter K = 3,
    parameter H = 5,
    parameter W = 5
)
(
    input wire [K*K-1:0] img,          // Flattened input patch
    output wire [31:0] sum            // Final MAC output
);

    wire [K*K-1:0] kernel;
    wire [31:0] products [0:K*K-1];

    genvar j;
    generate
        for (j = 0; j < K*K; j = j + 1) 
        begin : mac_loop
            wire k_bit;
            wire [3:0] addr = j;
            kernel_mem kernel_inst (.k_addr(addr),.k_pixel(k_bit));

            assign products[j] = img[j]*k_bit;  // Bitwise AND (assuming binary MAC)
        end
    endgenerate

    // Sum up all products
    integer i;
    reg [31:0] acc;
    always @(*) 
    begin
        acc = 0;
        for (i = 0; i < K*K; i = i + 1) 
        begin
            acc = acc + products[i];
        end
    end

    assign sum = acc;

endmodule
