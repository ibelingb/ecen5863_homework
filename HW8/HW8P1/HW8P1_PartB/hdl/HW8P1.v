///////////////////////////////////////////////////////////////////////////////////////////////////
//
// File: HW8P1.v
//
// Description: 
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: Brian Ibeling
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module CDC3FF( Aclk, Bclk, reset, Dout);
input Aclk, Bclk, reset;
output Dout;

wire sQ0, sQ1, sQ2, sQ3;
wire sQbar0, sQbar1, sQbar2, sQbar3;

// Create D Flip-FLops
DFF asyncDFF(sQbar0, Bclk, reset, sQ0, sQbar0);
DFF syncDFF_1(sQ0, Aclk, reset, sQ1, sQbar1);
DFF syncDFF_2(sQ1, Aclk, reset, sQ2, sQbar2);
DFF syncDFF_3(sQ2, Aclk, reset, sQ3, sQbar3);

assign Dout = sQ3;

endmodule

