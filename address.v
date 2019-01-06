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
	//input wire clk,
	input wire [9:0] col_addr,
	input wire [8:0] row_addr,
	output wire [11:0] addr,
	output wire [5:0] area
    ); 
	
	// always @ (posedge clk) begin
	// 	addr <= ((row_addr << 6) + col_addr);	
	// end

	// calculate the area code
	if (row_addr >= 0 && row_addr <= 479 && col_addr >= 0 && col_addr <= 479 )
	begin
		if (row_addr >= 0 && row_addr <= 119 ) assign area = 6'd1;
		if (row_addr >= 120 && row_addr <= 239 ) assign area = 6'd5;
		if (row_addr >= 240 && row_addr <= 359 ) assign area = 6'd9;
		if (row_addr >= 360 && row_addr <= 479 ) assign area = 6'd13;

		if (col_addr >= 0 && col_addr <= 119 ) assign area = area + 3'd0;
		if (col_addr >= 120 && col_addr <= 239 ) assign area = area + 3'd1;
		if (col_addr >= 240 && col_addr <= 359 ) assign area = area + 3'd2;
		if (col_addr >= 360 && col_addr <= 479 ) assign area = area + 3'd3;
	end
	else assign area = 6'd0;
	
	// calculate the addr
	if (area == 0) assign addr = 12'b0;
	else begin
		// reduce the row_addr and the col_addr
		// to the range of 0 -> 119
		while (row_addr >= 120) begin
			assign row_addr = row_addr - 120;
		end
		while (col_addr >= 120) begin
			assign col_addr = col_addr - 120;
		end
		// start to calculate the addr
		// use * straightly might occur bug, to be fixed;
		assign addr = row_addr * 120 + col_addr;
	end
endmodule
