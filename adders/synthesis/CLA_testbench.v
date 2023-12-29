
`timescale 10ns /10ns
module CLA_testbench();

    reg [31:0] a;
    reg [31:0] b;
    reg Cin;
    wire [31:0] sum;
    wire Cout;
    wire of;
    look cl (a, b, Cin, sum, Cout,of);
initial begin
//1)+ve + +ve with over flow
a= 32'h7fffffff;
b= 32'h7fffffff;
Cin = 0;
#10
if(sum==32'hfffffffe && Cout==0 &&of==1)begin
$display("Test case#1 PASSED\n");
end else begin
$display ("Test case#1 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//2)-ve + -ve with overflow
a = 32'h80000000; 
b = 32'hFFFFFFFF; 
Cin = 1'b0;
#10
if(sum==32'h7FFFFFFF && Cout==1 &&of==1)begin
$display("Test case#2 PASSED\n");
end else begin
$display ("Test case#2 FAILED\\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//3)+ve + -ve
 a= 32'h12345678;
 b = 32'h80000000;
Cin = 0;
#10
if(sum==32'h92345678 && Cout==0 &&of==0)begin
$display("Test case#3 PASSED\n");
end else begin
$display ("Test case#3 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//4)+ve + +ve without overflow
a= 32'h12345678;
b= 32'h12345670;
Cin = 1;
#10
if(sum==32'h2468ACE9 && Cout==0 &&of==0)begin
$display("Test case#4 PASSED\n");
end else begin
$display ("Test case#4 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//5)-ve + -ve without overflow
a = 32'hffffffff;
b = 32'hffffffff;
Cin=0;
#10
if(sum==32'hfffffffe && Cout==1 &&of==0)begin
$display("Test case#5 PASSED\n");
end else begin
$display ("Test case#5 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//6)random case1
a = 32'h123;
b = 32'h123;
Cin=0;
#10
if(sum==32'h246 && Cout==0 &&of==0)begin
$display("Test case#6 PASSED\n");
end else begin
$display ("Test case#6 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//7)random case2 
a = 32'hfffff999;
b = 32'h111;
Cin=0;
#10
if(sum==32'hfffffaaa && Cout==0 &&of==0)begin
$display("Test case#7 PASSED!\n");
end else begin
$display ("Test case#7 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
//8)random case3 
a = 32'h420;
b = 32'h420;
Cin=1;
#10
if(sum==32'h841 && Cout==0 &&of==0)begin
$display("Test case#8 PASSED!\n");
end else begin
$display ("Test case#8 FAILED\n");
$display("A = %d\tB = %d\tSum = %d\tCout =%b\tOverFlow = %b\n\n", $signed(a), $signed(b), $signed(sum),Cout,of);
end
$stop;
end
endmodule 