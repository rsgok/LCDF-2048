`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:13:16 01/05/2019
// Design Name:   rgbconvert
// Module Name:   C:/Users/TLT3620/Downloads/VGAdemo/VGAdemo/rgbconvert_sim.v
// Project Name:  VGAdemo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgbconvert
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rgbconvert_sim;

	// Inputs
	reg [23:0] indata;

	// Outputs
	wire [11:0] outdata;

	// Instantiate the Unit Under Test (UUT)
	rgbconvert uut (
		.indata(indata), 
		.outdata(outdata)
	);

	initial begin
		// Initialize Inputs
		indata = 0;

		// Wait 100 ns for global reset to finish
		#100;
      indata = 24'b1010_0110_1011_0011_1111_1110;  
		// Add stimulus here

	end
      
endmodule

