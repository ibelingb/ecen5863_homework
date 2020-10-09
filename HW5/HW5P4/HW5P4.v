
// Define Instance of ram_cyclone_IV

module HW5P4 
	(
		input wire clk,
		input wire wren,
		input wire [127:0] data1,
		input wire [4:0] waddr,
		output wire	[127:0] q_out
	);

	ram_cyclone_IV ram1(.clock(clk), .wren(wren1), .data(data1), .address(waddr), .q(q_out));

endmodule



