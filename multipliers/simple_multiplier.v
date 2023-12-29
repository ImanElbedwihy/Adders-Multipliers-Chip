
module simple_multiplier  (
    input [31:0] A,
    input [31:0] B,
    output  [63:0] product
    );
    
wire [31:0]op1;
wire [31:0]op2;
wire [63:0]temp_product;


   assign op1 = (A[31] == 1)? ((~A) + 1) : A;
assign    op2 = (B[31] == 1)? ((~B)+1):B;
  assign  temp_product=op1 * op2;
 assign   product = ((A[31] == 1) ^ (B[31] == 1))? (~temp_product +1):temp_product;



endmodule