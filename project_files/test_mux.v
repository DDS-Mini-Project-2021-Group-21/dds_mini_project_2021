`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:44:37 03/07/2021
// Design Name:   mux_proper
// Module Name:   /home/is/dds_mini/test_mux.v
// Project Name:  dds_mini
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_proper
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux;

	// Inputs
	reg S;
	reg I0;
	reg I1;

	// Outputs
	wire [8:0] out;
	reg [8:0] W[8:0];
	reg [8:0] cur = 9'b111111111;
	reg [8:0] golden = 9'b111111111;
	integer index;
	integer i, j;

	// Instantiate the Unit Under Test (UUT)
	mux_proper uut (
		.S(S), 
		.I0(I0), 
		.I1(I1), 
		.out(out)
	);
	
	// add checks
	always @(I0, I1, S) begin
		$display("I0 : %b    I1 : %b    S : %b", I0, I1, S);
		$display("hello out : %b", out);
		update_golden;
		if (out != golden) begin
			update_task;
		end
	end
	
	task display_task;
		begin
			$display("Errors could be at wires - %b", cur);
			$finish;
		end
	endtask
	
	task update_task;
		begin
			index = -1;
			$display("out : %b      golden : %b", out, golden);
			for (i=0; i<9; i=i+1) begin
				$display("out[i] : %b      golden[i] : %b", out[i], golden[i]);
				if (out[i] != golden[i]) begin
					$display("hello there");
					index = i;
				end
			end
			if (index != -1) begin
				cur = cur & W[index];
			end
		end
	endtask
	
	task update_golden;
	begin
		golden[0] = I0;
		golden[1] = I1;
		golden[2] = S;
		golden[3] = S;
		golden[4] = S;
		golden[5] = ~S;
		golden[6] = I1 & S;
		golden[7] = I0 & ~S;
		golden[8] = (I1 & S) | (I0 & ~S);
	end
	endtask

	initial begin
		// Initialize Inputs
		S = 0;
		I0 = 0;
		I1 = 0;
		W[0] = 9'b100000000;
		W[1] = 9'b010000000;
		W[2] = 9'b001000000;
		W[3] = 9'b001100000;
		W[4] = 9'b001010000;
		W[5] = 9'b001011000;
		W[6] = 9'b011100100;
		W[7] = 9'b101011010;
		W[8] = 9'b111111111;

		// Wait 100 ns for global reset to finish
		#10;
      
		$monitor($time, ". Out : %b     Golden : %b", out, golden);

		// Add stimulus here
		#5000 I0=0; I1=0; S=1;
		#5000 I0=0; I1=1; S=0;
		#5000 I0=0; I1=1; S=1;
		#5000 I0=1; I1=0; S=0;
		#5000 I0=1; I1=0; S=1;
		#5000 I0=1; I1=1; S=0;
		#5000 I0=1; I1=1; S=1;
		#5000 display_task;
	end
      
endmodule