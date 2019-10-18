module rej0(CLK,CLR,Q1,CE);

input CLK,CLR,CE;
output  [2:0] Q1;
reg [2:0] Q1;
always @(posedge CLK or posedge CLR)
if(CLR)
Q1 <= 3'b111;
else
if(CE)
begin
Q1 <= {Q1[1:0],~&Q1[1:0]};
end

endmodule
