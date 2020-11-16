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

module DFF_bus4 (
    input [3:0] d, 
    input clk, clear,
    output reg [3:0] q, qbar
); 

always@(posedge clk) 
begin
    if(clear == 1)
        begin
        q <= 4'b0;
        qbar <= 4'b1;
        end
    else
        begin
        q <= d; 
        qbar <= !d;
        end
end
endmodule
