module CSA  #(parameter N = 32)(input [N-1:0] A,input [N-1:0]  B,input Cin,  output [N-1:0]  Sum,output   Cout,output Overflow);
  
    wire [N-1:0] S0;
    wire [N-1:0] S1;
    wire [(N/4)-1:0] C0;
    wire [(N/4)-1:0] C1;
    wire [(N/4)-1:0] C;

    four_bit_adder A_inst(.A(A[3:0]),.B(B[3:0]),.Cin(Cin),.Sum(Sum[3:0]),.Cout(C[0])); 
    genvar i;
    generate
        for (i = 0; i < N/4-1; i = i + 1) begin : loop1
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
    for (j = 0; j < N/4-1; j = j + 1) begin : loop2
        assign Sum[j*4+7:j*4+4] = C[j] ? S1[j*4+7:j*4+4] : S0[j*4+7:j*4+4];
        assign C[j+1] = C[j] ? C1[j+1] : C0[j+1];
    end
endgenerate
    
    assign Cout=C[(N/4)-1];
    assign Overflow=(A[N-1]==B[N-1]&&(A[N-1])!=Sum[N-1]);

    
endmodule