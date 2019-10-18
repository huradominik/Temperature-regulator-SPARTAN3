
module preskaler_ADC(CLK,CLR,CE,Q,CEO);
input CLK, CLR, CE;
output [7:0] Q;
reg [7:0] Q;
output CEO;

always @(posedge CLK or posedge CLR)
	if(CLR)
	Q <= 7'd0;
	else begin
	if(CE) begin
	if(Q != 7'd78)
	Q <= Q + 1'b1;
	else
	Q <= 18'd0;
	end
	end
	
assign CEO = CE & (Q == 7'd78);

endmodule