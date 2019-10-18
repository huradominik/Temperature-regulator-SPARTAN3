module komparator( A,B,M,R,W);

input [7:0] A, B;
output M,R,W;
reg M,R,W;
always @(A or B)

if(A<B) 
begin
R <=1'b0;
W <=1'b0;
M <=1'b1;
end

else if (A==B) begin
R <=1'b1;
W <=1'b0;
M <=1'b0;
end

else begin
R <=1'b0;
W <=1'b1;
M <=1'b0;
end

endmodule
