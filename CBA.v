

module CBA
(input [31:0] A, input [31:0] B,input Cin, output [31:0] Sum,output Cout,output of);

wire [8:0] C;
assign C[0]=Cin;
genvar i;
assign C[0]=Cin;
generate 
for (i=0;i<8;i=i+1)
 begin :loop
    CBA_4bits CBA_4bits_i
        ( 
            .A(A[i*4+3:i*4]),
            .B(B[i*4+3:i*4]),
            .Cin(C[i]),
            .Sum(Sum[i*4+3:i*4]),
            .Cout(C[i+1])
                ); 
		  end
		    endgenerate
assign Cout=C[8];
assign of= ~(A[31]^B[31])&(A[31]^Sum[31]);

endmodule
