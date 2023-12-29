
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 18:56:40 2023
/////////////////////////////////////////////////////////////


module four_bit_adder ( A, B, Cin, Sum, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Sum;
  input Cin;
  output Cout;

  wire   [2:0] C;

  full_adder \loop[0].FA  ( .i_bit1(A[0]), .i_bit2(B[0]), .i_carry(Cin), 
        .o_sum(Sum[0]), .o_carry(C[0]) );
  full_adder \loop[1].FA  ( .i_bit1(A[1]), .i_bit2(B[1]), .i_carry(C[0]), 
        .o_sum(Sum[1]), .o_carry(C[1]) );
  full_adder \loop[2].FA  ( .i_bit1(A[2]), .i_bit2(B[2]), .i_carry(C[1]), 
        .o_sum(Sum[2]), .o_carry(C[2]) );
  full_adder \loop[3].FA  ( .i_bit1(A[3]), .i_bit2(B[3]), .i_carry(C[2]), 
        .o_sum(Sum[3]), .o_carry(Cout) );
endmodule

