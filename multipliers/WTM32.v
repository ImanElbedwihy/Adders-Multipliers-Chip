module WTM32(op1,op2,result);
    
input [31:0] op1;
input [31:0] op2;
output [63:0] result;
wire [63:0] product;
wire [31:0] a;
wire [31:0] b;
assign a = (op1[31] == 1)? ((~op1) + 1) : op1;
assign b = (op2[31] == 1)? ((~op2) + 1) : op2;

wire [15:0]c[15:0];

WTM8 w1(a[7:0],b[7:0],c[0]);
WTM8 w2(a[7:0],b[15:8],c[1]);
WTM8 w3(a[7:0],b[23:16],c[2]);
WTM8 w4(a[7:0],b[31:24],c[3]);

WTM8 w5(a[15:8],b[7:0],c[4]);
WTM8 w6(a[15:8],b[15:8],c[5]);
WTM8 w7(a[15:8],b[23:16],c[6]);
WTM8 w8(a[15:8],b[31:24],c[7]);

WTM8 w9(a[23:16],b[7:0],c[8]);
WTM8 w10(a[23:16],b[15:8],c[9]);
WTM8 w11(a[23:16],b[23:16],c[10]);
WTM8 w12(a[23:16],b[31:24],c[11]);


WTM8 w13(a[31:24],b[7:0],c[12]);
WTM8 w14(a[31:24],b[15:8],c[13]);
WTM8 w15(a[31:24],b[23:16],c[14]);
WTM8 w16(a[31:24],b[31:24],c[15]);

assign product[7:0]=c[0][7:0];
//level 1
wire [8:0]c1;
wire[7:0] temp;
assign c1[0]=1'b0;
genvar i;
generate
for( i=0;i<8;i=i+1)

    full_adder f0(c[0][i+8],c[1][i],c1[i],temp[i],c1[i+1]);

endgenerate
wire [8:0]c2;
assign c2[0]=c1[8];
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp[i],c[4][i],c2[i],product[i+8],c2[i+1]);

endgenerate
//level 2
wire [8:0]c3;
assign c3[0]=c2[8];
wire [7:0]temp1;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(c[1][i+8],c[2][i],c3[i],temp1[i],c3[i+1]);

endgenerate
wire [8:0]c4;
assign c4[0]=c3[8];

wire [7:0]temp2;

generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp1[i],c[4][i+8],c4[i],temp2[i],c4[i+1]);

endgenerate
wire [8:0]c5;
assign c5[0]=c4[8];

wire [7:0]temp3;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp2[i],c[5][i],c5[i],temp3[i],c5[i+1]);

endgenerate
wire[8:0] c6;
assign c6[0]=c5[8];

wire [7:0]temp4;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp3[i],c[8][i],c6[i],temp4[i],c6[i+1]);
endgenerate

wire [8:0]c7;
assign c7[0]=c6[8];
generate

for( i=0;i<8;i=i+1)
    full_adder f0(temp4[i],c[12][i],c7[i],product[i+16],c7[i+1]);
endgenerate
//level 3
wire [8:0]c8;
assign c8[0]=c7[8];

wire [7:0]temp5;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(c[2][i+8],c[3][i],c8[i],temp5[i],c8[i+1]);

endgenerate
wire [8:0]c9;
assign c9[0]=c8[8];

wire [7:0]temp6;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp5[i],c[5][8+i],c9[i],temp6[i],c9[i+1]);

endgenerate
wire[8:0] c10;
assign c10[0]=c9[8];

wire [7:0]temp7;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp6[i],c[6][i],c10[i],temp7[i],c10[i+1]);

endgenerate

wire [8:0]c11;
assign c11[0]=c10[8];

wire [7:0]temp8;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp7[i],c[8][8+i],c11[i],temp8[i],c11[i+1]);

endgenerate
wire [8:0]c12;
assign c12[0]=c11[8];

wire [7:0]temp9;

generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp8[i],c[9][i],c12[i],temp9[i],c12[i+1]);

endgenerate
wire [8:0]c13;
assign c13[0]=c12[8];

wire [7:0]temp10;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp9[i],c[12][8+i],c13[i],temp10[i],c13[i+1]);

endgenerate

wire [8:0]c14;
assign c14[0]=c13[8];

generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp10[i],c[13][i],c14[i],product[i+24],c14[i+1]);
endgenerate
//level 4
wire [8:0]c15;
assign c15[0]=c14[8];

wire [7:0]temp11;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(c[3][i+8],c[6][8+i],c15[i],temp11[i],c15[i+1]);
endgenerate


wire [8:0]c16;
assign c16[0]=c15[8];

wire [7:0]temp12;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp11[i],c[7][i],c16[i],temp12[i],c16[i+1]);
endgenerate




wire [8:0]c17;
assign c17[0]=c16[8];

wire [7:0]temp13;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp12[i],c[9][8+i],c17[i],temp13[i],c17[i+1]);
endgenerate




wire [8:0]c18;
assign c18[0]=c17[8];

wire [7:0]temp14;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp13[i],c[13][8+i],c18[i],temp14[i],c18[i+1]);
endgenerate


wire [8:0]c19;
assign c19[0]=c18[8];

generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp14[i],c[14][i],c19[i],product[32+i],c19[i+1]);
endgenerate
//level 5

wire [8:0]c20;
assign c20[0]=c19[8];

wire [7:0]temp15;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(c[7][i+8],c[10][i],c20[i],temp15[i],c20[i+1]);
endgenerate

wire [8:0]c21;
assign c21[0]=c20[8];

wire [7:0]temp16;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp15[i],c[14][i+8],c21[i],temp16[i],c21[i+1]);
endgenerate


wire [8:0]c22;
assign c22[0]=c21[8];

generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp16[i],c[15][i],c22[i],product[40+i],c22[i+1]);
endgenerate
//level 6
wire [8:0]c23;
assign c23[0]=c22[8];
wire [7:0]temp17;
generate
for( i=0;i<8;i=i+1)
    full_adder f0(c[10][i+8],c[11][i],c23[i],temp17[i],c23[i+1]);
endgenerate

wire [8:0]c24;
assign c24[0]=c23[8];
generate
for( i=0;i<8;i=i+1)
    full_adder f0(temp17[i],c[15][i+8],c24[i],product[i+48],c24[i+1]);
endgenerate
//level 7
assign product[63:56]=c[11][15:8];
assign result = ((op1[31] == 1) ^ (op2[31] == 1))? (~product + 1) : product;
endmodule