`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:47:18 01/05/2019
// Design Name:   address
// Module Name:   C:/Users/TLT3620/Downloads/VGAdemo/VGAdemo/addr_sim.v
// Project Name:  VGAdemo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: address
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module addr_sim;

	// Inputs
	reg clk;
	reg [9:0] col_addr;
	reg [8:0] row_addr;

	// Outputs
	wire [11:0] addr;

	// Instantiate the Unit Under Test (UUT)
	address uut (
		.clk(clk), 
		.col_addr(col_addr), 
		.row_addr(row_addr), 
		.addr(addr)
	);
	integer i,j;
	initial begin
		// Initialize Inputs
		clk = 0;
		col_addr = 0;
		row_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		for(i=0;i<=63;i=i+1)begin
			for(j=0;j<=63;j=j+1)begin
				col_addr <= col_addr + 1'b1;
				
				#20;
			end
			col_addr = 0;
			row_addr = row_addr +1'b1;
		end
		
        
		// Add stimulus here

	end
   always begin
	  clk =0; #10;
	  clk =1; #10;
	
	end
endmodule

