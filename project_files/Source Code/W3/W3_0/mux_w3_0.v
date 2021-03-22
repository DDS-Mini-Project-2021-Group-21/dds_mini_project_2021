module mux_w3_0(S,I0,I1,out);
	input S, I0, I1;
	output [8:0] out;
	assign out[0] = I0;
	assign out[1] = I1;
	assign out[2] = S;
	assign out[3] = 0;
	assign out[4] = S;
	assign out[5] = ~S;
	assign out[6] = I1 & 0;
	assign out[7] = I0 & (~S);
	assign out[8] = (I1 & 0) | (I0 & (~S));
endmodule
