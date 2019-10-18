module rej8(CLK,CLR,D,Q,CE);

input CLK,CLR,CE;
input [7:0] D;
output [7:0] Q;
reg [7:0] Q;

always @(posedge CLK or posedge CLR)
if(CLR)
Q <= 8'd0;
else 
if(CE) begin
Q[0] <= D[0];
Q[1] <= D[1];
Q[2] <= D[2];
Q[3] <= D[3];
Q[4] <= D[4];
Q[5] <= D[5];
Q[6] <= D[6];
Q[7] <= D[7];
end

endmodule
