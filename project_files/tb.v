module tb;
	test t(a, b);
	reg [5:0] a;
	wire [5:0] b;
	initial begin
		#0 a = 10;
		$monitor("b : %b", b);
	end
endmodule