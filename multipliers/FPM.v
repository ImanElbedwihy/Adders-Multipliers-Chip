module multiplier
(input [23:0] M, input [23:0] Q, output reg [48:0] result);

reg [24:0]accumlator;
reg carry=1'b0;
reg [24:0]Q_tmp;
// reg [31:0] accumlator_adder;
// reg [31:0] M_tmp_adder;
reg [24:0] accumlator_output;
reg [24:0]M_tmp;
wire redundant;
wire red;
integer i;
// CSA cs (accumlator_adder, M_tmp_adder, 1'b0, accumlator_output,redundant ,red);


always @(*) begin
       
        Q_tmp = {1'b0, Q};
        M_tmp = {1'b0 , M};

        for (i = 0; i < 25; i = i + 1) begin

            if(i==1'b0)
            begin
              accumlator=25'd0;
            end

            if (Q_tmp[0]==1) begin
                // accumlator_adder=accumlator;
                // M_tmp_adder=M_tmp;
                accumlator_output=accumlator+M_tmp;
                accumlator=accumlator_output;
            end
            
            carry = accumlator[0];
            accumlator = accumlator >> 1;
            Q_tmp = Q_tmp >> 1;
            Q_tmp[24]=carry;
           
        end
        result= {accumlator,Q_tmp};

    end

endmodule

module FPM (
    input [31:0] A,
    input [31:0] B,
    output [31:0] product
    );
    
reg  A_sign;
reg  B_sign;
reg  O_sign;

reg [7:0] A_exponent ;
reg [7:0] B_exponent ;
wire [7:0] O_exponent ;
wire [7:0] final_exponent ;


reg [7:0] O_temp1_exponent ;
reg [7:0] O_temp2_exponent ;

reg [23:0] A_mantissa ;
reg [23:0] B_mantissa ;
reg [23:0] O_mantissa ;
reg [23:0] O_temp_mantissa ;

wire [22:0] final_mantissa ;
reg [47:0] temp_product ;


wire [48:0]temp_result;

 
multiplier s1(A_mantissa,B_mantissa ,temp_result);

always @ (*)
begin

    A_sign=A[31];
    B_sign=B[31];
    A_exponent=A[30:23];
    B_exponent=B[30:23];
    A_mantissa = {1'b1,A[22:0]};
    B_mantissa ={1'b1,B[22:0]};

    // out sign
    O_sign=A_sign ^ B_sign;
    
    //out exponent
    O_temp1_exponent=A_exponent + B_exponent - 8'd127;
    ///mantissa
    
   // temp_product=A_mantissa * B_mantissa;
   temp_product= temp_result[47:0];
    if(temp_product[47]==1'b1)
    begin

        O_temp2_exponent=O_temp1_exponent+24'd1;
        O_temp1_exponent=O_temp2_exponent;
        O_temp_mantissa=temp_product[47:24];
    end
    else
    begin
        O_temp_mantissa=temp_product[46:23];
    end

    if(A [30:0]== 31'd0 || B [30:0]== 31'd0)
    begin
        O_temp1_exponent=8'd0;
    end


    if(A == 32'd0 || B ==32'd0)
    begin
        O_sign =1'd0;
        O_temp1_exponent =8'd0;
        O_temp_mantissa = 24'd0;
    end

end 

    normalizer N_instance( O_temp_mantissa, O_temp1_exponent, final_mantissa , final_exponent);
   assign product ={O_sign,final_exponent,final_mantissa};



endmodule
