///////////////////////////////////////////////////////////////////////////////////////////////////
//
// File: SlowFast.v
//
// Description: 
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: Brian Ibeling
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module SlowFast
(
    input Aclk, Bclk, reset,
    output [3:0] out
);

reg [3:0] temp;

// Create Toggle DFF
wire dataSourceQ, dataSourceQbar;
DFF toggleDFF(dataSourceQbar, Aclk, reset, dataSourceQ, dataSourceQbar);

// Create SyncSignal based on SlowClock input
wire sQbar1, sQbar2, sQbar3;
wire syncQ1, syncQ2, syncSignal;
DFF temp0_syncDFF_1(Aclk, Bclk, reset, syncQ1, sQbar1);
DFF temp0_syncDFF_2(syncQ1, Bclk, reset, syncQ2, sQbar2);
DFF temp0_syncDFF_3(syncQ2, Bclk, reset, syncSignal, sQbar3);

// Create input shift register DataSource
always @(posedge Aclk)
begin
    // Catch reset signal
    if(reset == 1)
    begin
        temp = 4'b0;
    end

    // Catch output dataSourceQ, shift temp bus by 1 and load sQ0 into LSb
    temp = temp << 1;
    temp[0] = dataSourceQ;
end

// Create wires and D Flip-Flops for Interface and Slow DFF
wire [3:0] muxOutput;
wire [3:0] fDataLockedQ;
wire [3:0] sQbar4;
wire [3:0] sQbar5;

// Pass SyncSignal as select for Mux, determines where output data is sourced from
mux dataSourceMux(temp, fDataLockedQ, syncSignal, muxOutput);

// Create Interface DFF to lock the DataSource output Q
//DFF_bus4 interfaceDFF(muxOutput, Aclk, reset, fDataLockedQ, sQbar4);

// Create DFF on slower clock to read locked DataSource output Q
DFF_bus4 datasinkDFF(muxOutput, Bclk, reset, out, sQbar5);

endmodule

