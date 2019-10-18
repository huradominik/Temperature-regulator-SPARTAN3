
module XOR(Y,A1,A2);
input A1,A2;
output Y;
reg Y;

always @(A1 or A2)
case ({A1,A2})
2'b00 : Y <=1'b0;
2'b01 : Y <=1'b1;
2'b10 : Y <=1'b1;
2'b11 : Y <=1'b0;
endcase

endmodule
