///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: counter.v.v
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