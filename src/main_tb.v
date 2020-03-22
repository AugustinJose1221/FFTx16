//Created on Mon Mar 17 13:27:11 2020
//@author: augustinjose
`timescale 1ns / 1ps
module main_tb;

	// Inputs
	reg [15:0] xin1;
	reg [15:0] xin2;
	reg [15:0] xin3;
	reg [15:0] xin4;
	reg [15:0] xin5;
	reg [15:0] xin6;
	reg [15:0] xin7;
	reg [15:0] xin8;
	reg [15:0] xin9;
	reg [15:0] xin10;
	reg [15:0] xin11;
	reg [15:0] xin12;
	reg [15:0] xin13;
	reg [15:0] xin14;
	reg [15:0] xin15;
	reg [15:0] xin16;
	reg [15:0] yin1;
	reg [15:0] yin2;
	reg [15:0] yin3;
	reg [15:0] yin4;
	reg [15:0] yin5;
	reg [15:0] yin6;
	reg [15:0] yin7;
	reg [15:0] yin8;
	reg [15:0] yin9;
	reg [15:0] yin10;
	reg [15:0] yin11;
	reg [15:0] yin12;
	reg [15:0] yin13;
	reg [15:0] yin14;
	reg [15:0] yin15;
	reg [15:0] yin16;
	reg [15:0] xout0;
	reg [15:0] xout1;
	reg [15:0] xout2;
	reg [15:0] xout3;
	reg [15:0] xout4;
	reg [15:0] xout5;
	reg [15:0] xout6;
	reg [15:0] xout7;
	reg [15:0] xout8;
	reg [15:0] xout9;
	reg [15:0] xout10;
	reg [15:0] xout11;
	reg [15:0] xout12;
	reg [15:0] xout13;
	reg [15:0] xout14;
	reg [15:0] xout15;
	reg [15:0] yout0;
	reg [15:0] yout1;
	reg [15:0] yout2;
	reg [15:0] yout3;
	reg [15:0] yout4;
	reg [15:0] yout5;
	reg [15:0] yout6;
	reg [15:0] yout7;
	reg [15:0] yout8;
	reg [15:0] yout9;
	reg [15:0] yout10;
	reg [15:0] yout11;
	reg [15:0] yout12;
	reg [15:0] yout13;
	reg [15:0] yout14;
	reg [15:0] yout15;
	reg clock;

	wire [255:0] xout;
	wire [255:0] yout;

	main_cordic_fft uut (
		.xin1(xin1), 
		.xin2(xin2), 
		.xin3(xin3), 
		.xin4(xin4), 
		.xin5(xin5), 
		.xin6(xin6), 
		.xin7(xin7), 
		.xin8(xin8), 
		.xin9(xin9), 
		.xin10(xin10), 
		.xin11(xin11), 
		.xin12(xin12), 
		.xin13(xin13), 
		.xin14(xin14), 
		.xin15(xin15), 
		.xin16(xin16), 
		.yin1(yin1), 
		.yin2(yin2), 
		.yin3(yin3), 
		.yin4(yin4), 
		.yin5(yin5), 
		.yin6(yin6), 
		.yin7(yin7), 
		.yin8(yin8), 
		.yin9(yin9), 
		.yin10(yin10), 
		.yin11(yin11), 
		.yin12(yin12), 
		.yin13(yin13), 
		.yin14(yin14), 
		.yin15(yin15), 
		.yin16(yin16), 
		.xout(xout), 
		.yout(yout), 
		.clock(clock)
	);

	initial begin
		#100;
		xin1 = 320;
		xin2 = 320;
		xin3 = 320;
		xin4 = 320;
		xin5 = 320;
		xin6 = 320;
		xin7 = 320;
		xin8 = 320;
		xin9 = 320;
		xin10 = 320;
		xin11 = 320;
		xin12 = 320;
		xin13 = 320;
		xin14 = 320;
		xin15 = 320;
		xin16 = 320;
		yin1 = 0;
		yin2 = 0;
		yin3 = 0;
		yin4 = 0;
		yin5 = 0;
		yin6 = 0;
		yin7 = 0;
		yin8 = 0;
		yin9 = 0;
		yin10 = 0;
		yin11 = 0;
		yin12 = 0;
		yin13 = 0;
		yin14 = 0;
		yin15 = 0;
		yin16 = 0;
		clock = 0;

		#1000

		$display(" The input is x = %b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n  y=%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n \n",xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,xin9,xin10,xin11,xin12,xin13,xin14,xin15,xin16,yin1,yin2,yin3,yin4,yin5,yin6,yin7,yin8,yin9,yin10,yin11,yin12,yin13,yin14,yin15,yin16);
	
		{xout15, xout14, xout13, xout12, xout11, xout10, xout9, xout8, xout7, xout6, xout5, xout4, xout3, xout2, xout1, xout0} = xout;
		{yout15, yout14, yout13, yout12, yout11, yout10, yout9, yout8, yout7, yout6, yout5, yout4, yout3, yout2, yout1, yout0} = yout;
		$display("The x outputs are : %d\n%d\n%d\n%\d\n%d\n%d\n%d\n%\d\n%d\n%d\n%d\n%\d\n%d\n%d\n%d\n%\d\n", $signed(xout0), $signed(xout1), $signed(xout2), $signed(xout3), $signed(xout4), $signed(xout5), $signed(xout6), $signed(xout7), $signed(xout8), $signed(xout9), $signed(xout10), $signed(xout11), $signed(xout12), $signed(xout13), $signed(xout14), $signed(xout15));
		$display("The y outputs are : %d\n%d\n%d\n%\d\n%d\n%d\n%d\n%\d\n%d\n%d\n%d\n%\d\n%d\n%d\n%d\n%\d\n", $signed(yout0), $signed(yout1), $signed(yout2), $signed(yout3), $signed(yout4), $signed(yout5), $signed(yout6), $signed(yout7), $signed(yout8), $signed(yout9), $signed(yout10), $signed(yout11), $signed(yout12), $signed(yout13), $signed(yout14), $signed(yout15));



	end
	initial begin
		#100
		clock ='b0;
		forever
		begin
			#5
			clock=!clock;
		end
		
	end
      
endmodule
