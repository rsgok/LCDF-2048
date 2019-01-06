`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:59 01/05/2019 
// Design Name: 
// Module Name:    rgbconvert 
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
module rgbconvert(
	input wire [23:0] indata,
	output wire [11:0] outdata
    );
	
	assign outdata = {indata[7:4],indata[15:12],indata[23:20]};
endmodule
