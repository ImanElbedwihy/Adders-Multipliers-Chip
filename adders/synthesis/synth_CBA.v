
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 19:08:19 2023
/////////////////////////////////////////////////////////////


module CBA ( A, B, Cin, Sum, Cout, of );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout, of;
  wire   n1, n2;
  wire   [7:1] C;

  CBA_4bits \loop[0].CBA_4bits_i  ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .Sum(
        Sum[3:0]), .Cout(C[1]) );
  CBA_4bits \loop[1].CBA_4bits_i  ( .A(A[7:4]), .B(B[7:4]), .Cin(C[1]), 
        .Sum(Sum[7:4]), .Cout(C[2]) );
  CBA_4bits \loop[2].CBA_4bits_i  ( .A(A[11:8]), .B(B[11:8]), .Cin(C[2]), 
        .Sum(Sum[11:8]), .Cout(C[3]) );
  CBA_4bits \loop[3].CBA_4bits_i  ( .A(A[15:12]), .B(B[15:12]), .Cin(C[3]), 
        .Sum(Sum[15:12]), .Cout(C[4]) );
  CBA_4bits \loop[4].CBA_4bits_i  ( .A(A[19:16]), .B(B[19:16]), .Cin(C[4]), 
        .Sum(Sum[19:16]), .Cout(C[5]) );
  CBA_4bits \loop[5].CBA_4bits_i  ( .A(A[23:20]), .B(B[23:20]), .Cin(C[5]), 
        .Sum(Sum[23:20]), .Cout(C[6]) );
  CBA_4bits \loop[6].CBA_4bits_i  ( .A(A[27:24]), .B(B[27:24]), .Cin(C[6]), 
        .Sum(Sum[27:24]), .Cout(C[7]) );
  CBA_4bits \loop[7].CBA_4bits_i  ( .A(A[31:28]), .B(B[31:28]), .Cin(C[7]), 
        .Sum(Sum[31:28]), .Cout(Cout) );
  XOR2X1 U2 ( .IN1(B[31]), .IN2(A[31]), .Q(n2) );
  XNOR2X1 U3 ( .IN1(A[31]), .IN2(Sum[31]), .Q(n1) );
  NOR2X0 U4 ( .IN1(n1), .IN2(n2), .QN(of) );
endmodule

