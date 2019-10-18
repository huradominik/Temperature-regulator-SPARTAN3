
module multiplexser(sel,we,wy);
input  [2:0] sel;
input [11:0] we;
output reg [3:0] wy;

always @(sel or we)

	if(sel==3'b110)
	wy <= we[3:0];
	else if(sel==3'b101)
	wy <= we[7:4];
	else if(sel==3'b011)
	wy <= we[11:8];
	 else wy <= we[11:8];
endmodule
