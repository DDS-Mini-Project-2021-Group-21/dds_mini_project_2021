module test_mux;

	// Inputs
	reg S;
	reg I0;
	reg I1;

	// Outputs
	wire [8:0] out;
	reg [8:0] golden = 9'b111111111; //'
	integer index, i;

	// Instantiate the Unit Under Test (UUT)
	mux_w0_0 uut (
		.S(S), 
		.I0(I0), 
		.I1(I1), 
		.out(out)
	);
	
	// add checks
	task test_current_config;
	begin
		if (out != golden) begin
			update_task;
		end
	end
	endtask
	
	task display_task;
	begin
		$display("Error is in the wire - %d", index);
		$display("The wire is stuck at %b", (~golden[index]));
		$finish;
	end
	endtask
	
	task update_task;
	begin
		index = -1;
		for (i=0; i<9; i=i+1) begin
			if (out[i] != golden[i]) begin
				index = i;
				display_task;
				$finish;
			end
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
		golden[7] = I0 & (~S);
		golden[8] = (I1 & S) | (I0 & (~S));
	end
	endtask

	initial begin
		#0 S=0; I0=0; I1=0;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=0; I1=0; S=1;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=0; I1=1; S=0;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=0; I1=1; S=1;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=1; I1=0; S=0;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=1; I1=0; S=1;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=1; I1=1; S=0;
		#0 update_golden;
		#5 test_current_config;
		#0 I0=1; I1=1; S=1;
		#0 update_golden;
		#5 test_current_config;
		#0 $display("No errors in the module.");
		$finish;
	end

endmodule
