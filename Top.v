`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/10/17 12:25:41
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
	input wire clk,
	//input rstn,
	input wire rst,
	input wire clrn,
	output wire hs,
	output wire vs,
	output wire [3:0] r,
	output wire [3:0] g,
	output wire [3:0] b
	//output reg [31:0]clkdiv,
	//output reg clkslow
    );
	
	
 	wire [11:0] vga_data;
 	wire [9:0] col_addr;
 	wire [8:0] row_addr;
	wire [11:0] addr;
	wire [23:0] px_data;
	wire [31:0] clkdiv;
	
	clkdiv m0 (.rst(rst), .clk(clk), .clkdiv(clkdiv));
	
	address add1 (
		.clk(clkdiv[2]),
		.col_addr(col_addr),
		.row_addr(row_addr),
		.addr(addr)
	);
	
	index_rom rom1 (
	  .clka(clkdiv[2]), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data) // output [23 : 0] douta
	);
	
	rgbconvert cvt1 (
		.indata(px_data),
		.outdata(vga_data)
	);
	
	vgac v0 (
		.vga_clk(clkdiv[2]), .clrn(clrn), .d_in(vga_data), 
		.row_addr(row_addr), .col_addr(col_addr), 
		.r(r), .g(g), .b(b), .hs(hs), .vs(vs)
	);

endmodule
