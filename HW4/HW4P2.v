

//module HW4P2 (P, CP, SR, PE, CEP, CET, Q, TC);
module HW4P2 (
	// Define input and output
	input wire [3:0] P,       // Parallel Input
	input wire CP,            // Clock
	input wire SR,            // Active Low Synchronous Reset
	input wire PE,            // Count Enable Parallel Input
	input wire CEP,           // Count Enable Parallel
	input wire CET,           // Count Enable Trickle
	output wire [3:0] Q,      // Parallel Output 
	output wire TC            // Terminal Count
);

always @(CP, SR, PE, CEP, CET)
begin
	if (SR == 0)
		Q = 4'b0000;
	else
		always @(posedge CP)
		begin
			if (PE = 0)
				Q = P;
			else if (CEP = 1)
				Q = Q + 1;
				
				if((Q == 4'b1110) & (CET == 1))
					TC = 1;
				else
					TC = 0;
			else
				// Do nothing
			end
		end
	end
end

endmodule
    