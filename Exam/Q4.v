module encoder (
  input wire [3:0] A,
  output reg [2:0] y 
  );
  
initial
begin
	y = 3'b000;
end

always @(A)
begin

if (A == 4'b1xxx)
	y <= 3'b100;
else if (A == 4'b01xx) 
	y <= 3'b011;
else if (A == 4'b001x) 
	y <= 3'b101;
else if (A == 4'b0001) 
	y <= 3'b001;
else if (A == 4'b0000) 
	y <= 3'b000;
else
	// no change in y
	y <= 3'bxxx;
end

endmodule