
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 18:49:06 2023
/////////////////////////////////////////////////////////////


module full_adder ( i_bit1, i_bit2, i_carry, o_sum, o_carry );
  input i_bit1, i_bit2, i_carry;
  output o_sum, o_carry;
  wire   n1;

  XOR2X1 U1 ( .IN1(i_carry), .IN2(n1), .Q(o_sum) );
  AO22X1 U2 ( .IN1(i_bit1), .IN2(i_bit2), .IN3(i_carry), .IN4(n1), .Q(o_carry)
         );
  XOR2X1 U3 ( .IN1(i_bit1), .IN2(i_bit2), .Q(n1) );
endmodule

