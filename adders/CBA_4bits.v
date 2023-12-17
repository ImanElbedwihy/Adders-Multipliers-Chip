
module CBA_4bits(input [3:0] A,input [3:0]  B,input Cin,  output [3:0]  Sum,output   Cout);
    wire  C; 
    wire  [3:0]p; 
    wire  p_final; 
    four_bit_adder RCA(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(C)
    );
    genvar i;
    generate
        for (i=0; i<4; i=i+1) 
        begin :loop
            assign p[i]   = A[i] ^ B[i];
        end
    endgenerate
    
    assign p_final  = &p;

    assign Cout= p_final ? Cin : C;
    
endmodule
