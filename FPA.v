
////FP32
module FPA
(input [31:0] A, input [31:0] B,input Cin, output [31:0] Sum,output Cout,output of);

reg  A_sign;
reg  B_sign;
reg  O_sign;
reg [7:0] A_exponent ;
reg [7:0] B_exponent ;
reg [7:0] O_exponent ;
reg [24:0] O_temp1_exponent ;
reg [24:0] O_temp2_exponent ;
reg [23:0] A_mantissa ;
reg [23:0] B_mantissa ;
reg [23:0] temp1_mantissa ;
reg [23:0] temp2_mantissa ;
reg [22:0] O_mantissa ;
reg [24:0] O_temp_mantissa ;

reg [7:0] temp ;



always @ (A,B)
begin

    A_sign=A[31];
    B_sign=B[31];
    A_exponent=A[30:23];
    B_exponent=B[30:23];
    A_mantissa = {1'b1,A[22:0]};
    B_mantissa ={1'b1,B[22:0]};

     /////calculate exponent and shift the with the difference
    if(A_exponent > B_exponent ) begin
        temp=A_exponent-B_exponent;
        O_temp1_exponent=A_exponent;
        B_mantissa=B_mantissa>>temp;
    end
    else if (A_exponent < B_exponent )begin
        temp=B_exponent-A_exponent;
        O_temp1_exponent=B_exponent;
        temp1_mantissa=A_mantissa>>temp;
        A_mantissa=temp1_mantissa;
    end
    else if (A_exponent == B_exponent )begin
        O_temp1_exponent=A_exponent;
    end
    
        //A and B +ve  or  A and B -ve  add A+B out sign= the in sign
    if(A_sign == B_sign )
    begin
        O_temp_mantissa=A_mantissa+B_mantissa;
        O_sign=A_sign;
        //A and B one+ve and one -ve
    end else if (A_sign != B_sign )
    begin
        if(A_sign==1'b1)
        begin
            temp1_mantissa=~A_mantissa+1'b1;
            temp2_mantissa=B_mantissa;
        end
        else if(B_sign==1'b1)
        begin
            temp1_mantissa=A_mantissa;
            temp2_mantissa=~B_mantissa+1'b1;
        end

        O_temp_mantissa=temp1_mantissa+temp2_mantissa;
        O_temp_mantissa[24]=1'b0;
        ///Out sign is the greater mantissa sign
        if(A_mantissa>B_mantissa)
            O_sign=A_sign;
        else if(A_mantissa<B_mantissa)
            O_sign=B_sign;
        else
        begin
            O_sign=1'b0;
        end

    end
    //////delete last bit (1)  and shift if there 0 

    if(O_temp_mantissa[24]==1'b1)
    begin

        O_temp2_exponent=O_temp1_exponent+1'b1;
        O_mantissa=O_temp_mantissa[23:1];
        if(O_mantissa == 23'd0 &  O_temp1_exponent== A_exponent & O_temp1_exponent== B_exponent )
            begin
                O_temp1_exponent=23'd0;
            end
        else
            O_temp1_exponent=O_temp2_exponent;
    end else
    begin
        O_mantissa=O_temp_mantissa[22:0];
        if(O_mantissa == 23'd0 &  O_temp1_exponent== A_exponent & O_temp1_exponent== B_exponent )
            begin
                O_temp1_exponent=23'd0;
            end
    end 


end

assign Sum={O_sign,O_exponent,O_mantissa};
assign O_exponent=O_temp1_exponent;
endmodule


