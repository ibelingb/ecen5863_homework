module counter_top
	#(parameter N = 1000) 
	(
		input clock, reset, enable, load,
//		input [N-1:0] [15:0] value
//		output reg [N-1:0] [15:0] out,
//		output reg [N-1:0] TC
	);
	// Define variable to hold rising edge of TC values
	reg [N-1:0] [15:0] value;
	reg [N-1:0] [15:0] out;
    reg [N-1:0] TC;
	
	reg [N-1:0] counterEnable;
	integer j;

	// Create counter instances
	generate
		genvar i;
		
		for(i=0; i<N; i=i+1)
		begin : loop_gen_block
			if(i == 0)
				begin
				counter counter_inst (clock, reset, enable, load, value[i][15:0], out[i][15:0], TC[i]);
				end
			else
				begin
				counter counter_inst (clock, reset, counterEnable[i], load, value[i][15:0], out[i][15:0], TC[i]);
				end
		end
	endgenerate
		
	// Determine if Terminal Count has triggered enabling next counter
	always @(posedge clock)

	for(j=1; j<N; j=j+1)
	begin 
		if(TC[j-1] == 1'b1)
		begin
			counterEnable[j] <= 1;
		end
	end
	
endmodule