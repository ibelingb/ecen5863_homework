///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: receiver.v
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

module receiver( clk, reset, enableTx, ack, req, data , outputData );
input clk, reset, req;
input [7:0] data;
output reg enableTx, ack;
output [7:0] outputData;

// Define states of State Machine
parameter idle=0, txEnable=1, receiveReq=2, receivedData=3, awaitRegDeassert=4, deassertAck=5;

// Local Variables
reg enable, rxState, reqState, ackState, dataReceived;
reg [2:0] receiverState;
reg [7:0] rxDataReg;

// Initial values
initial
begin
    enable = 0;
    rxState = 0;
    reqState = 0;
    ackState = 0;
    dataReceived = 0;
    receiverState = 2'b0;
    rxDataReg = 7'b0;
end


// Detect and hold the data output from the sender
always @(data or ackState or reqState)
begin
    if((rxDataReg != data) && (ackState == 1) && (reqState == 1))
    begin
        rxDataReg = data;
        dataReceived = 1;
    end
    else
    begin
        dataReceived = 0;
    end
end

// Receive req state
always @(req)
begin
    if(req == 1)
        reqState = 1;
    else
        reqState = 0;
end


always @(ack)
begin
    if(ack == 1)
        ackState = 1;
    else
        ackState = 0;
end


// Handle state transitions
always @(receiverState)
begin
    case (receiverState)
        idle:
        begin
            enableTx = 0;
            ack = 0;
        end
        txEnable:
            enableTx = 1;
        receivedData:
            ack = 1;
        deassertAck:
            if(reqState == 0)
                ack = 0;
        //default:
        //    enableTx = 0;
    endcase
end


// Define state machine
always @(posedge clk)
begin
    // Handle reset signal being received
    if (reset)
    begin
        receiverState = idle;
    end

    else
    begin
        case (receiverState)
            idle:
                if((reqState == 0) && (ackState == 0))
                    receiverState = txEnable;
                else
                    receiverState = idle;
            txEnable:
                if(enableTx == 1)
                    receiverState = receiveReq;
                else
                    receiverState = txEnable;
            receiveReq:
                if(reqState == 1)
                    receiverState = receivedData;
                else
                    receiverState = receiveReq;
            receivedData:
                if(dataReceived == 1)
                    receiverState = awaitRegDeassert;
                else
                    receiverState = receivedData;
            awaitRegDeassert:
                if(reqState == 0)
                    receiverState = deassertAck;
                else
                    receiverState = awaitRegDeassert;
            deassertAck:
                if(ack == 0)
                    receiverState = idle;
                else
                    receiverState = deassertAck;
            default:
                    receiverState = idle;    
        endcase
    end
end

assign outputData = rxDataReg;

endmodule

