///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: DFF.v
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

// Reference: https://technobyte.org/verilog-code-d-flip-flop-dataflow-gate-behavioral/

module DFF (
    input d, clk, clear,
    output reg q, qbar
); 

always@(posedge clk) 
begin
    if(clear == 1)
        begin
        q <= 0;
        qbar <= 1;
        end
    else
        begin
        q <= d; 
        qbar <= !d;
        end
end
endmodule
