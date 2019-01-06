`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:24:21 01/06/2019
// Design Name:   Top
// Module Name:   D:/ise_file/backup/VGAdemo/top_sim_2.v
// Project Name:  VGAdemo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_sim_2;

	// Inputs
	reg clk;
	//reg rst;
	reg clrn;

	// Outputs
	wire hs;
	wire vs;
	wire [3:0] r;
	wire [3:0] g;
	wire [3:0] b;
	//wire [31:0] clkdiv;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.rst(rst), 
		.clrn(clrn), 
		.hs(hs), 
		.vs(vs), 
		.r(r), 
		.g(g), 
		.b(b)
		//.clkdiv(clkdiv)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clrn = 0;
		//rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clrn = 1;
		//rst = 0;
	end
   always begin
		clk = 0; #10;
		clk = 1; #10;
	end
      
endmodule

