


`timescale 10ns /10ns
module Booth_multiplier_tb();

    reg [31:0] a;
    reg [31:0] b;
    wire [63:0] p;
    reg clk;
    reg rst;
    Booth_multiplier s1 (clk,rst,a, b, p);


always begin
    #5 clk = ~clk;
end

initial begin
clk=0;
rst = 1;

#5 rst = 0;
#5
//1)+ve * +ve   
a= 32'd20;
b= 32'd75;
#400
if(p==32'd1500 )begin
$display("Test case#1 PASSED\n");
end else begin
$display ("Test case#1 FAILED\n");
$display("A = 20 / B = 75 / p = 1500 ");
end
/////////////////////////////////////////////////////////////////////////
//2)-ve * -ve  
a = 32'hFFFFFFD5; 
b = 32'hFFFFFFD0; 
#10
if(p==64'h0000000000000810 )begin
$display("Test case#2 PASSED\n");
end else begin
$display ("Test case#2 FAILED\\n");
$display("A = -43 / B = -48 / p = 2064 ");
end
/////////////////////////////////////////////////////////////////////////
//3)+ve * -ve   
 a = 32'd23; 
b =  32'hFFFFFFF1; 
#10
if(p==64'hFFFFFFFFFFFFFEA7 )begin
$display("Test case#3 PASSED\n");
end else begin
$display ("Test case#3 FAILED\n");
$display("A = 23 / B = -15 / p = -345 ");
end

/////////////////////////////////////////////////////////////////////////
//4)-ve * +ve   
a= 32'hFFFFFFE7;
b= 32'd30;
#10
if(p==64'hFFFFFFFFFFFFFD12 )begin
$display("Test case#4 PASSED\n");
end else begin
$display ("Test case#4 FAILED\n");
$display("A = -25 / B = 30 / p = -750 ");
end
/////////////////////////////////////////////////////////////////////////
//5) number *0
a = 32'h0000000A;
b = 32'd0;
#10
if(p==64'd0 )begin
$display("Test case#5 PASSED\n");
end else begin
$display ("Test case#5 FAILED\n");
$display("A = 10 / B = 0 / p = 0");
end

/////////////////////////////////////////////////////////////////////////

//6)number * 1
/// 100 + 14.625= 114.625
a = 32'h0000000A;
b = 32'd1;
#10
if(p==64'h000000000000000A)begin
$display("Test case#6 PASSED\n");
end else begin
$display ("Test case#6 FAILED\n");
$display("A = 10 / B = 1 / p = 10");
end


/////////////////////////////////////////////////////////////////////////


//7)random case1
a = 32'd50;
b = 32'd50;
#10
if(p==64'd2500 )begin
$display("Test case#7 PASSED!\n");
end else begin
$display ("Test case#7 FAILED\n");
$display("A = 50 / B = 50 / p = 2500");
end

/////////////////////////////////////////////////////////////////////////


//8) random case2
a = 32'd125;
b = 32'hFFFFFFEE;
#10
if(p==64'hFFFFFFFFFFFFF736)begin
$display("Test case#8 PASSED!\n");
end else begin
$display ("Test case#8 FAILED\n");
$display("A = 125 / B = -18 / Sum = -2250");
end
$stop;
end
endmodule
