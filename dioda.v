module dioda(CLK,CLR,CE,Q,CEO);
input CLK, CLR, CE;
output [26:0] Q;
reg [26:0] Q;
output CEO;

always @(posedge CLK or posedge CLR)
  if(CLR)
    Q <= 26'd0;
  else begin
    if(CE) begin
      if(Q != 26'd49999999)
        Q <= Q + 1'b1;
      else
        Q <= 26'd0;
    end
  end

assign CEO = CE & (Q > 26'd24999999);

endmodule