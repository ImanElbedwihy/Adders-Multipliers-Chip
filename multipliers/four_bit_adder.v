module four_bit_adder(input [3:0] A,input [3:0]  B,input Cin,  output [3:0]  Sum,output   Cout);
    wire [3:0] C; 
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : loop
            full_adder FA(
                .i_bit1(A[i]),
                .i_bit2(B[i]),
                .i_carry(i == 0 ? Cin : C[i - 1]),
                .o_sum(Sum[i]),
                .o_carry(C[i])
            );
        end
    endgenerate
    assign Cout=C[3];
endmodule
