
module counter 
(
	input wire clk, reset,
	output reg [15:0] q
);


initial
begin
	q <= 0;
end

// Implement counter
always @(posedge clk)
begin
	if(reset)
		q <= 0;
	else
		q <= q + 1;
end

endmodule