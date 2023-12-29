module sequential_multipier
(input [31:0] M, input [31:0] Q, output reg [63:0] result);

reg [31:0]accumlator;
reg carry=1'b0;
reg [31:0]Q_tmp;
// reg [31:0] accumlator_adder;
// reg [31:0] M_tmp_adder;
reg [31:0] accumlator_output;
reg [31:0]M_tmp;
wire redundant;
wire red;
integer i;
// CSA cs (accumlator_adder, M_tmp_adder, 1'b0, accumlator_output,redundant ,red);


always @(*) begin
       
        Q_tmp = (Q[31] == 1)? ((~Q) + 1) : Q;
        M_tmp = (M[31] == 1)? ((~M) + 1) : M;

        for (i = 0; i < 32; i = i + 1) begin

            if(i==1'b0)
            begin
              accumlator=32'd0;
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
            Q_tmp[31]=carry;
           
        end
        result= ((Q[31] == 1 || M[31]==1) & !(Q[31] == 1 & M[31]==1))?((~{accumlator,Q_tmp}) + 1):{accumlator,Q_tmp};

    end

endmodule