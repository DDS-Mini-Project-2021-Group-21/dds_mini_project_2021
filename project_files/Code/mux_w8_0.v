module mux_w8_0(S,I0,I1,out);
	input S, I0, I1;
	output [8:0] out;
	assign out[0] = I0;
	assign out[1] = I1;
	assign out[2] = S;
	assign out[3] = S;
	assign out[4] = S;
	assign out[5] = ~S;
	assign out[6] = I1 & S;
	assign out[7] = I0 & (~S);
	assign out[8] = 0;
endmodule
