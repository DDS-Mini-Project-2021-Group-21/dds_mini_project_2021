module mux_w4_1(S,I0,I1,out);
	input S, I0, I1;
	output [8:0] out;
	assign out[0] = I0;
	assign out[1] = I1;
	assign out[2] = S;
	assign out[3] = S;
	assign out[4] = 1;
	assign out[5] = ~1;
	assign out[6] = I1 & S;
	assign out[7] = I0 & (~1);
	assign out[8] = (I1 & S) | (I0 & (~1));
endmodule
