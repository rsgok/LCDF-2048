`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:54 01/06/2019
// Design Name:   clkslow
// Module Name:   D:/ise_file/backup/VGAdemo/clkslow_sim.v
// Project Name:  VGAdemo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clkslow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clkslow_sim;

	// Inputs
	reg clk;

	// Outputs
	wire clkslow;

	// Instantiate the Unit Under Test (UUT)
	clkslow uut (
		.clk(clk), 
		.clkslow(clkslow)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
   always begin 
		clk = 0; #10;
		clk = 1; #10;
	end
endmodule

