
`timescale 10ns /10ns
module FPM_tb();

    reg [31:0] a;
    reg [31:0] b;
    wire [31:0] p;

  
       reg clk,rst;
    FPM_final f1 (clk,rst,a, b, p);
    parameter clock_period=2;
 integer correct;
integer incorrect;
initial begin
clk=0;
rst=0;
 correct=0;
 incorrect=0;
//1)+ve * +ve   
a= 32'b01000000101100000000000000000000;
b= 32'b01000001011101000000000000000000;
#(2*clock_period)
if(p==32'b01000010101001111100000000000000 )begin
correct=correct+1;


$display("Test case#1 PASSED\n");
end else begin
$display ("Test case#1 FAILED\n");
$display("A = 5.5 / B = 15.25 / p = 83.875 ");
incorrect=incorrect+1;

end
/////////////////////////////////////////////////////////////////////////
//2)-ve * -ve  
a = 32'b11000000110010000000000000000000; 
b = 32'b11000001101001100000000000000000; 
#(2*clock_period)
if(p==32'b01000011000000011011000000000000 )begin
$display("Test case#2 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#2 FAILED\\n");
$display("A = -6.25 / B = -20.75 / p = 129.6875 ");
incorrect=incorrect+1;


end
/////////////////////////////////////////////////////////////////////////
//3)+ve * -ve   
 a = 32'b01000000111010000000000000000000; 
b = 32'b11000000110011110101110000101001; 
#(2*clock_period)
if(p==32'b11000010001110111110101110000101 )begin
$display("Test case#3 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#3 FAILED\n");
$display("A = 7.25 / B = -6.14 / p = -46.98 ");
incorrect=incorrect+1;

end

/////////////////////////////////////////////////////////////////////////
//4)-ve * +ve   
a= 32'b11000000001000000000000000000000;
b= 32'b01000001000001000000000000000000;
#(2*clock_period)
if(p==32'b11000001101001010000000000000000 )begin
$display("Test case#4 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#4 FAILED\n");
$display("A = -2.5 / B = 8.25 / p = -20.625 ");
incorrect=incorrect+1;

end
/////////////////////////////////////////////////////////////////////////
//5) number *0
a = 32'b01000001001000000000000000000000;
b = 32'b00000000000000000000000000000000;
#(2*clock_period)
if(p==32'b00000000000000000000000000000000 )begin
$display("Test case#5 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#5 FAILED\n");
$display("A = 10 / B = 0 / Sum = 0");
incorrect=incorrect+1;

end

/////////////////////////////////////////////////////////////////////////

//6)number * 1
/// 100 + 14.625= 114.625
a = 32'b01000001001000000000000000000000;
b = 32'b00111111100000000000000000000000;
#(2*clock_period)
if(p==32'b01000001001000000000000000000000)begin
$display("Test case#6 PASSED\n");
correct=correct+1;

end else begin
$display ("Test case#6 FAILED\n");
$display("A = 100 / B = 14.625 / Sum = 114.625");
incorrect=incorrect+1;

end


/////////////////////////////////////////////////////////////////////////


//7)random case1
a = 32'b01000001001101000000000000000000;
b = 32'b01000000000000000000000000000000;
#(2*clock_period)
if(p==32'b01000001101101000000000000000000 )begin
$display("Test case#7 PASSED!\n");
correct=correct+1;

end else begin
$display ("Test case#7 FAILED\n");
$display("A = 11.25 / B = 2 / Sum = 22.5");
incorrect=incorrect+1;

end

/////////////////////////////////////////////////////////////////////////


//8) random case2
a = 32'b01000000101000000000000000000000;
b = 32'b11000010100101100000000000000000;
#(2*clock_period)
if(p==32'b11000011101110111000000000000000)begin
$display("Test case#8 PASSED!\n");
correct=correct+1;

end else begin
$display ("Test case#8 FAILED\n");
$display("A = 5 / B = -75 / Sum = -375");
incorrect=incorrect+1;

end
$display("correct tests =%d,incorrect tests=%d\n",$unsigned(correct),$unsigned(incorrect));

$stop;
end


   always #(clock_period/2) clk = ~clk;
endmodule
