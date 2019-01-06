`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:42 12/31/2018 
// Design Name: 
// Module Name:    clk_25MHz 
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
	module clkslow(clk, clkslow);

	input wire clk;
	output reg clkslow;
	reg [31:0] cnt;
	//assign cnt = 0;
	always @ (posedge clk) begin
		if (cnt < 8 ) begin
			 cnt <= cnt + 1;
		end else begin
			 cnt <= 0;
			 clkslow <= ~clkslow;
		end
	end
	endmodule
	