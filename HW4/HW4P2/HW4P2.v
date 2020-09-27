

module HW4P2 (
	// Define input and output
	input [3:0] P,       // Parallel Input
	input CP,            // Clock
	input SR,            // Active Low Synchronous Reset
	input PE,            // Count Enable Parallel Input
	input CEP,           // Count Enable Parallel
	input CET,           // Count Enable Trickle
	output reg [3:0] Q,  // Parallel Output 
	output reg TC        // Terminal Count
);


always @(CP, SR, PE, CEP, CET)
begin
	if (SR == 0)
		begin
		Q <= 0;
		end
	else
		begin
			if (PE == 0)
				begin
				Q <= P;
				end
			else if (CEP == 1)
				begin
				Q <= Q + 1;
				
				if((Q[3:0] == 4'b1110) & (CET == 1))
					begin
					TC <= 1;
					end
				else
					begin
					TC <= 0;
					end
				end
			else
				begin
				// Do nothing
				end
		end
end

endmodule
    