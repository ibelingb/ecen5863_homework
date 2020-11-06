module counter 
(
	input clk, reset, en,
    output reg TC,
   output [15:0] q
);

reg [15:0] temp;

// Implement counter
always @(posedge clk)
   begin
	if(reset == 1)
      begin
		temp = 16'b0;
      end
	else if (en == 1)
        begin
		temp = temp + 16'b1;
		
		if(q == 16'b1111111111111110)
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
