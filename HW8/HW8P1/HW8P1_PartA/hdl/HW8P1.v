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

// Create wires and D Flip-Flops for DataSource and SyncSignal
wire dataSourceQ, syncQ1, syncQ2, syncSignal;
wire dataSourceQbar, sQbar1, sQbar2, sQbar3;

// Create DataSource out of Toggle DFF
DFF toggleDFF(dataSourceQbar, Aclk, reset, dataSourceQ, dataSourceQbar);

// Create SyncSignal based on SlowClock input
DFF syncDFF_1(Bclk, Aclk, reset, syncQ1, sQbar1);
DFF syncDFF_2(syncQ1, Aclk, reset, syncQ2, sQbar2);
DFF syncDFF_3(syncQ2, Aclk, reset, syncSignal, sQbar3);

// Create wires and D Flip-Flops for Interface and Slow DFF
wire muxOutput, fDataLockedQ;
wire sQbar4, sQbar5;

// Pass SyncSignal as select for Mux, determines where output data is sourced from
mux dataSourceMux(muxOutput, dataSourceQ, fDataLockedQ, syncSignal);

// Create Interface DFF to lock the DataSource output Q
DFF interfaceDFF(muxOutput, Aclk, reset, fDataLockedQ, sQbar4);

// Create DFF on slower clock to read locked DataSource output Q
DFF datasinkDFF(fDataLockedQ, Bclk, reset, Dout, sQbar5);

endmodule

