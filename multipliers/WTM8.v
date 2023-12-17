module WTM8(A, B, product);

    input [7:0] A;
    input [7:0] B;
    output [15:0] product;

    wire [7:0] p [7:0];

 
    genvar i;


    generate
        for(i = 0; i < 8; i = i + 1)
            
                    begin
                        
                        assign p[i] =A[i]==0?8'd0:B;
                    end
    endgenerate

    wire s1 [9:0];
    wire c1 [7:0];
    
    assign s1[0]=p[0][0];
    half_adder h0(p[0][1],p[1][0],s1[1],c1[0]);


    full_adder F0 (p[0][2],p[1][1],p[2][0],s1[2],c1[1]);
    full_adder F1 (p[0][3],p[1][2],p[2][1],s1[3],c1[2]);
    full_adder F2 (p[0][4],p[1][3],p[2][2],s1[4],c1[3]);
    full_adder F3 (p[0][5],p[1][4],p[2][3],s1[5],c1[4]);
    full_adder F4 (p[0][6],p[1][5],p[2][4],s1[6],c1[5]);
    full_adder F5 (p[0][7],p[1][6],p[2][5],s1[7],c1[6]);


    half_adder h1(p[1][7],p[2][6],s1[8],c1[7]);
 assign   s1[9]=p[2][7];
  


 wire s2 [9:0];
    wire c2 [7:0];
    
  assign  s1[0]=p[3][0];
    half_adder h2(p[3][1],p[4][0],s2[1],c2[0]);


    full_adder F6 (p[3][2],p[4][1],p[5][0],s2[2],c2[1]);
    full_adder F7 (p[3][3],p[4][2],p[5][1],s2[3],c2[2]);
    full_adder F8 (p[3][4],p[4][3],p[5][2],s2[4],c2[3]);
    full_adder F9 (p[3][5],p[4][4],p[5][3],s2[5],c2[4]);
    full_adder F10 (p[3][6],p[4][5],p[5][4],s2[6],c2[5]);
    full_adder F11 (p[3][7],p[4][6],p[5][5],s2[7],c2[6]);


    half_adder h3(p[4][7],p[5][6],s2[8],c2[7]);
 assign   s2[9]=p[5][7];


wire s3 [12:0];
wire c3 [7:0];
assign s3[0]=s1[0];
 assign s3[1]=s1[1];


    half_adder h4(s1[2],c1[0],s3[2],c3[0]);


    full_adder F12 (s1[3],c1[1],s2[0],s3[3],c3[1]);
    full_adder F13 (s1[4],c1[2],s2[1],s3[4],c3[2]);
    full_adder F14 (s1[5],c1[3],s2[2],s3[5],c3[3]);
    full_adder F15 (s1[6],c1[4],s2[3],s3[6],c3[4]);
    full_adder F16 (s1[7],c1[5],s2[4],s3[7],c3[5]);
    full_adder F17 (s1[8],c1[6],s2[5],s3[8],c3[6]);
    full_adder F18 (s1[9],c1[7],s2[6],s3[9],c3[7]);

 assign   s3[10]=s2[7];
 assign s3[11]=s2[8];
assign s3[12]=s2[9];


  
wire s4 [12:0];
wire c4 [9:0];


assign s4[0]=s3[0];
assign s4[1]=s3[1];
assign s4[2]=s3[2];

    half_adder h5(s3[3],c3[0],s4[3],c4[0]);
    half_adder h6(s3[4],c3[1],s4[4],c4[1]);

    full_adder F19 (s3[5],c3[2],c2[0],s4[5],c4[2]);
    full_adder F20 (s3[6],c3[3],c2[1],s4[6],c4[3]);
    full_adder F21 (s3[7],c3[4],c2[2],s4[7],c4[4]);
    full_adder F22 (s3[8],c3[5],c2[3],s4[8],c4[5]);
    full_adder F23 (s3[9],c3[6],c2[4],s4[9],c4[6]);
    full_adder F24 (s3[10],c3[7],c2[5],s4[10],c4[7]);

    half_adder  h7(s3[11],c2[6],s4[11],c4[8]);
    half_adder h8( s3[12],c2[7],s4[12],c4[9]);
   

   wire s5 [10:0];
wire c5 [7:0];

  assign s5[0]=c4[0];
  assign s5[1]=c4[1];
    half_adder h9(p[6][0],c4[2],s5[2],c5[0]);

  full_adder F25 (p[6][1],p[7][0],c4[3],s5[3],c5[1]);
  full_adder F26 (p[6][2],p[7][1],c4[4],s5[4],c5[2]);
  full_adder F27 (p[6][3],p[7][2],c4[5],s5[5],c5[3]);
  full_adder F28 (p[6][4],p[7][3],c4[6],s5[6],c5[4]);
  full_adder F29 (p[6][5],p[7][4],c4[7],s5[7],c5[5]);
  full_adder F30 (p[6][6],p[7][5],c4[8],s5[8],c5[6]);
  full_adder F31 (p[6][7],p[7][6],c4[9],s5[9],c5[7]);
  assign  s5[10]=p[7][7];

   wire s6 [14:0];
   wire c6 [10:0];

assign  s6[0]=s4[0];
assign  s6[1]=s4[1];
assign  s6[2]=s4[2];
assign  s6[3]=s4[3];
    half_adder h10(s4[4],s5[0],s6[4],c6[0]);
    half_adder h11(s4[5],s5[1],s6[5],c6[1]);
    half_adder h12(s4[6],s5[2],s6[6],c6[2]);
  full_adder F32 (s4[7],s5[3],c5[0],s6[7],c6[3]);

  full_adder F33 (s4[8],s5[4],c5[1],s6[8],c6[4]);
  full_adder F34 (s4[9],s5[5],c5[2],s6[9],c6[5]);
  full_adder F35 (s4[10],s5[6],c5[3],s6[10],c6[6]);
  full_adder F36 (s4[11],s5[7],c5[4],s6[11],c6[7]);
  full_adder F37 (s4[12],s5[8],c5[5],s6[12],c6[8]);

   half_adder h13(s5[9],c5[6],s6[13],c6[9]);
    half_adder h14(s5[10],c5[7],s6[14],c6[10]);


  assign   product[0]=s6[0];
  assign   product[1]=s6[1];
  assign   product[2]=s6[2];
  assign   product[3]=s6[3];


wire c7[10:0];

   half_adder h15(s6[4],c6[0],product[4],c7[0]);
  full_adder F38 (s6[5],c6[1],c7[0],product[5],c7[1]);
  full_adder F39 (s6[6],c6[2],c7[1],product[6],c7[2]);
  full_adder F40 (s6[7],c6[3],c7[2],product[7],c7[3]);
  full_adder F41 (s6[8],c6[4],c7[3],product[8],c7[4]);
  full_adder F42 (s6[9],c6[5],c7[4],product[9],c7[5]);
  full_adder F43 (s6[10],c6[6],c7[5],product[10],c7[6]);
  full_adder F44 (s6[11],c6[7],c7[6],product[11],c7[7]);
  full_adder F45 (s6[12],c6[8],c7[7],product[12],c7[8]);
  full_adder F46 (s6[13],c6[9],c7[8],product[13],c7[9]);
  full_adder F47 (s6[14],c6[10],c7[9],product[14],c7[10]);


 assign product[15]=c7[10];





endmodule