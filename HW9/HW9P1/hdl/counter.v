///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HW9P1.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>
module counter 
(
    input clk, reset, en,
    output reg TC,
    output [7:0] out
);

reg [7:0] temp;

// Implement counter
always @(posedge clk)
   begin
	if(reset == 1)
      begin
		temp = 8'b0;
      end
	else if (en == 1)
        begin
		temp = temp + 8'b1;
		
		if(out == 8'b11111110)
            begin
			TC = 1;
            end
		else
            begin
			TC = 0;
            end
        end
    end

    assign out = temp;

endmodule
