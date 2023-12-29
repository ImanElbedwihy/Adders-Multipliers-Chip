`timescale 10ns /10ns
module wallce_tree_tb();

    reg [31:0] a;
    reg [31:0] b;
    wire [63:0] p;
integer correct;
integer incorrect;
parameter clock_period=2;


reg clk,rst;
    WTM32_final s1 ( clk,rst,a, b, p);
initial
 begin
     correct=0;
 incorrect=0;
clk=0;
rst=0;
//1)+ve * +ve   
a= 32'd20;
b= 32'd75;

#(2*clock_period)
if(p==32'd1500 )begin
$display("Test case#1 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#1 FAILED\n");
$display("A = 20 / B = 75 / p = 1500 ");
incorrect=incorrect+1;

end
/////////////////////////////////////////////////////////////////////////
//2)-ve * -ve  
a = 32'hFFFFFFD5; 
b = 32'hFFFFFFD0; 
#(2*clock_period)
if(p==64'h0000000000000810 )begin
$display("Test case#2 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#2 FAILED\\n");
$display("A = -43 / B = -48 / p = 2064 ");
incorrect=incorrect+1;

end
/////////////////////////////////////////////////////////////////////////
//3)+ve * -ve   
 a = 32'd23; 
b =  32'hFFFFFFF1; 
#(2*clock_period)
if(p==64'hFFFFFFFFFFFFFEA7 )begin
$display("Test case#3 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#3 FAILED\n");
$display("A = 23 / B = -15 / p = -345 ");
incorrect=incorrect+1;

end

/////////////////////////////////////////////////////////////////////////
//4)-ve * +ve   
a= 32'hFFFFFFE7;
b= 32'd30;
#(2*clock_period)
if(p==64'hFFFFFFFFFFFFFD12 )begin
$display("Test case#4 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#4 FAILED\n");
$display("A = -25 / B = 30 / p = -750 ");
incorrect=incorrect+1;

end
/////////////////////////////////////////////////////////////////////////
//5) number *0
a = 32'h0000000A;
b = 32'd0;
#(2*clock_period)
if(p==64'd0 )begin
$display("Test case#5 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#5 FAILED\n");
$display("A = 10 / B = 0 / p = 0");
incorrect=incorrect+1;

end

/////////////////////////////////////////////////////////////////////////

//6)number * 1
/// 100 + 14.625= 114.625
a = 32'h0000000A;
b = 32'd1;
#(2*clock_period)
if(p==64'h000000000000000A)begin
$display("Test case#6 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#6 FAILED\n");
$display("A = 10 / B = 1 / p = 10");
incorrect=incorrect+1;

end


/////////////////////////////////////////////////////////////////////////


//7)random case1
a = 32'd50;
b = 32'd50;
#(2*clock_period)
if(p==64'd2500 )begin
$display("Test case#7 PASSED!\n");
correct=correct+1;

end else begin
$display ("Test case#7 FAILED\n");
$display("A = 50 / B = 50 / p = 22.5");
incorrect=incorrect+1;

end

/////////////////////////////////////////////////////////////////////////


//8) random case2
a = 32'd125;
b = 32'hFFFFFFEE;
#(2*clock_period)
if(p==64'hFFFFFFFFFFFFF736)begin
$display("Test case#8 PASSED!\n");
correct=correct+1;

end else begin
$display ("Test case#8 FAILED\n");
$display("A = 125 / B = -18 / Sum = -2250");
incorrect=incorrect+1;

end
$display("correct tests =%d,incorrect tests=%d\n",$unsigned(correct),$unsigned(incorrect));

$stop;
 end


   always #(clock_period/2) clk = ~clk;
endmodule