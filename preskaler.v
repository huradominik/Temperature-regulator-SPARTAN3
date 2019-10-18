module preskaler(CLK,CLR,CE,Q,CEO);
input CLK, CLR, CE;
output [18:0] Q;
reg [18:0] Q;
output CEO;

always @(posedge CLK or posedge CLR)
	if(CLR)
	Q <= 18'd0;
	else begin
	if(CE) begin
	if(Q != 18'd250000)
	Q <= Q + 1'b1;
	else
	Q <= 18'd0;
	end
	end
	
assign CEO = (CE & (Q == 18'd250000));

endmodule
