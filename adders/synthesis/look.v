
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 18:46:06 2023
/////////////////////////////////////////////////////////////


module look ( A, B, Cin, Sum, Cout, overflow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout, overflow;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64;

  XNOR2X1 U2 ( .IN1(B[31]), .IN2(n3), .Q(n2) );
  XOR2X1 U3 ( .IN1(n4), .IN2(n5), .Q(Sum[9]) );
  XOR2X1 U4 ( .IN1(n6), .IN2(n7), .Q(Sum[8]) );
  XOR2X1 U5 ( .IN1(n8), .IN2(n9), .Q(Sum[7]) );
  XOR2X1 U6 ( .IN1(n10), .IN2(n11), .Q(Sum[6]) );
  XOR2X1 U7 ( .IN1(n12), .IN2(n13), .Q(Sum[5]) );
  XOR2X1 U8 ( .IN1(n14), .IN2(n15), .Q(Sum[4]) );
  XOR2X1 U9 ( .IN1(n16), .IN2(n17), .Q(Sum[3]) );
  XOR2X1 U10 ( .IN1(n3), .IN2(n1), .Q(Sum[31]) );
  XOR2X1 U11 ( .IN1(n18), .IN2(n19), .Q(Sum[30]) );
  XOR2X1 U12 ( .IN1(n20), .IN2(n21), .Q(Sum[2]) );
  XOR2X1 U13 ( .IN1(n22), .IN2(n23), .Q(Sum[29]) );
  XOR2X1 U14 ( .IN1(n24), .IN2(n25), .Q(Sum[28]) );
  XOR2X1 U15 ( .IN1(n26), .IN2(n27), .Q(Sum[27]) );
  XOR2X1 U16 ( .IN1(n28), .IN2(n29), .Q(Sum[26]) );
  XOR2X1 U17 ( .IN1(n30), .IN2(n31), .Q(Sum[25]) );
  XOR2X1 U18 ( .IN1(n32), .IN2(n33), .Q(Sum[24]) );
  XOR2X1 U19 ( .IN1(n34), .IN2(n35), .Q(Sum[23]) );
  XOR2X1 U20 ( .IN1(n36), .IN2(n37), .Q(Sum[22]) );
  XOR2X1 U21 ( .IN1(n38), .IN2(n39), .Q(Sum[21]) );
  XOR2X1 U22 ( .IN1(n40), .IN2(n41), .Q(Sum[20]) );
  XOR2X1 U23 ( .IN1(n42), .IN2(n43), .Q(Sum[1]) );
  XOR2X1 U24 ( .IN1(n44), .IN2(n45), .Q(Sum[19]) );
  XOR2X1 U25 ( .IN1(n46), .IN2(n47), .Q(Sum[18]) );
  XOR2X1 U26 ( .IN1(n48), .IN2(n49), .Q(Sum[17]) );
  XOR2X1 U27 ( .IN1(n50), .IN2(n51), .Q(Sum[16]) );
  XOR2X1 U28 ( .IN1(n52), .IN2(n53), .Q(Sum[15]) );
  XOR2X1 U29 ( .IN1(n54), .IN2(n55), .Q(Sum[14]) );
  XOR2X1 U30 ( .IN1(n56), .IN2(n57), .Q(Sum[13]) );
  XOR2X1 U31 ( .IN1(n58), .IN2(n59), .Q(Sum[12]) );
  XOR2X1 U32 ( .IN1(n60), .IN2(n61), .Q(Sum[11]) );
  XOR2X1 U33 ( .IN1(n62), .IN2(n63), .Q(Sum[10]) );
  XOR2X1 U34 ( .IN1(Cin), .IN2(n64), .Q(Sum[0]) );
  AO22X1 U35 ( .IN1(A[31]), .IN2(B[31]), .IN3(n1), .IN4(n3), .Q(Cout) );
  AO22X1 U36 ( .IN1(A[30]), .IN2(B[30]), .IN3(n19), .IN4(n18), .Q(n3) );
  AO22X1 U37 ( .IN1(A[29]), .IN2(B[29]), .IN3(n23), .IN4(n22), .Q(n18) );
  AO22X1 U38 ( .IN1(A[28]), .IN2(B[28]), .IN3(n25), .IN4(n24), .Q(n22) );
  AO22X1 U39 ( .IN1(A[27]), .IN2(B[27]), .IN3(n27), .IN4(n26), .Q(n24) );
  AO22X1 U40 ( .IN1(A[26]), .IN2(B[26]), .IN3(n29), .IN4(n28), .Q(n26) );
  AO22X1 U41 ( .IN1(A[25]), .IN2(B[25]), .IN3(n31), .IN4(n30), .Q(n28) );
  AO22X1 U42 ( .IN1(A[24]), .IN2(B[24]), .IN3(n33), .IN4(n32), .Q(n30) );
  AO22X1 U43 ( .IN1(A[23]), .IN2(B[23]), .IN3(n35), .IN4(n34), .Q(n32) );
  AO22X1 U44 ( .IN1(A[22]), .IN2(B[22]), .IN3(n37), .IN4(n36), .Q(n34) );
  AO22X1 U45 ( .IN1(A[21]), .IN2(B[21]), .IN3(n39), .IN4(n38), .Q(n36) );
  AO22X1 U46 ( .IN1(A[20]), .IN2(B[20]), .IN3(n41), .IN4(n40), .Q(n38) );
  AO22X1 U47 ( .IN1(A[19]), .IN2(B[19]), .IN3(n45), .IN4(n44), .Q(n40) );
  AO22X1 U48 ( .IN1(A[18]), .IN2(B[18]), .IN3(n47), .IN4(n46), .Q(n44) );
  AO22X1 U49 ( .IN1(A[17]), .IN2(B[17]), .IN3(n49), .IN4(n48), .Q(n46) );
  AO22X1 U50 ( .IN1(A[16]), .IN2(B[16]), .IN3(n51), .IN4(n50), .Q(n48) );
  AO22X1 U51 ( .IN1(A[15]), .IN2(B[15]), .IN3(n53), .IN4(n52), .Q(n50) );
  AO22X1 U52 ( .IN1(A[14]), .IN2(B[14]), .IN3(n55), .IN4(n54), .Q(n52) );
  AO22X1 U53 ( .IN1(A[13]), .IN2(B[13]), .IN3(n57), .IN4(n56), .Q(n54) );
  AO22X1 U54 ( .IN1(A[12]), .IN2(B[12]), .IN3(n59), .IN4(n58), .Q(n56) );
  AO22X1 U55 ( .IN1(A[11]), .IN2(B[11]), .IN3(n61), .IN4(n60), .Q(n58) );
  AO22X1 U56 ( .IN1(A[10]), .IN2(B[10]), .IN3(n63), .IN4(n62), .Q(n60) );
  AO22X1 U57 ( .IN1(A[9]), .IN2(B[9]), .IN3(n5), .IN4(n4), .Q(n62) );
  AO22X1 U58 ( .IN1(A[8]), .IN2(B[8]), .IN3(n7), .IN4(n6), .Q(n4) );
  AO22X1 U59 ( .IN1(A[7]), .IN2(B[7]), .IN3(n9), .IN4(n8), .Q(n6) );
  AO22X1 U60 ( .IN1(A[6]), .IN2(B[6]), .IN3(n11), .IN4(n10), .Q(n8) );
  AO22X1 U61 ( .IN1(A[5]), .IN2(B[5]), .IN3(n13), .IN4(n12), .Q(n10) );
  AO22X1 U62 ( .IN1(A[4]), .IN2(B[4]), .IN3(n15), .IN4(n14), .Q(n12) );
  AO22X1 U63 ( .IN1(A[3]), .IN2(B[3]), .IN3(n17), .IN4(n16), .Q(n14) );
  AO22X1 U64 ( .IN1(A[2]), .IN2(B[2]), .IN3(n21), .IN4(n20), .Q(n16) );
  AO22X1 U65 ( .IN1(A[1]), .IN2(B[1]), .IN3(n43), .IN4(n42), .Q(n20) );
  AO22X1 U66 ( .IN1(A[0]), .IN2(B[0]), .IN3(Cin), .IN4(n64), .Q(n42) );
  XOR2X1 U67 ( .IN1(A[0]), .IN2(B[0]), .Q(n64) );
  XOR2X1 U68 ( .IN1(A[1]), .IN2(B[1]), .Q(n43) );
  XOR2X1 U69 ( .IN1(A[2]), .IN2(B[2]), .Q(n21) );
  XOR2X1 U70 ( .IN1(A[3]), .IN2(B[3]), .Q(n17) );
  XOR2X1 U71 ( .IN1(A[4]), .IN2(B[4]), .Q(n15) );
  XOR2X1 U72 ( .IN1(A[5]), .IN2(B[5]), .Q(n13) );
  XOR2X1 U73 ( .IN1(A[6]), .IN2(B[6]), .Q(n11) );
  XOR2X1 U74 ( .IN1(A[7]), .IN2(B[7]), .Q(n9) );
  XOR2X1 U75 ( .IN1(A[8]), .IN2(B[8]), .Q(n7) );
  XOR2X1 U76 ( .IN1(A[9]), .IN2(B[9]), .Q(n5) );
  XOR2X1 U77 ( .IN1(A[10]), .IN2(B[10]), .Q(n63) );
  XOR2X1 U78 ( .IN1(A[11]), .IN2(B[11]), .Q(n61) );
  XOR2X1 U79 ( .IN1(A[12]), .IN2(B[12]), .Q(n59) );
  XOR2X1 U80 ( .IN1(A[13]), .IN2(B[13]), .Q(n57) );
  XOR2X1 U81 ( .IN1(A[14]), .IN2(B[14]), .Q(n55) );
  XOR2X1 U82 ( .IN1(A[15]), .IN2(B[15]), .Q(n53) );
  XOR2X1 U83 ( .IN1(A[16]), .IN2(B[16]), .Q(n51) );
  XOR2X1 U84 ( .IN1(A[17]), .IN2(B[17]), .Q(n49) );
  XOR2X1 U85 ( .IN1(A[18]), .IN2(B[18]), .Q(n47) );
  XOR2X1 U86 ( .IN1(A[19]), .IN2(B[19]), .Q(n45) );
  XOR2X1 U87 ( .IN1(A[20]), .IN2(B[20]), .Q(n41) );
  XOR2X1 U88 ( .IN1(A[21]), .IN2(B[21]), .Q(n39) );
  XOR2X1 U89 ( .IN1(A[22]), .IN2(B[22]), .Q(n37) );
  XOR2X1 U90 ( .IN1(A[23]), .IN2(B[23]), .Q(n35) );
  XOR2X1 U91 ( .IN1(A[24]), .IN2(B[24]), .Q(n33) );
  XOR2X1 U92 ( .IN1(A[25]), .IN2(B[25]), .Q(n31) );
  XOR2X1 U93 ( .IN1(A[26]), .IN2(B[26]), .Q(n29) );
  XOR2X1 U94 ( .IN1(A[27]), .IN2(B[27]), .Q(n27) );
  XOR2X1 U95 ( .IN1(A[28]), .IN2(B[28]), .Q(n25) );
  XOR2X1 U96 ( .IN1(A[29]), .IN2(B[29]), .Q(n23) );
  XOR2X1 U97 ( .IN1(A[30]), .IN2(B[30]), .Q(n19) );
  XOR2X1 U98 ( .IN1(A[31]), .IN2(B[31]), .Q(n1) );
  NOR2X0 U99 ( .IN1(n1), .IN2(n2), .QN(overflow) );
endmodule

