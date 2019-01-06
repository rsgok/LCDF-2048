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
	wire [5:0] area;
	wire [9:0] romcase,
	
	clkdiv m0 (.rst(rst), .clk(clk), .clkdiv(clkdiv));
	/*
		row_addr 行 35 -> 514 共 480
		col_addr 列 143 -> 782 共 640
	*/
	/*
		屏幕分区方案：左侧 + 右侧
		左侧占480*480，作为2048游戏格子区域
		右侧占480*180，作为分数显示区（或作为游戏名/六小龄童显示区）(暂时不用)
		@detail:
		左侧区域分为4*4=16格，每格120*120,编号从1到16（自左向右，自上而下）
		用 [5:0] area 表示区域编号
		编号	row_addr区域	col_addr区域
		1		0-119			0-119	
		2		0-119			120-239
		3		0-119			240-359
		4		0-119			360-479		
		5		120-239			0-119
		6		120-239			120-239
		7		120-239			240-359
		8		120-239			360-479
		9		240-359			0-119
		10		240-359			120-239
		11		240-359			240-359	
		12		240-359			360-479
		13		360-479			0-119
		14		360-479			120-239
		15		360-479			240-359
		16		360-479			360-479

		0（背景）	其他			其他
	*/

	/*
	address module:
	handle the col_addr && row_addr,
	update the relevant area,
	and calculate the addr(for a rom)
	*/
	address add1 (
		//.clk(clkdiv[1]),
		.col_addr(col_addr),
		.row_addr(row_addr),
		.addr(addr),
		.area(area)
	);
	
	/*
	selectRom module:
	receive the area code && addr,
	output the needed px_data from the right rom. 
	*/
	selectRom select1 (
		.clk(clkdiv[1]),
		.area(area),
		.addr(addr),
		.romcase(romcase),
		.outdata(px_data)
	);
	
	/*
	rgbconvert module:
	convert the 24-bit color data(RGB888) to the 12-bit color data(RGB444)
	left the higher 4 bits color data in R,G,B
	*/
	rgbconvert cvt1 (
		.indata(px_data),
		.outdata(vga_data)
	);
	
	/*
	vgac module：
	update row_addr && col_addr
	get the current RGB and show it
	*/
	vgac v0 (
		.vga_clk(clkdiv[1]), .clrn(clrn), .d_in(vga_data), 
		.row_addr(row_addr), .col_addr(col_addr), 
		.r(r), .g(g), .b(b), .hs(hs), .vs(vs)
	);

endmodule
