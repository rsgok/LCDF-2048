`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:51:19 01/05/2019
// Design Name:   clkdiv
// Module Name:   C:/Users/TLT3620/Downloads/VGAdemo/VGAdemo/clkdiv_sim.v
// Project Name:  VGAdemo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clkdiv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clkdiv_sim;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] clkdiv;

	// Instantiate the Unit Under Test (UUT)
	clkdiv uut (
		.clk(clk), 
		.rst(rst), 
		.clkdiv(clkdiv)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
	end
	always begin 
		clk = 0; #10;
		clk = 1; #10;
		end
      
endmodule

