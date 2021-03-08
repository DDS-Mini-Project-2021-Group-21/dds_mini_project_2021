`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:21 03/07/2021 
// Design Name: 
// Module Name:    mux_proper 
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
module mux_proper(S,I0,I1,out);
	input S, I0, I1;
	output [8:0] out;
	assign I1 = 1;
	assign out[0] = I0;
	assign out[1] = I1;
	assign out[2] = S;
	assign out[3] = S;
	assign out[4] = S;
	assign out[5] = ~out[4];
	assign out[6] = out[1] & out[3];
	assign out[7] = out[0] & out[5];
	assign out[8] = out[6] | out[7];

endmodule
