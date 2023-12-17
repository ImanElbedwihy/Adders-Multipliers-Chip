module Verilog_adder #(parameter WIDTH = 32)(A,B,Cin,Sum,Cout,overflow);
input [WIDTH-1:0] A;
    input [WIDTH-1:0] B;
    input Cin;
    output [WIDTH-1:0] Sum;
    output Cout;
    output overflow;
    assign {Cout,Sum} = A + B+ Cin;
    assign overflow= ~(A[WIDTH - 1] ^ B[WIDTH - 1]) & (A[WIDTH - 1] ^ Sum[WIDTH - 1]);
endmodule

