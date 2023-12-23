

module simple_multiplier  (
     input clk,
    input rst,
    input [31:0] A,
    input [31:0] B,
    output reg [63:0] product
    );
    
reg [31:0]op1;
reg [31:0]op2;
reg [63:0]temp_product;

always @(posedge clk )
begin

    op1 = (A[31] == 1)? ((~A) + 1) : A;
    op2 = (B[31] == 1)? ((~B)+1):B;
    temp_product=op1 * op2;
    product = ((A[31] == 1) ^ (B[31] == 1))? (~temp_product +1):temp_product;

end

endmodule