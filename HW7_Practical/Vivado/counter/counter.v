module counter 
(
	input clk, reset, en,
    output reg TC
);

reg [15:0] q;
reg enableCounter;

initial
begin
	q = 16'b0;
	enableCounter = 0;
end


// Implement counter
always @(posedge clk)
   begin
	
	// Check for reset
	if(reset == 1)
      begin
		q = 16'b0;
      end
	
	// Enable counter if input 'en' pulse received
	else if (en == 1)
		begin
		enableCounter = 1;
		end
	
	// Counter enabled
	if(enableCounter == 1)
      begin
		// Increment Count
		q = q + 16'b1;
		
		// Check for rollover, set TC output high for 1 pulse if true
		// Also disable counter once rollover reached
		if(q == 16'b1111111111111110)
         begin
			TC = 1'b1;
         end
		else if (q == 16'b1111111111111111)
			begin
			enableCounter = 1'b0;
			TC = 1'b0;
			end
      end
  end
endmodule
