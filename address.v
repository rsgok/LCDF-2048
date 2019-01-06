`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:30 01/05/2019 
// Design Name: 
// Module Name:    address 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module address(
	input wire clk,
	input wire [9:0] col_addr,
	input wire [8:0] row_addr,
	output reg [11:0] addr
    ); 
	
	always @ (posedge clk) begin
		addr <= ((row_addr << 6) + col_addr);	
	end

endmodule
