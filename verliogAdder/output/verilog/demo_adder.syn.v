/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu May  6 00:14:02 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3286093571 */

module datapath(B, Cin, A, p_0);
   input [31:0]B;
   input Cin;
   input [31:0]A;
   output [32:0]p_0;

   FA_X1_LVT i_0 (.A(Cin), .B(A[0]), .CI(B[0]), .CO(n_0), .S(p_0[0]));
   FA_X1_LVT i_1 (.A(B[1]), .B(A[1]), .CI(n_0), .CO(n_1), .S(p_0[1]));
   FA_X1_LVT i_2 (.A(B[2]), .B(A[2]), .CI(n_1), .CO(n_2), .S(p_0[2]));
   FA_X1_LVT i_3 (.A(B[3]), .B(A[3]), .CI(n_2), .CO(n_3), .S(p_0[3]));
   FA_X1_LVT i_4 (.A(B[4]), .B(A[4]), .CI(n_3), .CO(n_4), .S(p_0[4]));
   FA_X1_LVT i_5 (.A(B[5]), .B(A[5]), .CI(n_4), .CO(n_5), .S(p_0[5]));
   FA_X1_LVT i_6 (.A(B[6]), .B(A[6]), .CI(n_5), .CO(n_6), .S(p_0[6]));
   FA_X1_LVT i_7 (.A(B[7]), .B(A[7]), .CI(n_6), .CO(n_7), .S(p_0[7]));
   FA_X1_LVT i_8 (.A(B[8]), .B(A[8]), .CI(n_7), .CO(n_8), .S(p_0[8]));
   FA_X1_LVT i_9 (.A(B[9]), .B(A[9]), .CI(n_8), .CO(n_9), .S(p_0[9]));
   FA_X1_LVT i_10 (.A(B[10]), .B(A[10]), .CI(n_9), .CO(n_10), .S(p_0[10]));
   FA_X1_LVT i_11 (.A(B[11]), .B(A[11]), .CI(n_10), .CO(n_11), .S(p_0[11]));
   FA_X1_LVT i_12 (.A(B[12]), .B(A[12]), .CI(n_11), .CO(n_12), .S(p_0[12]));
   FA_X1_LVT i_13 (.A(B[13]), .B(A[13]), .CI(n_12), .CO(n_13), .S(p_0[13]));
   FA_X1_LVT i_14 (.A(B[14]), .B(A[14]), .CI(n_13), .CO(n_14), .S(p_0[14]));
   FA_X1_LVT i_15 (.A(B[15]), .B(A[15]), .CI(n_14), .CO(n_15), .S(p_0[15]));
   FA_X1_LVT i_16 (.A(B[16]), .B(A[16]), .CI(n_15), .CO(n_16), .S(p_0[16]));
   FA_X1_LVT i_17 (.A(B[17]), .B(A[17]), .CI(n_16), .CO(n_17), .S(p_0[17]));
   FA_X1_LVT i_18 (.A(B[18]), .B(A[18]), .CI(n_17), .CO(n_18), .S(p_0[18]));
   FA_X1_LVT i_19 (.A(B[19]), .B(A[19]), .CI(n_18), .CO(n_19), .S(p_0[19]));
   FA_X1_LVT i_20 (.A(B[20]), .B(A[20]), .CI(n_19), .CO(n_20), .S(p_0[20]));
   FA_X1_LVT i_21 (.A(B[21]), .B(A[21]), .CI(n_20), .CO(n_21), .S(p_0[21]));
   FA_X1_LVT i_22 (.A(B[22]), .B(A[22]), .CI(n_21), .CO(n_22), .S(p_0[22]));
   FA_X1_LVT i_23 (.A(B[23]), .B(A[23]), .CI(n_22), .CO(n_23), .S(p_0[23]));
   FA_X1_LVT i_24 (.A(B[24]), .B(A[24]), .CI(n_23), .CO(n_24), .S(p_0[24]));
   FA_X1_LVT i_25 (.A(B[25]), .B(A[25]), .CI(n_24), .CO(n_25), .S(p_0[25]));
   FA_X1_LVT i_26 (.A(B[26]), .B(A[26]), .CI(n_25), .CO(n_26), .S(p_0[26]));
   FA_X1_LVT i_27 (.A(B[27]), .B(A[27]), .CI(n_26), .CO(n_27), .S(p_0[27]));
   FA_X1_LVT i_28 (.A(B[28]), .B(A[28]), .CI(n_27), .CO(n_28), .S(p_0[28]));
   FA_X1_LVT i_29 (.A(B[29]), .B(A[29]), .CI(n_28), .CO(n_29), .S(p_0[29]));
   FA_X1_LVT i_30 (.A(B[30]), .B(A[30]), .CI(n_29), .CO(n_30), .S(p_0[30]));
   FA_X1_LVT i_31 (.A(B[31]), .B(A[31]), .CI(n_30), .CO(p_0[32]), .S(p_0[31]));
endmodule

module verilogadder(A, B, Cin, Sum, Cout, overflow);
   input [31:0]A;
   input [31:0]B;
   input Cin;
   output [31:0]Sum;
   output Cout;
   output overflow;

   wire n_0_1_0;
   wire n_0_1_1;

   datapath i_0_0 (.B(B), .Cin(Cin), .A(A), .p_0({Cout, Sum[31], Sum[30], 
      Sum[29], Sum[28], Sum[27], Sum[26], Sum[25], Sum[24], Sum[23], Sum[22], 
      Sum[21], Sum[20], Sum[19], Sum[18], Sum[17], Sum[16], Sum[15], Sum[14], 
      Sum[13], Sum[12], Sum[11], Sum[10], Sum[9], Sum[8], Sum[7], Sum[6], Sum[5], 
      Sum[4], Sum[3], Sum[2], Sum[1], Sum[0]}));
   XOR2_X1_LVT i_0_1_0 (.A(A[31]), .B(B[31]), .Z(n_0_1_0));
   XNOR2_X1_LVT i_0_1_1 (.A(A[31]), .B(Sum[31]), .ZN(n_0_1_1));
   NOR2_X1_LVT i_0_1_2 (.A1(n_0_1_0), .A2(n_0_1_1), .ZN(overflow));
endmodule
