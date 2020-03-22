//Created on Mon Mar 15 15:24:29 2020
//@author: augustinjose
`timescale 1ns / 1ps
module cordic_tb;
	reg clock;
	reg [15:0] xstart;
	reg [15:0] ystart;
	reg [31:0] zangle;
	wire [15:0] xout;
	wire [15:0] yout;
	wire done;
	cordic uut (
		.clock(clock), 
		.xstart(xstart), 
		.ystart(ystart), 
		.zangle(zangle), 
		.xout(xout), 
		.yout(yout), 
		.done(done)
	);


	initial begin
		clock = 0;
		xstart = 0;
		ystart = 0;
		zangle = 0;
		
		#100;
		
		xstart =32000;
		ystart = 0;
		zangle = 'b01110101010101010101010101010101;
		 
		 clock = 'b0;
		 forever
		 begin
			#5 clock = !clock;
		 end
        
	end
      
endmodule
