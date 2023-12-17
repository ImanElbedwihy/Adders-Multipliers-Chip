module full_adder
(input i_bit1,input i_bit2, input i_carry,output o_sum,output o_carry);

wire g1,p1;
assign g1=i_bit1 & i_bit2;
assign p1=i_bit1 ^ i_bit2;

assign o_sum=p1 ^ i_carry;
assign o_carry = g1 | (p1&i_carry);

endmodule

