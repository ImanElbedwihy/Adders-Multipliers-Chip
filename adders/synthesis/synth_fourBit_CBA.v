
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 19:04:26 2023
/////////////////////////////////////////////////////////////


module CBA_4bits ( A, B, Cin, Sum, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Sum;
  input Cin;
  output Cout;
  wire   C, n1, n2, n3, n4, n5, n6;

  four_bit_adder RCA ( .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C) );
  AO22X1 U2 ( .IN1(C), .IN2(n2), .IN3(Cin), .IN4(n1), .Q(Cout) );
  NAND4X0 U3 ( .IN1(n3), .IN2(n4), .IN3(n5), .IN4(n6), .QN(n2) );
  XOR2X1 U4 ( .IN1(B[0]), .IN2(A[0]), .Q(n6) );
  XOR2X1 U5 ( .IN1(B[1]), .IN2(A[1]), .Q(n5) );
  XOR2X1 U6 ( .IN1(B[2]), .IN2(A[2]), .Q(n4) );
  XOR2X1 U7 ( .IN1(B[3]), .IN2(A[3]), .Q(n3) );
  INVX0 U8 ( .IN1(n2), .QN(n1) );
endmodule

