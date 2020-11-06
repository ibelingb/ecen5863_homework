///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: skewCounter.v
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

module skewCounter
(
	input clk, reset, en,
    output reg TC,
   output [15:0] q
);

reg [15:0] temp;
wire sQ0, sQ1, sQ2, sQ3;
wire sQbar0, sQbar1, sQbar2, sQbar3;

// Create Skewed Clock
DFF dff_0(sQbar0, clk, reset, sQ0, sQbar0);
DFF dff_1(sQbar1, sQ0, reset, sQ1, sQbar1);
DFF dff_2(sQbar2, sQ1, reset, sQ2, sQbar2);
DFF dff_3(sQbar3, sQ2, reset, sQ3, sQbar3);

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

    assign q[11:0] = temp[11:0];
    assign q[12] = sQ0;
    assign q[13] = sQ1;
    assign q[14] = sQ2;
    assign q[15] = sQ3;

endmodule

