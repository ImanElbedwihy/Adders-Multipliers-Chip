
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 19:23:18 2023
/////////////////////////////////////////////////////////////


module mux ( i0, i1, sel, bitout );
  input i0, i1, sel;
  output bitout;
  wire   n1;

  AO22X1 U2 ( .IN1(sel), .IN2(i1), .IN3(i0), .IN4(n1), .Q(bitout) );
  INVX0 U3 ( .IN1(sel), .QN(n1) );
endmodule

