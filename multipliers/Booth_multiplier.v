

module Booth_multiplier  (
    input clk,
    input rst,
    input [31:0] A,
    input [31:0] B,
    output  reg [63:0] product
    );
    
reg [31:0]op1;
reg [31:0]op2;
wire [31:0]temp_op1;
wire [31:0]temp_op2;
reg [31:0]temp1_product;
reg [31:0]temp2_product;
reg [31:0]temp31_product;
reg [31:0]op2_adder;
reg [31:0]op1_adder;
wire [31:0]out_adder;
reg [31:0]op2_adder2;
reg [31:0]op1_adder2;
wire [31:0]out_adder2;
reg [1:0]condition;
reg temp;
reg QBit;
reg cin_adder;
wire redundant1;
wire redundant2;
wire redundant3;
wire redundant4;
reg [5:0]i;

CSA #(32) A1 (op1_adder,op2_adder,cin_adder,out_adder,redundant1,redundant2); 
CSA #(32) A2 (op1_adder2,op2_adder2,cin_adder,out_adder2,redundant3,redundant4); 
always @(posedge clk )
begin


    if(rst == 1'b1)
    begin
            i=6'b000000;
            QBit=1'b0;
            cin_adder=1'b0;
            op1 = A;
            op2 = B;
            temp1_product=32'd0;
            op1_adder=32'd0;
            op1_adder2=32'd0;

            op2_adder=(~A)+32'b1;
            op2_adder2=A;
    end
    else 
    begin
        
        if(i < 6'b100000) begin
            condition={op2[0],QBit};
            case (condition)

                2'b10 :
                    begin
                    // temp1_product=temp1_product + ((~op1)+1);
                    temp1_product=out_adder;
                    temp=out_adder[0];
                    temp1_product={out_adder[31],out_adder[31:1]};
                    QBit=op2[0];
                    op2=op2>>1;
                    op2[31]=temp;
                    // op1_adder=temp1_product;
                    end
                2'b01 :
                    begin
                    // temp1_product=temp1_product + op1;
                    temp1_product=out_adder2;
                    temp=out_adder2[0];
                    temp1_product={out_adder2[31],out_adder2[31:1]};
                    QBit=op2[0];
                    op2=op2>>1;
                    op2[31]=temp;
                    // op1_adder2=temp1_product;
                    end
                default :
                    begin
                    temp=temp1_product[0];
                    temp1_product={temp1_product[31],temp1_product[31:1]};
                    QBit=op2[0];
                    op2=op2>>1;
                    op2[31]=temp;
                    end
            endcase
        i=i+6'b000001;
        op1_adder=temp1_product;
        op1_adder2=temp1_product;
        end
        if(i >= 6'b100000) begin
            product = {temp1_product,op2};
        end 
    end
end


endmodule
