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

reg [3:0] shiftReg;
reg [3:0] doutSink;
wire syncQ1, syncQ2, syncSignal;
wire sQbar1, sQbar2, sQbar3;
wire [3:0] sQbar4;

initial
begin
    doutSink = 4'b0000;
    shiftReg = 4'b0000;
end

// Create Toggle DFF
wire dataSourceQ, dataSourceQbar;
DFF toggleDFF(dataSourceQbar, Aclk, reset, dataSourceQ, dataSourceQbar);

// Create input shift register DataSource
always @(posedge Aclk)
begin
    // Catch reset signal
    if(reset == 1)
    begin
        shiftReg = 4'b0;
    end

    // Catch output dataSourceQ, shift temp bus by 1 and load sQ0 into LSb
    shiftReg = shiftReg << 1;
    shiftReg[0] = dataSourceQ;
end

// Create SyncSignal based on SlowClock input
DFF syncDFF_1(Bclk, Aclk, reset, syncQ1, sQbar1);
DFF syncDFF_2(syncQ1, Aclk, reset, syncQ2, sQbar2);
DFF syncDFF_3(syncQ2, Aclk, reset, syncSignal, sQbar3);

// Catch SyncSignal, read data from shift register
always @(posedge syncSignal)
begin
    doutSink = shiftReg;
end

// Create DFF on slower clock to read synced doutSink output
DFF_bus4 datasinkDFF(doutSink, Bclk, reset, out, sQbar4);

endmodule

