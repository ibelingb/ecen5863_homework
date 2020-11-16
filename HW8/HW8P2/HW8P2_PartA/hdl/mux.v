///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: mux.v
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
// Used example from Verilog Lecture Notes
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module mux( a, b, sel, y );
    input [3:0] a, b;
    input sel;
    output [3:0] y;

    assign y = sel ? b : a;

//always @(a or b or sel)
//begin
    //if (sel == 1) 
        //y = a;
    //else 
        //y = b;
//end

endmodule

