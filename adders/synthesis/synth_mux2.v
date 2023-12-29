
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 19:43:14 2023
/////////////////////////////////////////////////////////////


module mux2 ( i0, i1, sel, bitout );
  input [3:0] i0;
  input [3:0] i1;
  output [3:0] bitout;
  input sel;
  wire   n1;

  AO22X1 U2 ( .IN1(sel), .IN2(i1[3]), .IN3(i0[3]), .IN4(n1), .Q(bitout[3]) );
  AO22X1 U3 ( .IN1(i1[2]), .IN2(sel), .IN3(i0[2]), .IN4(n1), .Q(bitout[2]) );
  AO22X1 U4 ( .IN1(i1[1]), .IN2(sel), .IN3(i0[1]), .IN4(n1), .Q(bitout[1]) );
  AO22X1 U5 ( .IN1(i1[0]), .IN2(sel), .IN3(i0[0]), .IN4(n1), .Q(bitout[0]) );
  INVX0 U6 ( .INP(sel), .ZN(n1) );
endmodule

