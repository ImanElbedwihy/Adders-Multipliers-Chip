
module CLA_adder
  #(parameter WIDTH = 32)
  (
   input [WIDTH-1:0] A,
   input [WIDTH-1:0] B,   
   input Cin,
   output [WIDTH-1:0]  Sum,
    output Cout,
    output overflow

   );

  wire [WIDTH-1:0]   C, P,G;


  // CLA Logic
  assign C[0]=((A[0]&B[0])|((A[0]^B[0])&Cin));
  assign Sum[0]=A[0]^B[0]^Cin;
  genvar             j;
  generate 
    for (j=1; j<WIDTH; j=j+1) 
      begin :loop
        assign G[j]   = A[j] & B[j];
        assign P[j]   = A[j] ^ B[j];
        assign C[j] = G[j] | (P[j] & C[j-1]);
        assign Sum[j] = A[j] ^ B[j] ^ C[j-1];
      end
  endgenerate
  
 
  assign Cout = C[WIDTH-1];  
 assign overflow= ~(A[WIDTH - 1] ^ B[WIDTH - 1]) & (A[WIDTH - 1] ^ Sum[WIDTH - 1]);
 
endmodule
