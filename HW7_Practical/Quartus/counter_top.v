module counter_top
	#(parameter N = 1200)
	(
		input clock, reset, enable,
		output TCout
	);
	wire [N-1:0] TC;

	// Create counter instances
	generate
		genvar i;
		
		for(i=0; i<N; i=i+1)
		begin : loop_gen_block
			if(i == 0)
				begin
				counter counter_inst (clock, reset, enable, TC[0]);
				end
			else
				begin
				counter counter_inst (clock, reset, TC[i-1], TC[i]);
				end
		end
	endgenerate
	
	assign TCout = TC[N-1];
		
endmodule