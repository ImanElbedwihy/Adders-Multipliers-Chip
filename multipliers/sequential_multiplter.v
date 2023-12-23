module sequential_multipier
(   input clk,
    input rst,
    input [31:0] M,
    input [31:0] Q,
    output reg [63:0] result);

reg [31:0]accumlator;
reg carry=1'b0;
reg [31:0]Q_tmp;
reg [31:0] accumlator_adder;
reg [31:0] M_tmp_adder;
wire [31:0] accumlator_output;
reg [31:0]M_tmp;
wire redundant;
wire red;
reg [5:0]i;


CSA #(32)cs (accumlator_adder, M_tmp_adder, 1'b0, accumlator_output,redundant ,red);

always @(posedge clk) begin

    if(rst == 1'b1)
    begin
        i=6'b0;
        Q_tmp = (Q[31] == 1)? ((~Q) + 1) : Q;
        M_tmp = (M[31] == 1)? ((~M) + 1) : M;
        accumlator_adder=32'b0;
        accumlator=32'd0;
        M_tmp_adder=M_tmp;
    end
    else begin
        if(i < 6'b100000) begin

            if (Q_tmp[0]==1) begin
                // accumlator_adder=accumlator;
                // M_tmp_adder=M_tmp;
                // accumlator=accumlator_adder;
                // accumlator_output=accumlator+M_tmp;
                accumlator=accumlator_output;
            end
            
            carry = accumlator[0];
            accumlator = accumlator >> 1;
            Q_tmp = Q_tmp >> 1;
            Q_tmp[31]=carry;
        
        accumlator_adder=accumlator;
        i=i+6'd1;
        end
        if(i >= 6'b100000) begin
            result= ((Q[31] == 1 || M[31]==1) & !(Q[31] == 1 & M[31]==1))?((~{accumlator,Q_tmp}) + 1):{accumlator,Q_tmp};
        end 
    end

    end

endmodule