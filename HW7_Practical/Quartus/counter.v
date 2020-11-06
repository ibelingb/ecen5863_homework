module counter_16 
(
	input wire clk, reset, en,
	output reg TC
);

reg [15:0] q;

initial
   begin
	q = 0;
	TC = 0;
   end

// Implement counter
always @(posedge clk)
   begin
	if(reset == 1)
      begin
		q = 0;
      end
	else if (en == 1)
        begin
		q = q + 1;
		
		if(q == 16'b1111111111111110)
            begin
			TC = 1;
            end
		else
            begin
			TC = 0;
            end
        end
	else
		// Empty
		TC = 0;
	end

endmodule
