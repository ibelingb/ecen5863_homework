
module counter 
(
	input wire clk, reset, en, 
//	load,
//	input wire [15:0] value,
	output reg [15:0] q,
	output reg TC
);


initial
begin
	q <= 0;
	TC <= 0;
end

// Implement counter
always @(posedge clk)
begin
	if(reset)
		q <= 0;
//	else if (load == 1)
//		q <= value;
	else if (en == 1)
	begin
		q <= q + 1;
		
		if(q == 16'b1111111111111110)
		begin
			TC <= 1;
		end
		else
		begin
			TC <= 0;
		end
	end
end

endmodule
