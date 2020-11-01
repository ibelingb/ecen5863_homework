module counter_top(clock, reset, out);
	input clock;
	input reset;
	output [15:0] out;
	
	counter counter_inst(clock, reset, out[15:0]);

endmodule