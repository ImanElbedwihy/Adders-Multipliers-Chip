
module RCA
(input [31:0] a, input [31:0] b,input Cin, output [31:0] sum,output Cout,output of);

wire [32:0] w_C;
genvar i;
assign w_C[0]=Cin;
generate 
for (i=0;i<32;i=i+1)
 begin :loop
    full_adder full_adder_bit_1
        ( .i_bit1(a[i]),.i_bit2(b[i]), .i_carry(w_C[i]), .o_sum(sum[i]), .o_carry(w_C[i+1])); 
		  end
		    endgenerate
assign Cout=w_C[32];
assign of= ~(a[31]^b[31])&(a[31]^sum[31]);

endmodule
