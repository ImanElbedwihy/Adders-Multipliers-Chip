`timescale 10ns /10ns
module CSA_testbench();
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    wire [31:0] Sum;
    wire Cout;
    wire Overflow;
    CSA csa (A, B, Cin, Sum, Cout,Overflow);
initial begin
//1)+ve + +ve with over flow
A= 32'h7fffffff;
B= 32'h7fffffff;
Cin = 0;
#10
if(Sum==32'hfffffffe && Cout==0 &&Overflow==1)begin
$display("Test case#1 PASSED\n");
end
else begin
$display ("Test case#1 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverflow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//2)-ve + -ve with overflow
A = 32'h80000000; 
B = 32'hFFFFFFFF; 
Cin = 0;
#10
if(Sum==32'h7FFFFFFF && Cout==1 &&Overflow==1)begin
$display("Test case#2 PASSED\n");
end 
else begin
$display ("Test case#2 FAILED\\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverflow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//3)+ve + -ve
A= 32'h12345678;
B = 32'h80000000;
Cin = 0;
#10
if(Sum==32'h92345678 && Cout==0 &&Overflow==0)begin
$display("Test case#3 PASSED\n");
end 
else begin
$display ("Test case#3 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//4)+ve + +ve without overflow
A= 32'h12345678;
B= 32'h12345670;
Cin = 1;
#10
if(Sum==32'h2468ACE9 && Cout==0 &&Overflow==0)begin
$display("Test case#4 PASSED\n");
end
else begin
$display ("Test case#4 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverflow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//5)-ve + -ve without overflow
A = 32'hffffffff;
B = 32'hffffffff;
Cin=0;
#10
if(Sum==32'hfffffffe && Cout==1 &&Overflow==0)begin
$display("Test case#5 PASSED\n");
end 
else begin
$display ("Test case#5 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverflow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//6)random case1
A = 32'h123;
B = 32'h123;
Cin=0;
#10
if(Sum==32'h246 && Cout==0 &&Overflow==0)begin
$display("Test case#6 PASSED\n");
end 
else begin
$display ("Test case#6 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverflow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//7)random case2 
A = 32'hfffff999;
B = 32'h111;
Cin=0;
#10
if(Sum==32'hfffffaaa && Cout==0 &&Overflow==0)begin
$display("Test case#7 PASSED\n");
end 
else begin
$display ("Test case#7 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverflow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
//8)random case3 
A = 32'h420;
B = 32'h420;
Cin=1;
#10
if(Sum==32'h841 && Cout==0 &&Overflow==0)begin
$display("Test case#8 PASSED\n");
end else begin
$display ("Test case#8 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(A), $signed(B), $signed(Sum),Cout,Overflow);
end
$stop;
end
endmodule 