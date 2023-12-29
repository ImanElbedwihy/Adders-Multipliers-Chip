
module Registers_2  (
    input clk,
    input rst,
    input [63:0] in,
    output reg [63:0]  out
);
  
always @(posedge clk )
begin

    if(rst == 1'b1)
    begin
        out=0;
    end
    else 
    begin
        out=in;
    end
end
endmodule