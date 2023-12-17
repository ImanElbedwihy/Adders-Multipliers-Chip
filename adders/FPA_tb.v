
`timescale 10ns /10ns
module FPA_tb();

    reg [31:0] a;
    reg [31:0] b;
    wire [31:0] sum;
    wire Cout;
    wire of;
    FPA f1 (a, b, sum, Cout,of);
initial begin


//1)+ve + +ve   no overflow
a= 32'b01000000001000000000000000000000;
b= 32'b01000000001000000000000000000000;
#10
///2.5+2.5=5
if(sum==32'b01000000101000000000000000000000 && of==1'b0)begin
$display("Test case#1 PASSED\n");
end else begin
$display ("Test case#1 FAILED\n");
$display("A = 2.5 / B = 2.5 / Sum = 5 ");
end

//2)-ve + -ve   no overflow
a = 32'b01000000111001000000000000000000; 
b = 32'b11000000001000000000000000000000; 
#10
//7.125  +  -2.5  =4.625
if(sum==32'b01000000100101000000000000000000 && of==1'b0)begin
$display("Test case#2 PASSED\n");
end else begin
$display ("Test case#2 FAILED\\n");
$display("A = 7.125 / B = -2.5 / Sum = 4.625 ");
end

//3)+ve + -ve   no overflow
 a = 32'b11000000111001000000000000000000; 
b = 32'b01000000001000000000000000000000; 
#10
//  -7.125  +  2.5  =   -4.625
if(sum==32'b11000000100101000000000000000000 && of==1'b0)begin
$display("Test case#3 PASSED\n");
end else begin
$display ("Test case#3 FAILED\n");
$display("A = -7.125 / B = 2.5 / Sum = -4.625 ");
end


//4)random 1
////  9.125 - 7.625 =1.5
a= 32'b01000001000100100000000000000000;
b= 32'b11000000111101000000000000000000;
#10
if(sum==32'b00111111110000000000000000000000 && of==1'b0)begin
$display("Test case#4 PASSED\n");
end else begin
$display ("Test case#4 FAILED\n");
$display("A = 9.125 / B = -7.625 / Sum = 1.5 ");
end

///9.75 + (-18.5625)  ==-8.8125
//5)random 2
a = 32'b01000001000111000000000000000000;
b = 32'b11000001100101001000000000000000;
#10
if(sum==32'b11000001000011010000000000000000 && of==1'b0)begin
$display("Test case#5 PASSED\n");
end else begin
$display ("Test case#5 FAILED\n");
$display("A = 9.75 / B = -18.5625 / Sum = -8.8125");
end



//6)random 3
/// 100 + 14.625= 114.625
a = 32'b01000010110010000000000000000000;
b = 32'b01000001011010100000000000000000;
#10
if(sum==32'b01000010111001010100000000000000 && of==1'b0)begin
$display("Test case#6 PASSED\n");
end else begin
$display ("Test case#6 FAILED\n");
$display("A = 100 / B = 14.625 / Sum = 114.625");
end




//7)-ve overflow
///2.5-2.5=0
a = 32'hffffffff;
b = 32'hffffffff;
#10
if(sum==32'h00000000 && of==1'b1)begin
$display("Test case#7 PASSED!\n");
end else begin
$display ("Test case#7 FAILED\n");
end



//8) +ve overflow 

/// 22.8965  +   -11.526  =
a = 32'h7fffffff;
b = 32'h7fffffff;
#10
if(sum==32'h00000000 && of==1'b1)begin
$display("Test case#8 PASSED!\n");
end else begin
$display ("Test case#8 FAILED\n");
end
$stop;
end
endmodule