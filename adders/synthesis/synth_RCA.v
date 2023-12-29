
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 18:50:58 2023
/////////////////////////////////////////////////////////////


module RCA ( a, b, Cin, sum, Cout, of );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input Cin;
  output Cout, of;
  wire   n1, n2;
  wire   [31:1] w_C;

  full_adder \loop[0].full_adder_bit_1  ( .i_bit1(a[0]), .i_bit2(b[0]), 
        .i_carry(Cin), .o_sum(sum[0]), .o_carry(w_C[1]) );
  full_adder \loop[1].full_adder_bit_1  ( .i_bit1(a[1]), .i_bit2(b[1]), 
        .i_carry(w_C[1]), .o_sum(sum[1]), .o_carry(w_C[2]) );
  full_adder \loop[2].full_adder_bit_1  ( .i_bit1(a[2]), .i_bit2(b[2]), 
        .i_carry(w_C[2]), .o_sum(sum[2]), .o_carry(w_C[3]) );
  full_adder \loop[3].full_adder_bit_1  ( .i_bit1(a[3]), .i_bit2(b[3]), 
        .i_carry(w_C[3]), .o_sum(sum[3]), .o_carry(w_C[4]) );
  full_adder \loop[4].full_adder_bit_1  ( .i_bit1(a[4]), .i_bit2(b[4]), 
        .i_carry(w_C[4]), .o_sum(sum[4]), .o_carry(w_C[5]) );
  full_adder \loop[5].full_adder_bit_1  ( .i_bit1(a[5]), .i_bit2(b[5]), 
        .i_carry(w_C[5]), .o_sum(sum[5]), .o_carry(w_C[6]) );
  full_adder \loop[6].full_adder_bit_1  ( .i_bit1(a[6]), .i_bit2(b[6]), 
        .i_carry(w_C[6]), .o_sum(sum[6]), .o_carry(w_C[7]) );
  full_adder \loop[7].full_adder_bit_1  ( .i_bit1(a[7]), .i_bit2(b[7]), 
        .i_carry(w_C[7]), .o_sum(sum[7]), .o_carry(w_C[8]) );
  full_adder \loop[8].full_adder_bit_1  ( .i_bit1(a[8]), .i_bit2(b[8]), 
        .i_carry(w_C[8]), .o_sum(sum[8]), .o_carry(w_C[9]) );
  full_adder \loop[9].full_adder_bit_1  ( .i_bit1(a[9]), .i_bit2(b[9]), 
        .i_carry(w_C[9]), .o_sum(sum[9]), .o_carry(w_C[10]) );
  full_adder \loop[10].full_adder_bit_1  ( .i_bit1(a[10]), .i_bit2(b[10]), 
        .i_carry(w_C[10]), .o_sum(sum[10]), .o_carry(w_C[11]) );
  full_adder \loop[11].full_adder_bit_1  ( .i_bit1(a[11]), .i_bit2(b[11]), 
        .i_carry(w_C[11]), .o_sum(sum[11]), .o_carry(w_C[12]) );
  full_adder \loop[12].full_adder_bit_1  ( .i_bit1(a[12]), .i_bit2(b[12]), 
        .i_carry(w_C[12]), .o_sum(sum[12]), .o_carry(w_C[13]) );
  full_adder \loop[13].full_adder_bit_1  ( .i_bit1(a[13]), .i_bit2(b[13]), 
        .i_carry(w_C[13]), .o_sum(sum[13]), .o_carry(w_C[14]) );
  full_adder \loop[14].full_adder_bit_1  ( .i_bit1(a[14]), .i_bit2(b[14]), 
        .i_carry(w_C[14]), .o_sum(sum[14]), .o_carry(w_C[15]) );
  full_adder \loop[15].full_adder_bit_1  ( .i_bit1(a[15]), .i_bit2(b[15]), 
        .i_carry(w_C[15]), .o_sum(sum[15]), .o_carry(w_C[16]) );
  full_adder \loop[16].full_adder_bit_1  ( .i_bit1(a[16]), .i_bit2(b[16]), 
        .i_carry(w_C[16]), .o_sum(sum[16]), .o_carry(w_C[17]) );
  full_adder \loop[17].full_adder_bit_1  ( .i_bit1(a[17]), .i_bit2(b[17]), 
        .i_carry(w_C[17]), .o_sum(sum[17]), .o_carry(w_C[18]) );
  full_adder \loop[18].full_adder_bit_1  ( .i_bit1(a[18]), .i_bit2(b[18]), 
        .i_carry(w_C[18]), .o_sum(sum[18]), .o_carry(w_C[19]) );
  full_adder \loop[19].full_adder_bit_1  ( .i_bit1(a[19]), .i_bit2(b[19]), 
        .i_carry(w_C[19]), .o_sum(sum[19]), .o_carry(w_C[20]) );
  full_adder \loop[20].full_adder_bit_1  ( .i_bit1(a[20]), .i_bit2(b[20]), 
        .i_carry(w_C[20]), .o_sum(sum[20]), .o_carry(w_C[21]) );
  full_adder \loop[21].full_adder_bit_1  ( .i_bit1(a[21]), .i_bit2(b[21]), 
        .i_carry(w_C[21]), .o_sum(sum[21]), .o_carry(w_C[22]) );
  full_adder \loop[22].full_adder_bit_1  ( .i_bit1(a[22]), .i_bit2(b[22]), 
        .i_carry(w_C[22]), .o_sum(sum[22]), .o_carry(w_C[23]) );
  full_adder \loop[23].full_adder_bit_1  ( .i_bit1(a[23]), .i_bit2(b[23]), 
        .i_carry(w_C[23]), .o_sum(sum[23]), .o_carry(w_C[24]) );
  full_adder \loop[24].full_adder_bit_1  ( .i_bit1(a[24]), .i_bit2(b[24]), 
        .i_carry(w_C[24]), .o_sum(sum[24]), .o_carry(w_C[25]) );
  full_adder \loop[25].full_adder_bit_1  ( .i_bit1(a[25]), .i_bit2(b[25]), 
        .i_carry(w_C[25]), .o_sum(sum[25]), .o_carry(w_C[26]) );
  full_adder \loop[26].full_adder_bit_1  ( .i_bit1(a[26]), .i_bit2(b[26]), 
        .i_carry(w_C[26]), .o_sum(sum[26]), .o_carry(w_C[27]) );
  full_adder \loop[27].full_adder_bit_1  ( .i_bit1(a[27]), .i_bit2(b[27]), 
        .i_carry(w_C[27]), .o_sum(sum[27]), .o_carry(w_C[28]) );
  full_adder \loop[28].full_adder_bit_1  ( .i_bit1(a[28]), .i_bit2(b[28]), 
        .i_carry(w_C[28]), .o_sum(sum[28]), .o_carry(w_C[29]) );
  full_adder \loop[29].full_adder_bit_1  ( .i_bit1(a[29]), .i_bit2(b[29]), 
        .i_carry(w_C[29]), .o_sum(sum[29]), .o_carry(w_C[30]) );
  full_adder \loop[30].full_adder_bit_1  ( .i_bit1(a[30]), .i_bit2(b[30]), 
        .i_carry(w_C[30]), .o_sum(sum[30]), .o_carry(w_C[31]) );
  full_adder \loop[31].full_adder_bit_1  ( .i_bit1(a[31]), .i_bit2(b[31]), 
        .i_carry(w_C[31]), .o_sum(sum[31]), .o_carry(Cout) );
  XOR2X1 U2 ( .IN1(b[31]), .IN2(a[31]), .Q(n2) );
  XNOR2X1 U3 ( .IN1(a[31]), .IN2(sum[31]), .Q(n1) );
  NOR2X0 U4 ( .IN1(n1), .IN2(n2), .QN(of) );
endmodule

