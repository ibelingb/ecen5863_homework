module counter 
(
	input clk, reset, en,
    output reg TC,
   output [23:0] q
);

reg [23:0] temp;

// Implement counter
always @(posedge clk)
   begin
	if(reset == 1)
      begin
		temp = 24'b0;
      end
	else if (en == 1)
        begin
		temp = temp + 24'b1;
		
		if(q == 24'b111111111111111111111110)
            begin
			TC = 1;
            end
		else
            begin
			TC = 0;
            end
        end
    end

    assign q = temp;

endmodule
