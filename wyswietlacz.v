module wyswietlacz(katoda,sa,sb,sc,sd,se,sf,sg);

input [3:0] katoda;
output reg sa,sb,sc,sd,se,sf,sg;
always @(katoda)
case(katoda)

4'b0000: {sa,sb,sc,sd,se,sf,sg} <= 7'b0000001;
4'b0001: {sa,sb,sc,sd,se,sf,sg} <= 7'b1001111;
4'b0010: {sa,sb,sc,sd,se,sf,sg} <= 7'b0010010;
4'b0011: {sa,sb,sc,sd,se,sf,sg} <= 7'b0000110;
4'b0100: {sa,sb,sc,sd,se,sf,sg} <= 7'b1001100;
4'b0101: {sa,sb,sc,sd,se,sf,sg} <= 7'b0100100;
4'b0110: {sa,sb,sc,sd,se,sf,sg} <= 7'b0100000;
4'b0111: {sa,sb,sc,sd,se,sf,sg} <= 7'b0001111;
4'b1000: {sa,sb,sc,sd,se,sf,sg} <= 7'b0000000;
4'b1001: {sa,sb,sc,sd,se,sf,sg} <= 7'b0000100;
4'b1010: {sa,sb,sc,sd,se,sf,sg} <= 7'b0001000;
4'b1011: {sa,sb,sc,sd,se,sf,sg} <= 7'b1100000;
4'b1100: {sa,sb,sc,sd,se,sf,sg} <= 7'b0110001;
4'b1101: {sa,sb,sc,sd,se,sf,sg} <= 7'b1000010;
4'b1110: {sa,sb,sc,sd,se,sf,sg} <= 7'b0110000;
4'b1111: {sa,sb,sc,sd,se,sf,sg} <= 7'b0111000;
default: {sa,sb,sc,sd,se,sf,sg} <= 7'b1111111;
endcase

endmodule
