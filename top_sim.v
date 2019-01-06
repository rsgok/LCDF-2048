`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:23 01/06/2019
// Design Name:   Top
// Module Name:   D:/ise_file/backup/VGAdemo/top_sim.v
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

module top_sim;

	// Inputs
	reg clk;
	reg rst;
	reg clrn;

	// Outputs
	wire hs;
	wire vs;
	wire [3:0] r;
	wire [3:0] g;
	wire [3:0] b;
	wire [31:0] clkdiv;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.rst(rst), 
		.clrn(clrn), 
		.hs(hs), 
		.vs(vs), 
		.r(r), 
		.g(g), 
		.b(b), 
		.clkdiv(clkdiv)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		clrn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

