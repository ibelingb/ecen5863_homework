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
wire sQ0, sQ1, sQ2, SyncSignal;
wire sQbar0, sQbar1, sQbar2, sQbar3;

// Create Toggle DFF
DFF dff_0(sQbar0, Aclk, reset, sQ0, sQbar0);
DFF syncDFF_1(sQ0, Aclk, reset, sQ1, sQbar1);
DFF syncDFF_2(sQ1, Aclk, reset, sQ2, sQbar2);
DFF syncDFF_3(sQ2, Aclk, reset, SyncSignal, sQbar3);

always @(posedge Bclk)
begin
    // Catch reset signal
    if(reset == 1)
    begin
        temp = 4'b0;
    end

    // Catch Sync Signal
    else if(SyncSignal == 1)
    begin
        temp[0] = sQ3;        
        temp = temp << 1;        
    end
end

assign out = temp;


endmodule

