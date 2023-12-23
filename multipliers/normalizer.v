module normalizer
(input [23:0] A_mantissa,input [7:0] A_exponent, output  reg [22:0] O_mantissa ,output reg [7:0] O_exponent);


reg [23:0] temp_mantissa;

always @ (*)
begin 
    if(A_mantissa[23:0]==24'b000000000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<23;
        O_exponent=A_exponent-23;
    end
    else if(A_mantissa[23:1]==23'b00000000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<22;
        O_exponent=A_exponent-22;
    end
    else if(A_mantissa[23:2]==22'b0000000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<21;
        O_exponent=A_exponent-21;
    end
    else if(A_mantissa[23:3]==21'b000000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<20;
        O_exponent=A_exponent-20;
    end
    else if(A_mantissa[23:4]==20'b00000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<19;
        O_exponent=A_exponent-19;
    end
    else if(A_mantissa[23:5]==19'b0000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<18;
        O_exponent=A_exponent-18;
    end
    else if(A_mantissa[23:6]==18'b000000000000000001)
    begin 
        temp_mantissa=A_mantissa<<17;
        O_exponent=A_exponent-17;
    end
    else if(A_mantissa[23:7]==17'b00000000000000001)
    begin 
        temp_mantissa=A_mantissa<<16;
        O_exponent=A_exponent-16;
    end
    else if(A_mantissa[23:8]==16'b0000000000000001)
    begin 
        temp_mantissa=A_mantissa<<15;
        O_exponent=A_exponent-15;
    end
    else if(A_mantissa[23:9]==15'b000000000000001)
    begin 
        temp_mantissa=A_mantissa<<14;
        O_exponent=A_exponent-14;
    end
    else if(A_mantissa[23:10]==14'b00000000000001)
    begin 
        temp_mantissa=A_mantissa<<13;
        O_exponent=A_exponent-13;
    end
    else if(A_mantissa[23:11]==13'b0000000000001)
    begin 
        temp_mantissa=A_mantissa<<12;
        O_exponent=A_exponent-12;
    end
    else if(A_mantissa[23:12]==12'b000000000001)
    begin 
        temp_mantissa=A_mantissa<<11;
        O_exponent=A_exponent-11;
    end
    else if(A_mantissa[23:13]==11'b00000000001)
    begin 
        temp_mantissa=A_mantissa<<10;
        O_exponent=A_exponent-10;
    end
    else if(A_mantissa[23:14]==10'b0000000001)
    begin 
        temp_mantissa=A_mantissa<<9;
        O_exponent=A_exponent-9;
    end
    else if(A_mantissa[23:15]==9'b000000001)
    begin 
        temp_mantissa=A_mantissa<<8;
        O_exponent=A_exponent-8;
    end
    else if(A_mantissa[23:16]==8'b00000001)
    begin 
        temp_mantissa=A_mantissa<<7;
        O_exponent=A_exponent-7;
    end
    else if(A_mantissa[23:17]==7'b0000001)
    begin 
        temp_mantissa=A_mantissa<<6;
        O_exponent=A_exponent-6;
    end
    else if(A_mantissa[23:18]==6'b000001)
    begin 
        temp_mantissa=A_mantissa<<5;
        O_exponent=A_exponent-5;
    end
    else if(A_mantissa[23:19]==5'b00001)
    begin 
        temp_mantissa=A_mantissa<<4;
        O_exponent=A_exponent-4;
    end
    else if(A_mantissa[23:20]==4'b0001)
    begin 
        temp_mantissa=A_mantissa<<3;
        O_exponent=A_exponent-3;
    end
    else if(A_mantissa[23:21]==3'b001)
    begin 
        temp_mantissa=A_mantissa<<2;
        O_exponent=A_exponent-2;
    end
    else if(A_mantissa[23:22]==3'b01)
    begin 
        temp_mantissa=A_mantissa<<1;
        O_exponent=A_exponent-1;
    end
    else 
    begin
        temp_mantissa=A_mantissa;
        O_exponent=A_exponent;
    end 

O_mantissa=temp_mantissa[22:0];
end

     

endmodule


/********************* Code Ends here *****************************/