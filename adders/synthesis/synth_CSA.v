/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 20:13:34 2023
/////////////////////////////////////////////////////////////


module CSA ( A, B, cin, S, cout, overflow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input cin;
  output cout, overflow;
  wire   cout1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [31:0] temp0;
  wire   [31:0] carry0;
  wire   [31:0] temp1;
  wire   [31:0] carry1;

  full_adder fa00 ( .i_bit1(A[0]), .i_bit2(B[0]), .i_carry(1'b0), .o_sum(
        temp0[0]), .o_carry(carry0[0]) );
  full_adder fa01 ( .i_bit1(A[0]), .i_bit2(B[0]), .i_carry(1'b1), .o_sum(
        temp1[0]), .o_carry(carry1[0]) );
  full_adder \genblk1[1].fa0  ( .i_bit1(A[1]), .i_bit2(B[1]), .i_carry(
        carry0[0]), .o_sum(temp0[1]), .o_carry(carry0[1]) );
  full_adder \genblk1[1].fa1  ( .i_bit1(A[1]), .i_bit2(B[1]), .i_carry(
        carry1[0]), .o_sum(temp1[1]), .o_carry(carry1[1]) );
  full_adder \genblk1[2].fa0  ( .i_bit1(A[2]), .i_bit2(B[2]), .i_carry(
        carry0[1]), .o_sum(temp0[2]), .o_carry(carry0[2]) );
  full_adder \genblk1[2].fa1  ( .i_bit1(A[2]), .i_bit2(B[2]), .i_carry(
        carry1[1]), .o_sum(temp1[2]), .o_carry(carry1[2]) );
  full_adder \genblk1[3].fa0  ( .i_bit1(A[3]), .i_bit2(B[3]), .i_carry(
        carry0[2]), .o_sum(temp0[3]), .o_carry(carry0[3]) );
  full_adder \genblk1[3].fa1  ( .i_bit1(A[3]), .i_bit2(B[3]), .i_carry(
        carry1[2]), .o_sum(temp1[3]), .o_carry(carry1[3]) );
  full_adder \genblk1[4].fa0  ( .i_bit1(A[4]), .i_bit2(B[4]), .i_carry(
        carry0[3]), .o_sum(temp0[4]), .o_carry(carry0[4]) );
  full_adder \genblk1[4].fa1  ( .i_bit1(A[4]), .i_bit2(B[4]), .i_carry(
        carry1[3]), .o_sum(temp1[4]), .o_carry(carry1[4]) );
  full_adder \genblk1[5].fa0  ( .i_bit1(A[5]), .i_bit2(B[5]), .i_carry(
        carry0[4]), .o_sum(temp0[5]), .o_carry(carry0[5]) );
  full_adder \genblk1[5].fa1  ( .i_bit1(A[5]), .i_bit2(B[5]), .i_carry(
        carry1[4]), .o_sum(temp1[5]), .o_carry(carry1[5]) );
  full_adder \genblk1[6].fa0  ( .i_bit1(A[6]), .i_bit2(B[6]), .i_carry(
        carry0[5]), .o_sum(temp0[6]), .o_carry(carry0[6]) );
  full_adder \genblk1[6].fa1  ( .i_bit1(A[6]), .i_bit2(B[6]), .i_carry(
        carry1[5]), .o_sum(temp1[6]), .o_carry(carry1[6]) );
  full_adder \genblk1[7].fa0  ( .i_bit1(A[7]), .i_bit2(B[7]), .i_carry(
        carry0[6]), .o_sum(temp0[7]), .o_carry(carry0[7]) );
  full_adder \genblk1[7].fa1  ( .i_bit1(A[7]), .i_bit2(B[7]), .i_carry(
        carry1[6]), .o_sum(temp1[7]), .o_carry(carry1[7]) );
  full_adder \genblk1[8].fa0  ( .i_bit1(A[8]), .i_bit2(B[8]), .i_carry(
        carry0[7]), .o_sum(temp0[8]), .o_carry(carry0[8]) );
  full_adder \genblk1[8].fa1  ( .i_bit1(A[8]), .i_bit2(B[8]), .i_carry(
        carry1[7]), .o_sum(temp1[8]), .o_carry(carry1[8]) );
  full_adder \genblk1[9].fa0  ( .i_bit1(A[9]), .i_bit2(B[9]), .i_carry(
        carry0[8]), .o_sum(temp0[9]), .o_carry(carry0[9]) );
  full_adder \genblk1[9].fa1  ( .i_bit1(A[9]), .i_bit2(B[9]), .i_carry(
        carry1[8]), .o_sum(temp1[9]), .o_carry(carry1[9]) );
  full_adder \genblk1[10].fa0  ( .i_bit1(A[10]), .i_bit2(B[10]), .i_carry(
        carry0[9]), .o_sum(temp0[10]), .o_carry(carry0[10]) );
  full_adder \genblk1[10].fa1  ( .i_bit1(A[10]), .i_bit2(B[10]), .i_carry(
        carry1[9]), .o_sum(temp1[10]), .o_carry(carry1[10]) );
  full_adder \genblk1[11].fa0  ( .i_bit1(A[11]), .i_bit2(B[11]), .i_carry(
        carry0[10]), .o_sum(temp0[11]), .o_carry(carry0[11]) );
  full_adder \genblk1[11].fa1  ( .i_bit1(A[11]), .i_bit2(B[11]), .i_carry(
        carry1[10]), .o_sum(temp1[11]), .o_carry(carry1[11]) );
  full_adder \genblk1[12].fa0  ( .i_bit1(A[12]), .i_bit2(B[12]), .i_carry(
        carry0[11]), .o_sum(temp0[12]), .o_carry(carry0[12]) );
  full_adder \genblk1[12].fa1  ( .i_bit1(A[12]), .i_bit2(B[12]), .i_carry(
        carry1[11]), .o_sum(temp1[12]), .o_carry(carry1[12]) );
  full_adder \genblk1[13].fa0  ( .i_bit1(A[13]), .i_bit2(B[13]), .i_carry(
        carry0[12]), .o_sum(temp0[13]), .o_carry(carry0[13]) );
  full_adder \genblk1[13].fa1  ( .i_bit1(A[13]), .i_bit2(B[13]), .i_carry(
        carry1[12]), .o_sum(temp1[13]), .o_carry(carry1[13]) );
  full_adder \genblk1[14].fa0  ( .i_bit1(A[14]), .i_bit2(B[14]), .i_carry(
        carry0[13]), .o_sum(temp0[14]), .o_carry(carry0[14]) );
  full_adder \genblk1[14].fa1  ( .i_bit1(A[14]), .i_bit2(B[14]), .i_carry(
        carry1[13]), .o_sum(temp1[14]), .o_carry(carry1[14]) );
  full_adder \genblk1[15].fa0  ( .i_bit1(A[15]), .i_bit2(B[15]), .i_carry(
        carry0[14]), .o_sum(temp0[15]), .o_carry(carry0[15]) );
  full_adder \genblk1[15].fa1  ( .i_bit1(A[15]), .i_bit2(B[15]), .i_carry(
        carry1[14]), .o_sum(temp1[15]), .o_carry(carry1[15]) );
  full_adder \genblk1[16].fa0  ( .i_bit1(A[16]), .i_bit2(B[16]), .i_carry(
        carry0[15]), .o_sum(temp0[16]), .o_carry(carry0[16]) );
  full_adder \genblk1[16].fa1  ( .i_bit1(A[16]), .i_bit2(B[16]), .i_carry(
        carry1[15]), .o_sum(temp1[16]), .o_carry(carry1[16]) );
  full_adder \genblk1[17].fa0  ( .i_bit1(A[17]), .i_bit2(B[17]), .i_carry(
        carry0[16]), .o_sum(temp0[17]), .o_carry(carry0[17]) );
  full_adder \genblk1[17].fa1  ( .i_bit1(A[17]), .i_bit2(B[17]), .i_carry(
        carry1[16]), .o_sum(temp1[17]), .o_carry(carry1[17]) );
  full_adder \genblk1[18].fa0  ( .i_bit1(A[18]), .i_bit2(B[18]), .i_carry(
        carry0[17]), .o_sum(temp0[18]), .o_carry(carry0[18]) );
  full_adder \genblk1[18].fa1  ( .i_bit1(A[18]), .i_bit2(B[18]), .i_carry(
        carry1[17]), .o_sum(temp1[18]), .o_carry(carry1[18]) );
  full_adder \genblk1[19].fa0  ( .i_bit1(A[19]), .i_bit2(B[19]), .i_carry(
        carry0[18]), .o_sum(temp0[19]), .o_carry(carry0[19]) );
  full_adder \genblk1[19].fa1  ( .i_bit1(A[19]), .i_bit2(B[19]), .i_carry(
        carry1[18]), .o_sum(temp1[19]), .o_carry(carry1[19]) );
  full_adder \genblk1[20].fa0  ( .i_bit1(A[20]), .i_bit2(B[20]), .i_carry(
        carry0[19]), .o_sum(temp0[20]), .o_carry(carry0[20]) );
  full_adder \genblk1[20].fa1  ( .i_bit1(A[20]), .i_bit2(B[20]), .i_carry(
        carry1[19]), .o_sum(temp1[20]), .o_carry(carry1[20]) );
  full_adder \genblk1[21].fa0  ( .i_bit1(A[21]), .i_bit2(B[21]), .i_carry(
        carry0[20]), .o_sum(temp0[21]), .o_carry(carry0[21]) );
  full_adder \genblk1[21].fa1  ( .i_bit1(A[21]), .i_bit2(B[21]), .i_carry(
        carry1[20]), .o_sum(temp1[21]), .o_carry(carry1[21]) );
  full_adder \genblk1[22].fa0  ( .i_bit1(A[22]), .i_bit2(B[22]), .i_carry(
        carry0[21]), .o_sum(temp0[22]), .o_carry(carry0[22]) );
  full_adder \genblk1[22].fa1  ( .i_bit1(A[22]), .i_bit2(B[22]), .i_carry(
        carry1[21]), .o_sum(temp1[22]), .o_carry(carry1[22]) );
  full_adder \genblk1[23].fa0  ( .i_bit1(A[23]), .i_bit2(B[23]), .i_carry(
        carry0[22]), .o_sum(temp0[23]), .o_carry(carry0[23]) );
  full_adder \genblk1[23].fa1  ( .i_bit1(A[23]), .i_bit2(B[23]), .i_carry(
        carry1[22]), .o_sum(temp1[23]), .o_carry(carry1[23]) );
  full_adder \genblk1[24].fa0  ( .i_bit1(A[24]), .i_bit2(B[24]), .i_carry(
        carry0[23]), .o_sum(temp0[24]), .o_carry(carry0[24]) );
  full_adder \genblk1[24].fa1  ( .i_bit1(A[24]), .i_bit2(B[24]), .i_carry(
        carry1[23]), .o_sum(temp1[24]), .o_carry(carry1[24]) );
  full_adder \genblk1[25].fa0  ( .i_bit1(A[25]), .i_bit2(B[25]), .i_carry(
        carry0[24]), .o_sum(temp0[25]), .o_carry(carry0[25]) );
  full_adder \genblk1[25].fa1  ( .i_bit1(A[25]), .i_bit2(B[25]), .i_carry(
        carry1[24]), .o_sum(temp1[25]), .o_carry(carry1[25]) );
  full_adder \genblk1[26].fa0  ( .i_bit1(A[26]), .i_bit2(B[26]), .i_carry(
        carry0[25]), .o_sum(temp0[26]), .o_carry(carry0[26]) );
  full_adder \genblk1[26].fa1  ( .i_bit1(A[26]), .i_bit2(B[26]), .i_carry(
        carry1[25]), .o_sum(temp1[26]), .o_carry(carry1[26]) );
  full_adder \genblk1[27].fa0  ( .i_bit1(A[27]), .i_bit2(B[27]), .i_carry(
        carry0[26]), .o_sum(temp0[27]), .o_carry(carry0[27]) );
  full_adder \genblk1[27].fa1  ( .i_bit1(A[27]), .i_bit2(B[27]), .i_carry(
        carry1[26]), .o_sum(temp1[27]), .o_carry(carry1[27]) );
  full_adder \genblk1[28].fa0  ( .i_bit1(A[28]), .i_bit2(B[28]), .i_carry(
        carry0[27]), .o_sum(temp0[28]), .o_carry(carry0[28]) );
  full_adder \genblk1[28].fa1  ( .i_bit1(A[28]), .i_bit2(B[28]), .i_carry(
        carry1[27]), .o_sum(temp1[28]), .o_carry(carry1[28]) );
  full_adder \genblk1[29].fa0  ( .i_bit1(A[29]), .i_bit2(B[29]), .i_carry(
        carry0[28]), .o_sum(temp0[29]), .o_carry(carry0[29]) );
  full_adder \genblk1[29].fa1  ( .i_bit1(A[29]), .i_bit2(B[29]), .i_carry(
        carry1[28]), .o_sum(temp1[29]), .o_carry(carry1[29]) );
  full_adder \genblk1[30].fa0  ( .i_bit1(A[30]), .i_bit2(B[30]), .i_carry(
        carry0[29]), .o_sum(temp0[30]), .o_carry(carry0[30]) );
  full_adder \genblk1[30].fa1  ( .i_bit1(A[30]), .i_bit2(B[30]), .i_carry(
        carry1[29]), .o_sum(temp1[30]), .o_carry(carry1[30]) );
  full_adder \genblk1[31].fa0  ( .i_bit1(A[31]), .i_bit2(B[31]), .i_carry(
        carry0[30]), .o_sum(temp0[31]), .o_carry(carry0[31]) );
  full_adder \genblk1[31].fa1  ( .i_bit1(A[31]), .i_bit2(B[31]), .i_carry(
        carry1[30]), .o_sum(temp1[31]), .o_carry(carry1[31]) );
  mux mux_carry1 ( .i0(carry0[31]), .i1(carry1[31]), .sel(n3), .bitout(cout)
         );
  mux mux_carry2 ( .i0(carry0[30]), .i1(carry1[30]), .sel(n13), .bitout(
        cout1) );
  mux \genblk2[0].mux_sum  ( .i0(temp0[0]), .i1(temp1[0]), .sel(n13), 
        .bitout(S[0]) );
  mux \genblk2[1].mux_sum  ( .i0(temp0[1]), .i1(temp1[1]), .sel(n13), 
        .bitout(S[1]) );
  mux \genblk2[2].mux_sum  ( .i0(temp0[2]), .i1(temp1[2]), .sel(n13), 
        .bitout(S[2]) );
  mux \genblk2[3].mux_sum  ( .i0(temp0[3]), .i1(temp1[3]), .sel(n12), 
        .bitout(S[3]) );
  mux \genblk2[4].mux_sum  ( .i0(temp0[4]), .i1(temp1[4]), .sel(n12), 
        .bitout(S[4]) );
  mux \genblk2[5].mux_sum  ( .i0(temp0[5]), .i1(temp1[5]), .sel(n12), 
        .bitout(S[5]) );
  mux \genblk2[6].mux_sum  ( .i0(temp0[6]), .i1(temp1[6]), .sel(n11), 
        .bitout(S[6]) );
  mux \genblk2[7].mux_sum  ( .i0(temp0[7]), .i1(temp1[7]), .sel(n11), 
        .bitout(S[7]) );
  mux \genblk2[8].mux_sum  ( .i0(temp0[8]), .i1(temp1[8]), .sel(n11), 
        .bitout(S[8]) );
  mux \genblk2[9].mux_sum  ( .i0(temp0[9]), .i1(temp1[9]), .sel(n10), 
        .bitout(S[9]) );
  mux \genblk2[10].mux_sum  ( .i0(temp0[10]), .i1(temp1[10]), .sel(n10), 
        .bitout(S[10]) );
  mux \genblk2[11].mux_sum  ( .i0(temp0[11]), .i1(temp1[11]), .sel(n10), 
        .bitout(S[11]) );
  mux \genblk2[12].mux_sum  ( .i0(temp0[12]), .i1(temp1[12]), .sel(n9), 
        .bitout(S[12]) );
  mux \genblk2[13].mux_sum  ( .i0(temp0[13]), .i1(temp1[13]), .sel(n9), 
        .bitout(S[13]) );
  mux \genblk2[14].mux_sum  ( .i0(temp0[14]), .i1(temp1[14]), .sel(n9), 
        .bitout(S[14]) );
  mux \genblk2[15].mux_sum  ( .i0(temp0[15]), .i1(temp1[15]), .sel(n8), 
        .bitout(S[15]) );
  mux \genblk2[16].mux_sum  ( .i0(temp0[16]), .i1(temp1[16]), .sel(n8), 
        .bitout(S[16]) );
  mux \genblk2[17].mux_sum  ( .i0(temp0[17]), .i1(temp1[17]), .sel(n8), 
        .bitout(S[17]) );
  mux \genblk2[18].mux_sum  ( .i0(temp0[18]), .i1(temp1[18]), .sel(n7), 
        .bitout(S[18]) );
  mux \genblk2[19].mux_sum  ( .i0(temp0[19]), .i1(temp1[19]), .sel(n7), 
        .bitout(S[19]) );
  mux \genblk2[20].mux_sum  ( .i0(temp0[20]), .i1(temp1[20]), .sel(n7), 
        .bitout(S[20]) );
  mux \genblk2[21].mux_sum  ( .i0(temp0[21]), .i1(temp1[21]), .sel(n6), 
        .bitout(S[21]) );
  mux \genblk2[22].mux_sum  ( .i0(temp0[22]), .i1(temp1[22]), .sel(n6), 
        .bitout(S[22]) );
  mux \genblk2[23].mux_sum  ( .i0(temp0[23]), .i1(temp1[23]), .sel(n6), 
        .bitout(S[23]) );
  mux \genblk2[24].mux_sum  ( .i0(temp0[24]), .i1(temp1[24]), .sel(n5), 
        .bitout(S[24]) );
  mux \genblk2[25].mux_sum  ( .i0(temp0[25]), .i1(temp1[25]), .sel(n5), 
        .bitout(S[25]) );
  mux \genblk2[26].mux_sum  ( .i0(temp0[26]), .i1(temp1[26]), .sel(n5), 
        .bitout(S[26]) );
  mux \genblk2[27].mux_sum  ( .i0(temp0[27]), .i1(temp1[27]), .sel(n4), 
        .bitout(S[27]) );
  mux \genblk2[28].mux_sum  ( .i0(temp0[28]), .i1(temp1[28]), .sel(n4), 
        .bitout(S[28]) );
  mux \genblk2[29].mux_sum  ( .i0(temp0[29]), .i1(temp1[29]), .sel(n4), 
        .bitout(S[29]) );
  mux \genblk2[30].mux_sum  ( .i0(temp0[30]), .i1(temp1[30]), .sel(n3), 
        .bitout(S[30]) );
  mux \genblk2[31].mux_sum  ( .i0(temp0[31]), .i1(temp1[31]), .sel(n3), 
        .bitout(S[31]) );
  XOR2X1 U4 ( .IN1(B[31]), .IN2(A[31]), .Q(n2) );
  XNOR2X1 U5 ( .IN1(cout1), .IN2(cout), .Q(n1) );
  NBUFFX2 U6 ( .IN(cin), .Q(n12) );
  NBUFFX2 U7 ( .IN(cin), .Q(n11) );
  NBUFFX2 U8 ( .IN(cin), .Q(n10) );
  NBUFFX2 U9 ( .IN(cin), .Q(n9) );
  NBUFFX2 U10 ( .IN(cin), .Q(n8) );
  NBUFFX2 U11 ( .IN(cin), .Q(n7) );
  NBUFFX2 U12 ( .IN(cin), .Q(n6) );
  NBUFFX2 U13 ( .IN(cin), .Q(n5) );
  NBUFFX2 U14 ( .IN(cin), .Q(n4) );
  NBUFFX2 U15 ( .IN(cin), .Q(n3) );
  NBUFFX2 U16 ( .IN(cin), .Q(n13) );
  NOR2X0 U17 ( .IN1(n1), .IN2(n2), .QN(overflow) );
endmodule

