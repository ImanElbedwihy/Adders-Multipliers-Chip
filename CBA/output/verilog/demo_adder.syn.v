/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu May  6 00:22:47 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3602195586 */

/* blackbox module four_bit_adder_bbox__0_2 */

module CBA_4bits__0_3(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_2 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox__0_4 */

module CBA_4bits__0_5(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_4 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox__0_6 */

module CBA_4bits__0_7(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_6 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox__0_8 */

module CBA_4bits__0_9(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_8 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox__0_10 */

module CBA_4bits__0_11(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_10 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox__0_12 */

module CBA_4bits__0_13(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_12 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox__0_14 */

module CBA_4bits__0_15(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox__0_14 RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

/* blackbox module four_bit_adder_bbox */

module CBA_4bits(A, B, Cin, Sum, Cout);
   input [3:0]A;
   input [3:0]B;
   input Cin;
   output [3:0]Sum;
   output Cout;

   wire C;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;

   four_bit_adder_bbox RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(C));
   XOR2_X1_LVT i_0_0_0 (.A(A[0]), .B(B[0]), .Z(n_0_0_0));
   XOR2_X1_LVT i_0_0_1 (.A(A[3]), .B(B[3]), .Z(n_0_0_1));
   XOR2_X1_LVT i_0_0_2 (.A(A[2]), .B(B[2]), .Z(n_0_0_2));
   XOR2_X1_LVT i_0_0_3 (.A(A[1]), .B(B[1]), .Z(n_0_0_3));
   NAND4_X1_LVT i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_1), .A4(n_0_0_0), 
      .ZN(n_0_0_4));
   MUX2_X1_LVT i_0_0_5 (.A(Cin), .B(C), .S(n_0_0_4), .Z(Cout));
endmodule

module CBA(A, B, Cin, Sum, Cout, of);
   input [31:0]A;
   input [31:0]B;
   input Cin;
   output [31:0]Sum;
   output Cout;
   output of;

   wire [8:0]C;
   wire n_0_0_0;
   wire n_0_0_1;

   CBA_4bits__0_3 loop_7_CBA_4bits_i (.A({A[31], A[30], A[29], A[28]}), .B({
      B[31], B[30], B[29], B[28]}), .Cin(C[7]), .Sum({Sum[31], Sum[30], Sum[29], 
      Sum[28]}), .Cout(Cout));
   CBA_4bits__0_5 loop_0_CBA_4bits_i (.A({A[3], A[2], A[1], A[0]}), .B({B[3], 
      B[2], B[1], B[0]}), .Cin(Cin), .Sum({Sum[3], Sum[2], Sum[1], Sum[0]}), 
      .Cout(C[1]));
   CBA_4bits__0_7 loop_1_CBA_4bits_i (.A({A[7], A[6], A[5], A[4]}), .B({B[7], 
      B[6], B[5], B[4]}), .Cin(C[1]), .Sum({Sum[7], Sum[6], Sum[5], Sum[4]}), 
      .Cout(C[2]));
   CBA_4bits__0_9 loop_2_CBA_4bits_i (.A({A[11], A[10], A[9], A[8]}), .B({B[11], 
      B[10], B[9], B[8]}), .Cin(C[2]), .Sum({Sum[11], Sum[10], Sum[9], Sum[8]}), 
      .Cout(C[3]));
   CBA_4bits__0_11 loop_3_CBA_4bits_i (.A({A[15], A[14], A[13], A[12]}), 
      .B({B[15], B[14], B[13], B[12]}), .Cin(C[3]), .Sum({Sum[15], Sum[14], 
      Sum[13], Sum[12]}), .Cout(C[4]));
   CBA_4bits__0_13 loop_4_CBA_4bits_i (.A({A[19], A[18], A[17], A[16]}), 
      .B({B[19], B[18], B[17], B[16]}), .Cin(C[4]), .Sum({Sum[19], Sum[18], 
      Sum[17], Sum[16]}), .Cout(C[5]));
   CBA_4bits__0_15 loop_5_CBA_4bits_i (.A({A[23], A[22], A[21], A[20]}), 
      .B({B[23], B[22], B[21], B[20]}), .Cin(C[5]), .Sum({Sum[23], Sum[22], 
      Sum[21], Sum[20]}), .Cout(C[6]));
   CBA_4bits loop_6_CBA_4bits_i (.A({A[27], A[26], A[25], A[24]}), .B({B[27], 
      B[26], B[25], B[24]}), .Cin(C[6]), .Sum({Sum[27], Sum[26], Sum[25], 
      Sum[24]}), .Cout(C[7]));
   XOR2_X1_LVT i_0_0_0 (.A(A[31]), .B(B[31]), .Z(n_0_0_0));
   XNOR2_X1_LVT i_0_0_1 (.A(A[31]), .B(Sum[31]), .ZN(n_0_0_1));
   NOR2_X1_LVT i_0_0_2 (.A1(n_0_0_0), .A2(n_0_0_1), .ZN(of));
endmodule
