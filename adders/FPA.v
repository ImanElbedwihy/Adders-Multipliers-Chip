////FP32
module FPA
(input [31:0] A, input [31:0] B, output [31:0] Sum,output Cout,output reg of);

reg  A_sign;
reg  B_sign;
reg  O_sign;
reg [7:0] A_exponent ;
reg [7:0] B_exponent ;
wire [7:0] O_exponent ;
reg [24:0] O_temp1_exponent ;
reg [24:0] O_temp2_exponent ;
reg [23:0] A_mantissa ;
reg [23:0] B_mantissa ;
reg [23:0] temp1_mantissa ;
reg [23:0] temp2_mantissa ;
reg [23:0] O_mantissa ;
reg [24:0] O_temp1_mantissa ;
reg [24:0] O_temp2_mantissa ;
reg [7:0] temp ;

wire [7:0] final_exponent ;
wire [22:0] final_mantissa ;


reg [23:0] A_Adder ;
reg [23:0] B_Adder ;
wire [23:0] Sum_Adder ;
wire Cin ;
wire c ;




 CSA #(24) c1( A_Adder,B_Adder,Cin,Sum_Adder ,c ,overflow);
assign Cin=1'b0;
always @ (*)
begin

    A_sign=A[31];
    B_sign=B[31];
    A_exponent=A[30:23];
    B_exponent=B[30:23];
    A_mantissa = {1'b1,A[22:0]};
    B_mantissa ={1'b1,B[22:0]};

     ///calculate exponent and shift the with the difference
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
    else 
    begin
        O_temp1_exponent=A_exponent;
    end
    
        // A and B +ve  or  A and B -ve  add A+B out sign= the in sign
    if(A_sign == B_sign )
    begin

        // O_temp1_mantissa=A_mantissa+B_mantissa;
        /////user CSA instead of +
        A_Adder=A_mantissa;
        B_Adder=B_mantissa;
        O_sign=A_sign;
        O_temp1_mantissa={c,Sum_Adder};
        //A and B one+ve and one -ve
    end
     else 
    begin
        if(A_sign==1'b1)
        begin
            temp1_mantissa=~A_mantissa+1'b1;
            temp2_mantissa=B_mantissa;
            // O_temp2_mantissa=temp1_mantissa+temp2_mantissa;
            /////user CSA instead of +
            A_Adder=temp1_mantissa;
            B_Adder=temp2_mantissa;
            O_temp2_mantissa={c,Sum_Adder};

            if(A_mantissa>= B_mantissa)
            begin 
                O_temp1_mantissa=~O_temp2_mantissa+1;
                O_temp1_mantissa[24]=1'b0;
            end
            else
            begin 
                O_temp1_mantissa=O_temp2_mantissa;
                O_temp1_mantissa[24]=1'b0;
            end

        end
        else 
        begin
            temp1_mantissa=A_mantissa;
            temp2_mantissa=~B_mantissa+1'b1;
            // O_temp2_mantissa=temp1_mantissa+temp2_mantissa;
             /////user CSA instead of +
            A_Adder=temp1_mantissa;
            B_Adder=temp2_mantissa;
            O_temp2_mantissa={c,Sum_Adder};

            if(A_mantissa <= B_mantissa)
            begin 
                O_temp1_mantissa=~O_temp2_mantissa+1;
                O_temp1_mantissa[24]=1'b0;
            end
            else
            begin 
                O_temp1_mantissa=O_temp2_mantissa;
                O_temp1_mantissa[24]=1'b0;
            end
        end

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
   

    if(O_temp1_mantissa[24]==1'b1)
    begin

        O_temp2_exponent=O_temp1_exponent+25'd1;
        O_mantissa=O_temp1_mantissa[24:1];
        if(O_mantissa == 23'd0 &  O_temp1_exponent== A_exponent & O_temp1_exponent== B_exponent )
            begin
                O_temp1_exponent=23'd0;
            end
        else
            O_temp1_exponent=O_temp2_exponent;
    end else
    begin
        O_mantissa=O_temp1_mantissa[23:0];
        if(O_mantissa == 23'd0 &  O_temp1_exponent== A_exponent & O_temp1_exponent== B_exponent )
            begin
                O_temp1_exponent=23'd0;
            end
   end 



    
        
    if(final_exponent == 8'd255  || A_exponent == 8'd255  || B_exponent == 8'd255)
        begin
    of=1'b1;
    O_mantissa=23'b0;
    O_temp1_exponent=8'b0;
    O_sign=0;
        end 
    else 
        of=1'b0;


end

assign O_exponent=O_temp1_exponent;

normalizer N_instance( O_mantissa, O_exponent, final_mantissa , final_exponent);

assign Sum={O_sign,final_exponent,final_mantissa};
assign Cout=O_temp1_mantissa[24];

endmodule