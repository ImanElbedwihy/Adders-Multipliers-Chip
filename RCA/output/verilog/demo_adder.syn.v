/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Wed May  5 23:46:39 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2193011994 */

module RCA(a, b, Cin, sum, Cout, of);
   input [31:0]a;
   input [31:0]b;
   input Cin;
   output [31:0]sum;
   output Cout;
   output of;

   wire n_0_0_1;
   wire loop_0_full_adder_bit_1_p1;
   wire loop_0_full_adder_bit_1_n_2_0;
   wire n_0_0_2;
   wire loop_1_full_adder_bit_1_p1;
   wire loop_1_full_adder_bit_1_n_2_0;
   wire n_0_0_3;
   wire loop_2_full_adder_bit_1_p1;
   wire loop_2_full_adder_bit_1_n_2_0;
   wire n_0_0_4;
   wire loop_3_full_adder_bit_1_p1;
   wire loop_3_full_adder_bit_1_n_2_0;
   wire n_0_0_5;
   wire loop_4_full_adder_bit_1_p1;
   wire loop_4_full_adder_bit_1_n_2_0;
   wire n_0_0_6;
   wire loop_5_full_adder_bit_1_p1;
   wire loop_5_full_adder_bit_1_n_2_0;
   wire n_0_0_7;
   wire loop_6_full_adder_bit_1_p1;
   wire loop_6_full_adder_bit_1_n_2_0;
   wire n_0_0_8;
   wire loop_7_full_adder_bit_1_p1;
   wire loop_7_full_adder_bit_1_n_2_0;
   wire n_0_0_9;
   wire loop_8_full_adder_bit_1_p1;
   wire loop_8_full_adder_bit_1_n_2_0;
   wire n_0_0_10;
   wire loop_9_full_adder_bit_1_p1;
   wire loop_9_full_adder_bit_1_n_2_0;
   wire n_0_0_11;
   wire loop_10_full_adder_bit_1_p1;
   wire loop_10_full_adder_bit_1_n_2_0;
   wire n_0_0_12;
   wire loop_11_full_adder_bit_1_p1;
   wire loop_11_full_adder_bit_1_n_2_0;
   wire n_0_0_13;
   wire loop_12_full_adder_bit_1_p1;
   wire loop_12_full_adder_bit_1_n_2_0;
   wire n_0_0_14;
   wire loop_13_full_adder_bit_1_p1;
   wire loop_13_full_adder_bit_1_n_2_0;
   wire n_0_0_15;
   wire loop_14_full_adder_bit_1_p1;
   wire loop_14_full_adder_bit_1_n_2_0;
   wire n_0_0_16;
   wire loop_15_full_adder_bit_1_p1;
   wire loop_15_full_adder_bit_1_n_2_0;
   wire n_0_0_17;
   wire loop_16_full_adder_bit_1_p1;
   wire loop_16_full_adder_bit_1_n_2_0;
   wire n_0_0_18;
   wire loop_17_full_adder_bit_1_p1;
   wire loop_17_full_adder_bit_1_n_2_0;
   wire n_0_0_19;
   wire loop_18_full_adder_bit_1_p1;
   wire loop_18_full_adder_bit_1_n_2_0;
   wire n_0_0_20;
   wire loop_19_full_adder_bit_1_p1;
   wire loop_19_full_adder_bit_1_n_2_0;
   wire n_0_0_21;
   wire loop_20_full_adder_bit_1_p1;
   wire loop_20_full_adder_bit_1_n_2_0;
   wire n_0_0_22;
   wire loop_21_full_adder_bit_1_p1;
   wire loop_21_full_adder_bit_1_n_2_0;
   wire n_0_0_23;
   wire loop_22_full_adder_bit_1_p1;
   wire loop_22_full_adder_bit_1_n_2_0;
   wire n_0_0_24;
   wire loop_23_full_adder_bit_1_p1;
   wire loop_23_full_adder_bit_1_n_2_0;
   wire n_0_0_25;
   wire loop_24_full_adder_bit_1_p1;
   wire loop_24_full_adder_bit_1_n_2_0;
   wire n_0_0_26;
   wire loop_25_full_adder_bit_1_p1;
   wire loop_25_full_adder_bit_1_n_2_0;
   wire n_0_0_27;
   wire loop_26_full_adder_bit_1_p1;
   wire loop_26_full_adder_bit_1_n_2_0;
   wire n_0_0_28;
   wire loop_27_full_adder_bit_1_p1;
   wire loop_27_full_adder_bit_1_n_2_0;
   wire n_0_0_29;
   wire loop_28_full_adder_bit_1_p1;
   wire loop_28_full_adder_bit_1_n_2_0;
   wire n_0_0_30;
   wire loop_29_full_adder_bit_1_p1;
   wire loop_29_full_adder_bit_1_n_2_0;
   wire n_0_0_31;
   wire loop_30_full_adder_bit_1_p1;
   wire loop_30_full_adder_bit_1_n_2_0;
   wire n_0_0_32;
   wire loop_31_full_adder_bit_1_n_2_0;
   wire n_0_0_0;

   XNOR2_X1_LVT i_0_0_0 (.A(a[31]), .B(sum[31]), .ZN(n_0_0_1));
   NOR2_X1_LVT i_0_0_1 (.A1(n_0_0_0), .A2(n_0_0_1), .ZN(of));
   XOR2_X1_LVT i_0_0_2 (.A(a[0]), .B(b[0]), .Z(loop_0_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_3 (.A(loop_0_full_adder_bit_1_p1), .B(Cin), .Z(sum[0]));
   AOI22_X1_LVT i_0_0_4 (.A1(a[0]), .A2(b[0]), .B1(loop_0_full_adder_bit_1_p1), 
      .B2(Cin), .ZN(loop_0_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_5 (.A(loop_0_full_adder_bit_1_n_2_0), .ZN(n_0_0_2));
   XOR2_X1_LVT i_0_0_6 (.A(a[1]), .B(b[1]), .Z(loop_1_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_7 (.A(loop_1_full_adder_bit_1_p1), .B(n_0_0_2), .Z(sum[1]));
   AOI22_X1_LVT i_0_0_8 (.A1(a[1]), .A2(b[1]), .B1(loop_1_full_adder_bit_1_p1), 
      .B2(n_0_0_2), .ZN(loop_1_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_9 (.A(loop_1_full_adder_bit_1_n_2_0), .ZN(n_0_0_3));
   XOR2_X1_LVT i_0_0_10 (.A(a[2]), .B(b[2]), .Z(loop_2_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_11 (.A(loop_2_full_adder_bit_1_p1), .B(n_0_0_3), .Z(sum[2]));
   AOI22_X1_LVT i_0_0_12 (.A1(a[2]), .A2(b[2]), .B1(loop_2_full_adder_bit_1_p1), 
      .B2(n_0_0_3), .ZN(loop_2_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_13 (.A(loop_2_full_adder_bit_1_n_2_0), .ZN(n_0_0_4));
   XOR2_X1_LVT i_0_0_14 (.A(a[3]), .B(b[3]), .Z(loop_3_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_15 (.A(loop_3_full_adder_bit_1_p1), .B(n_0_0_4), .Z(sum[3]));
   AOI22_X1_LVT i_0_0_16 (.A1(a[3]), .A2(b[3]), .B1(loop_3_full_adder_bit_1_p1), 
      .B2(n_0_0_4), .ZN(loop_3_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_17 (.A(loop_3_full_adder_bit_1_n_2_0), .ZN(n_0_0_5));
   XOR2_X1_LVT i_0_0_18 (.A(a[4]), .B(b[4]), .Z(loop_4_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_19 (.A(loop_4_full_adder_bit_1_p1), .B(n_0_0_5), .Z(sum[4]));
   AOI22_X1_LVT i_0_0_20 (.A1(a[4]), .A2(b[4]), .B1(loop_4_full_adder_bit_1_p1), 
      .B2(n_0_0_5), .ZN(loop_4_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_21 (.A(loop_4_full_adder_bit_1_n_2_0), .ZN(n_0_0_6));
   XOR2_X1_LVT i_0_0_22 (.A(a[5]), .B(b[5]), .Z(loop_5_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_23 (.A(loop_5_full_adder_bit_1_p1), .B(n_0_0_6), .Z(sum[5]));
   AOI22_X1_LVT i_0_0_24 (.A1(a[5]), .A2(b[5]), .B1(loop_5_full_adder_bit_1_p1), 
      .B2(n_0_0_6), .ZN(loop_5_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_25 (.A(loop_5_full_adder_bit_1_n_2_0), .ZN(n_0_0_7));
   XOR2_X1_LVT i_0_0_26 (.A(a[6]), .B(b[6]), .Z(loop_6_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_27 (.A(loop_6_full_adder_bit_1_p1), .B(n_0_0_7), .Z(sum[6]));
   AOI22_X1_LVT i_0_0_28 (.A1(a[6]), .A2(b[6]), .B1(loop_6_full_adder_bit_1_p1), 
      .B2(n_0_0_7), .ZN(loop_6_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_29 (.A(loop_6_full_adder_bit_1_n_2_0), .ZN(n_0_0_8));
   XOR2_X1_LVT i_0_0_30 (.A(a[7]), .B(b[7]), .Z(loop_7_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_31 (.A(loop_7_full_adder_bit_1_p1), .B(n_0_0_8), .Z(sum[7]));
   AOI22_X1_LVT i_0_0_32 (.A1(a[7]), .A2(b[7]), .B1(loop_7_full_adder_bit_1_p1), 
      .B2(n_0_0_8), .ZN(loop_7_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_33 (.A(loop_7_full_adder_bit_1_n_2_0), .ZN(n_0_0_9));
   XOR2_X1_LVT i_0_0_34 (.A(a[8]), .B(b[8]), .Z(loop_8_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_35 (.A(loop_8_full_adder_bit_1_p1), .B(n_0_0_9), .Z(sum[8]));
   AOI22_X1_LVT i_0_0_36 (.A1(a[8]), .A2(b[8]), .B1(loop_8_full_adder_bit_1_p1), 
      .B2(n_0_0_9), .ZN(loop_8_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_37 (.A(loop_8_full_adder_bit_1_n_2_0), .ZN(n_0_0_10));
   XOR2_X1_LVT i_0_0_38 (.A(a[9]), .B(b[9]), .Z(loop_9_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_39 (.A(loop_9_full_adder_bit_1_p1), .B(n_0_0_10), .Z(sum[9]));
   AOI22_X1_LVT i_0_0_40 (.A1(a[9]), .A2(b[9]), .B1(loop_9_full_adder_bit_1_p1), 
      .B2(n_0_0_10), .ZN(loop_9_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_41 (.A(loop_9_full_adder_bit_1_n_2_0), .ZN(n_0_0_11));
   XOR2_X1_LVT i_0_0_42 (.A(a[10]), .B(b[10]), .Z(loop_10_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_43 (.A(loop_10_full_adder_bit_1_p1), .B(n_0_0_11), .Z(
      sum[10]));
   AOI22_X1_LVT i_0_0_44 (.A1(a[10]), .A2(b[10]), .B1(
      loop_10_full_adder_bit_1_p1), .B2(n_0_0_11), .ZN(
      loop_10_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_45 (.A(loop_10_full_adder_bit_1_n_2_0), .ZN(n_0_0_12));
   XOR2_X1_LVT i_0_0_46 (.A(a[11]), .B(b[11]), .Z(loop_11_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_47 (.A(loop_11_full_adder_bit_1_p1), .B(n_0_0_12), .Z(
      sum[11]));
   AOI22_X1_LVT i_0_0_48 (.A1(a[11]), .A2(b[11]), .B1(
      loop_11_full_adder_bit_1_p1), .B2(n_0_0_12), .ZN(
      loop_11_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_49 (.A(loop_11_full_adder_bit_1_n_2_0), .ZN(n_0_0_13));
   XOR2_X1_LVT i_0_0_50 (.A(a[12]), .B(b[12]), .Z(loop_12_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_51 (.A(loop_12_full_adder_bit_1_p1), .B(n_0_0_13), .Z(
      sum[12]));
   AOI22_X1_LVT i_0_0_52 (.A1(a[12]), .A2(b[12]), .B1(
      loop_12_full_adder_bit_1_p1), .B2(n_0_0_13), .ZN(
      loop_12_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_53 (.A(loop_12_full_adder_bit_1_n_2_0), .ZN(n_0_0_14));
   XOR2_X1_LVT i_0_0_54 (.A(a[13]), .B(b[13]), .Z(loop_13_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_55 (.A(loop_13_full_adder_bit_1_p1), .B(n_0_0_14), .Z(
      sum[13]));
   AOI22_X1_LVT i_0_0_56 (.A1(a[13]), .A2(b[13]), .B1(
      loop_13_full_adder_bit_1_p1), .B2(n_0_0_14), .ZN(
      loop_13_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_57 (.A(loop_13_full_adder_bit_1_n_2_0), .ZN(n_0_0_15));
   XOR2_X1_LVT i_0_0_58 (.A(a[14]), .B(b[14]), .Z(loop_14_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_59 (.A(loop_14_full_adder_bit_1_p1), .B(n_0_0_15), .Z(
      sum[14]));
   AOI22_X1_LVT i_0_0_60 (.A1(a[14]), .A2(b[14]), .B1(
      loop_14_full_adder_bit_1_p1), .B2(n_0_0_15), .ZN(
      loop_14_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_61 (.A(loop_14_full_adder_bit_1_n_2_0), .ZN(n_0_0_16));
   XOR2_X1_LVT i_0_0_62 (.A(a[15]), .B(b[15]), .Z(loop_15_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_63 (.A(loop_15_full_adder_bit_1_p1), .B(n_0_0_16), .Z(
      sum[15]));
   AOI22_X1_LVT i_0_0_64 (.A1(a[15]), .A2(b[15]), .B1(
      loop_15_full_adder_bit_1_p1), .B2(n_0_0_16), .ZN(
      loop_15_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_65 (.A(loop_15_full_adder_bit_1_n_2_0), .ZN(n_0_0_17));
   XOR2_X1_LVT i_0_0_66 (.A(a[16]), .B(b[16]), .Z(loop_16_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_67 (.A(loop_16_full_adder_bit_1_p1), .B(n_0_0_17), .Z(
      sum[16]));
   AOI22_X1_LVT i_0_0_68 (.A1(a[16]), .A2(b[16]), .B1(
      loop_16_full_adder_bit_1_p1), .B2(n_0_0_17), .ZN(
      loop_16_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_69 (.A(loop_16_full_adder_bit_1_n_2_0), .ZN(n_0_0_18));
   XOR2_X1_LVT i_0_0_70 (.A(a[17]), .B(b[17]), .Z(loop_17_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_71 (.A(loop_17_full_adder_bit_1_p1), .B(n_0_0_18), .Z(
      sum[17]));
   AOI22_X1_LVT i_0_0_72 (.A1(a[17]), .A2(b[17]), .B1(
      loop_17_full_adder_bit_1_p1), .B2(n_0_0_18), .ZN(
      loop_17_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_73 (.A(loop_17_full_adder_bit_1_n_2_0), .ZN(n_0_0_19));
   XOR2_X1_LVT i_0_0_74 (.A(a[18]), .B(b[18]), .Z(loop_18_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_75 (.A(loop_18_full_adder_bit_1_p1), .B(n_0_0_19), .Z(
      sum[18]));
   AOI22_X1_LVT i_0_0_76 (.A1(a[18]), .A2(b[18]), .B1(
      loop_18_full_adder_bit_1_p1), .B2(n_0_0_19), .ZN(
      loop_18_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_77 (.A(loop_18_full_adder_bit_1_n_2_0), .ZN(n_0_0_20));
   XOR2_X1_LVT i_0_0_78 (.A(a[19]), .B(b[19]), .Z(loop_19_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_79 (.A(loop_19_full_adder_bit_1_p1), .B(n_0_0_20), .Z(
      sum[19]));
   AOI22_X1_LVT i_0_0_80 (.A1(a[19]), .A2(b[19]), .B1(
      loop_19_full_adder_bit_1_p1), .B2(n_0_0_20), .ZN(
      loop_19_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_81 (.A(loop_19_full_adder_bit_1_n_2_0), .ZN(n_0_0_21));
   XOR2_X1_LVT i_0_0_82 (.A(a[20]), .B(b[20]), .Z(loop_20_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_83 (.A(loop_20_full_adder_bit_1_p1), .B(n_0_0_21), .Z(
      sum[20]));
   AOI22_X1_LVT i_0_0_84 (.A1(a[20]), .A2(b[20]), .B1(
      loop_20_full_adder_bit_1_p1), .B2(n_0_0_21), .ZN(
      loop_20_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_85 (.A(loop_20_full_adder_bit_1_n_2_0), .ZN(n_0_0_22));
   XOR2_X1_LVT i_0_0_86 (.A(a[21]), .B(b[21]), .Z(loop_21_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_87 (.A(loop_21_full_adder_bit_1_p1), .B(n_0_0_22), .Z(
      sum[21]));
   AOI22_X1_LVT i_0_0_88 (.A1(a[21]), .A2(b[21]), .B1(
      loop_21_full_adder_bit_1_p1), .B2(n_0_0_22), .ZN(
      loop_21_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_89 (.A(loop_21_full_adder_bit_1_n_2_0), .ZN(n_0_0_23));
   XOR2_X1_LVT i_0_0_90 (.A(a[22]), .B(b[22]), .Z(loop_22_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_91 (.A(loop_22_full_adder_bit_1_p1), .B(n_0_0_23), .Z(
      sum[22]));
   AOI22_X1_LVT i_0_0_92 (.A1(a[22]), .A2(b[22]), .B1(
      loop_22_full_adder_bit_1_p1), .B2(n_0_0_23), .ZN(
      loop_22_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_93 (.A(loop_22_full_adder_bit_1_n_2_0), .ZN(n_0_0_24));
   XOR2_X1_LVT i_0_0_94 (.A(a[23]), .B(b[23]), .Z(loop_23_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_95 (.A(loop_23_full_adder_bit_1_p1), .B(n_0_0_24), .Z(
      sum[23]));
   AOI22_X1_LVT i_0_0_96 (.A1(a[23]), .A2(b[23]), .B1(
      loop_23_full_adder_bit_1_p1), .B2(n_0_0_24), .ZN(
      loop_23_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_97 (.A(loop_23_full_adder_bit_1_n_2_0), .ZN(n_0_0_25));
   XOR2_X1_LVT i_0_0_98 (.A(a[24]), .B(b[24]), .Z(loop_24_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_99 (.A(loop_24_full_adder_bit_1_p1), .B(n_0_0_25), .Z(
      sum[24]));
   AOI22_X1_LVT i_0_0_100 (.A1(a[24]), .A2(b[24]), .B1(
      loop_24_full_adder_bit_1_p1), .B2(n_0_0_25), .ZN(
      loop_24_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_101 (.A(loop_24_full_adder_bit_1_n_2_0), .ZN(n_0_0_26));
   XOR2_X1_LVT i_0_0_102 (.A(a[25]), .B(b[25]), .Z(loop_25_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_103 (.A(loop_25_full_adder_bit_1_p1), .B(n_0_0_26), 
      .Z(sum[25]));
   AOI22_X1_LVT i_0_0_104 (.A1(a[25]), .A2(b[25]), .B1(
      loop_25_full_adder_bit_1_p1), .B2(n_0_0_26), .ZN(
      loop_25_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_105 (.A(loop_25_full_adder_bit_1_n_2_0), .ZN(n_0_0_27));
   XOR2_X1_LVT i_0_0_106 (.A(a[26]), .B(b[26]), .Z(loop_26_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_107 (.A(loop_26_full_adder_bit_1_p1), .B(n_0_0_27), 
      .Z(sum[26]));
   AOI22_X1_LVT i_0_0_108 (.A1(a[26]), .A2(b[26]), .B1(
      loop_26_full_adder_bit_1_p1), .B2(n_0_0_27), .ZN(
      loop_26_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_109 (.A(loop_26_full_adder_bit_1_n_2_0), .ZN(n_0_0_28));
   XOR2_X1_LVT i_0_0_110 (.A(a[27]), .B(b[27]), .Z(loop_27_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_111 (.A(loop_27_full_adder_bit_1_p1), .B(n_0_0_28), 
      .Z(sum[27]));
   AOI22_X1_LVT i_0_0_112 (.A1(a[27]), .A2(b[27]), .B1(
      loop_27_full_adder_bit_1_p1), .B2(n_0_0_28), .ZN(
      loop_27_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_113 (.A(loop_27_full_adder_bit_1_n_2_0), .ZN(n_0_0_29));
   XOR2_X1_LVT i_0_0_114 (.A(a[28]), .B(b[28]), .Z(loop_28_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_115 (.A(loop_28_full_adder_bit_1_p1), .B(n_0_0_29), 
      .Z(sum[28]));
   AOI22_X1_LVT i_0_0_116 (.A1(a[28]), .A2(b[28]), .B1(
      loop_28_full_adder_bit_1_p1), .B2(n_0_0_29), .ZN(
      loop_28_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_117 (.A(loop_28_full_adder_bit_1_n_2_0), .ZN(n_0_0_30));
   XOR2_X1_LVT i_0_0_118 (.A(a[29]), .B(b[29]), .Z(loop_29_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_119 (.A(loop_29_full_adder_bit_1_p1), .B(n_0_0_30), 
      .Z(sum[29]));
   AOI22_X1_LVT i_0_0_120 (.A1(a[29]), .A2(b[29]), .B1(
      loop_29_full_adder_bit_1_p1), .B2(n_0_0_30), .ZN(
      loop_29_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_121 (.A(loop_29_full_adder_bit_1_n_2_0), .ZN(n_0_0_31));
   XOR2_X1_LVT i_0_0_122 (.A(a[30]), .B(b[30]), .Z(loop_30_full_adder_bit_1_p1));
   XOR2_X1_LVT i_0_0_123 (.A(loop_30_full_adder_bit_1_p1), .B(n_0_0_31), 
      .Z(sum[30]));
   AOI22_X1_LVT i_0_0_124 (.A1(a[30]), .A2(b[30]), .B1(
      loop_30_full_adder_bit_1_p1), .B2(n_0_0_31), .ZN(
      loop_30_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_125 (.A(loop_30_full_adder_bit_1_n_2_0), .ZN(n_0_0_32));
   XOR2_X1_LVT i_0_0_126 (.A(n_0_0_0), .B(n_0_0_32), .Z(sum[31]));
   AOI22_X1_LVT i_0_0_127 (.A1(a[31]), .A2(b[31]), .B1(n_0_0_0), .B2(n_0_0_32), 
      .ZN(loop_31_full_adder_bit_1_n_2_0));
   INV_X1_LVT i_0_0_128 (.A(loop_31_full_adder_bit_1_n_2_0), .ZN(Cout));
   XOR2_X1_LVT i_0_0_129 (.A(a[31]), .B(b[31]), .Z(n_0_0_0));
endmodule
