`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:30 01/06/2019 
// Design Name: 
// Module Name:    selectRom 
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
module selectRom(
	input wire clk,
	input wire [11:0] addr,
	input wire [5:0] area,
	input wire [9:0] romcase,
    output wire [23:0] outdata
    ); 
	wire [23:0] px_data1;
	wire [23:0] px_data2;
	wire [23:0] px_data3;
	wire [23:0] px_data4;
	wire [23:0] px_data5;
	wire [23:0] px_data6;
	wire [23:0] px_data7;
	wire [23:0] px_data8;
	wire [23:0] px_data9;
	wire [23:0] px_data10;
	wire [23:0] px_data11;
	wire [23:0] px_data12;

	case (romcase)
		10'd1: assign outdata = px_data1;
		10'd2: assign outdata = px_data2;
		10'd3: assign outdata = px_data3;
		10'd4: assign outdata = px_data4;
		10'd5: assign outdata = px_data5;
		10'd6: assign outdata = px_data6;
		10'd7: assign outdata = px_data7;
		10'd8: assign outdata = px_data8;
		10'd9: assign outdata = px_data9;
		10'd10: assign outdata = px_data10;
		10'd11: assign outdata = px_data11;
		10'd12: assign outdata = px_data12;
	endcase

	index_rom rom1 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data1) // output [23 : 0] douta
	);
	num2_rom rom2 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data2) // output [23 : 0] douta
	);
	num4_rom rom3 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data3) // output [23 : 0] douta
	);
	num8_rom rom4 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data4) // output [23 : 0] douta
	);
	num16_rom rom5 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data5) // output [23 : 0] douta
	);
	num32_rom rom6 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data6) // output [23 : 0] douta
	);
	num64_rom rom7 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data7) // output [23 : 0] douta
	);
	num128_rom rom8 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data8) // output [23 : 0] douta
	);
	num256_rom rom9 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data9) // output [23 : 0] douta
	);
	num512_rom rom10 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data10) // output [23 : 0] douta
	);
	num1024_rom rom11 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data11) // output [23 : 0] douta
	);
	num2048_rom rom12 (
	  .clka(clk), // input clka
	  .addra(addr), // input [11 : 0] addra
	  .douta(px_data12) // output [23 : 0] douta
	);
endmodule
