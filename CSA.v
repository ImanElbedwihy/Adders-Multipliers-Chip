module CSA(input [31:0] A,input [31:0]  B,input Cin,  output [31:0]  Sum,output   Cout,output Overflow);
  
    wire [31:0] S0;
    wire [31:0] S1;
    wire [7:0] C0;
    wire [7:0] C1;
    wire [7:0] C;

    four_bit_adder A_inst(.A(A[3:0]),.B(B[3:0]),.Cin(Cin),.Sum(Sum[3:0]),.Cout(C[0])); 
    genvar i;
    generate
        for (i = 0; i < 7; i = i + 1) begin : loop1
            four_bit_adder A0(
                .A(A[i*4+7:i*4+4]),
                .B(B[i*4+7:i*4+4]),
                .Cin(1'b0),
                .Sum(S0[i*4+7:i*4+4]),
                .Cout(C0[i+1])
            );
            four_bit_adder A1(
                .A(A[i*4+7:i*4+4]),
                .B(B[i*4+7:i*4+4]),
                .Cin(1'b1),
                .Sum(S1[i*4+7:i*4+4]),
                .Cout(C1[i+1])
            );
        end
    endgenerate

    genvar j;
    generate
    for (j = 0; j < 7; j = j + 1) begin : loop2
        assign Sum[j*4+7:j*4+4] = C[j] ? S1[j*4+7:j*4+4] : S0[j*4+7:j*4+4];
        assign C[j+1] = C[j] ? C1[j+1] : C0[j+1];
    end
endgenerate
    // assign Sum[7:4]=C[0]==1'b0?S0[7:4]:S1[7:4];
    // assign C[1]=C[0]==1'b0?C0[1]:C1[1];

    // assign Sum[11:8]=C[1]==1'b0?S0[11:8]:S1[11:8];
    // assign C[2]=C[1]==1'b0?C0[2]:C1[2];

    // assign Sum[15:12]=C[2]==1'b0?S0[15:12]:S1[15:12];
    // assign C[3]=C[2]==1'b0?C0[3]:C1[3];

    // assign Sum[19:16]=C[3]==1'b0?S0[19:16]:S1[19:16];
    // assign C[4]=C[3]==1'b0?C0[4]:C1[4];

    // assign Sum[23:20]=C[4]==1'b0?S0[23:20]:S1[23:20];
    // assign C[5]=C[4]==1'b0?C0[5]:C1[5];

    // assign Sum[27:24]=C[5]==1'b0?S0[27:24]:S1[27:24];
    // assign C[6]=C[5]==1'b0?C0[6]:C1[6];

    // assign Sum[31:28]=C[6]==1'b0?S0[31:28]:S1[31:28];
    // assign C[7]=C[6]==1'b0?C0[7]:C1[7];

    assign Cout=C[7];
    assign Overflow=(A[31]==B[31]&&(A[31])!=Sum[31]);

    
endmodule
