//Created on Mon Mar 15 14:20:17 2020
//@author: augustinjose
`timescale 1ns / 1ps
module butterfly(
	input clock,
	input signed [15:0] x1,
	input signed [15:0] y1,
	input signed [15:0] x2,
	input signed [15:0] y2,
	input signed [31:0] zangle,
	output signed [15:0] xout1,
	output signed [15:0] yout1,
	output signed [15:0] xout2,
	output signed [15:0] yout2,
	output done
   );

wire signed [15:0] xtemp1,xtemp2,ytemp1,ytemp2;
wire done1,done2;

cordic c1(clock,x1,y1,0,xtemp1,ytemp1,done1);
cordic c2(clock,x2,y2,zangle,xtemp2,ytemp2,done2);

assign done = done1&done2;

assign xout1 = xtemp1+xtemp2;
assign yout1 = ytemp1+ytemp2;

assign xout2 = xtemp1-xtemp2;
assign yout2 = ytemp1-ytemp2;

endmodule
