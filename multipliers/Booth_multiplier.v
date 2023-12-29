module Booth_multiplier  (
    input [31:0] A,
    input [31:0] B,
    output [63:0] product
    );
    
reg [31:0]op1;
reg [31:0]op2;
reg [31:0]temp1_product;
reg [1:0]condition;
reg temp;
reg QBit;
integer i;


generate
always @(*)
begin

    for( i=0; i<32;i=i+1)
    begin

        if(i==1'b0)
        begin
            QBit=1'b0;
            op1 = A;
            op2 = B;
            temp1_product=31'd0;
        end

        condition={op2[0],QBit};

        if(condition==2'b00 || condition==2'b11)
        begin
            temp=temp1_product[0];
            temp1_product={temp1_product[31],temp1_product[31:1]};
            QBit=op2[0];
            op2=op2>>1;
            op2[31]=temp;
        end

        else if(condition==2'b10)
        begin
            temp1_product=temp1_product + ((~op1)+1);
            temp=temp1_product[0];
            temp1_product={temp1_product[31],temp1_product[31:1]};
            QBit=op2[0];
            op2=op2>>1;
            op2[31]=temp;
        end

        else
        begin
            temp1_product=temp1_product + op1;
            temp=temp1_product[0];
            temp1_product={temp1_product[31],temp1_product[31:1]};
            QBit=op2[0];
            op2=op2>>1;
            op2[31]=temp;
        end


    end
    
end
endgenerate



assign product = {temp1_product,op2};

endmodule