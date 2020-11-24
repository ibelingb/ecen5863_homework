///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top_level_model.v
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

module top_level_model( aClk, bClk, reset, receivedData );
input aClk, bClk, reset;
output [7:0] receivedData;

wire enableTx;
wire ack;
wire req;
wire [7:0] data;

sender mSender( aClk, reset, enableTx, ack, req, data );
receiver mReceiver( bClk, reset, enableTx, ack, req, data, receivedData );

endmodule

