module NOT(Y,A);

input A;
output Y;
reg Y;

always @(A)
case(A)
1'b0 : Y <=1'b1;
1'b1 : Y <=1'b0;
endcase

endmodule
