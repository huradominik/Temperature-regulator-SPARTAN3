module Regulator(clk,WE1,WE2,WY,
SA,SB,SC,SD,SE,SF,SG,grzalka,clr,an,CLKwy);

input [7:0] WE1;
input [7:0] WE2;
input clk,clr;

output grzalka;
output [2:0] WY;   
output SA,SB,SC,SD,SE,SF,SG;
output CLKwy;

output an;

assign an=1'b1;

wire [7:0] WY1;
wire [7:0] WY2;
wire [7:0] wy_tr;
wire [2:0] WY;
wire [3:0] wy_mu;
wire [7:0] wy_tr1;
wire m,w,r;
wire y1,y2;


rej8 blok1(clk,clr,WE1,WY1,1'b1);
rej8 blok2(clk,clr,wy_tr1,WY2,1'b1);
komparator blok3(WY1,WY2,m,r,w);
XOR blok9(y1,r,m);
NOT blok10(y2,w);
AND blok11(y3,y1,y2);
dioda blok12(clk,1'b0,y3,,grzalka);
preskaler blok4(clk,clr,1'b1,,seg);
rej0 blok5(clk,clr,WY,seg);
transkoder blok6(wy_tr,WY2);
multiplexser blok7(WY,wy_tr,wy_mu);
wyswietlacz blok8(wy_mu,SA,SB,SC,SD,SE,SF,SG);
preskaler_ADC blok13(clk,clr,1'b1,,CLKwy);
transkoderADC blok14(wy_tr1,WE2);

endmodule
