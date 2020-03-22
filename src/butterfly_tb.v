//Created on Mon Mar 15 14:14:06 2020
//@author: augustinjose
`timescale 1ns / 1ps
module butterfly_tb;

	// Inputs
	reg clock;
	reg [15:0] x1;
	reg [15:0] y1;
	reg [15:0] x2;
	reg [15:0] y2;
	reg [31:0] zangle;

	// Outputs
	wire [15:0] xout1;
	wire [15:0] yout1;
	wire [15:0] xout2;
	wire [15:0] yout2;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	butterfly uut (
		.clock(clock), 
		.x1(x1), 
		.y1(y1), 
		.x2(x2), 
		.y2(y2), 
		.zangle(zangle), 
		.xout1(xout1), 
		.yout1(yout1), 
		.xout2(xout2), 
		.yout2(yout2),
		.done(done)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		x1 = 0;
		y1 = 0;
		x2 = 0;
		y2 = 0;
		zangle = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Add stimulus here
		x1 =3200;
		y1 = 0;
		x2 = 3200;
		y2 = 0;
		//zangle = 'b00100000000000000000000000000000;
		zangle = 'b11100000000000000000000000000000; //-45 degrees
		//zangle = 0;
		
		 clock = 'b0;
		 forever
		 begin
			#5 clock = !clock;
		 end
		
	end
      
endmodule
