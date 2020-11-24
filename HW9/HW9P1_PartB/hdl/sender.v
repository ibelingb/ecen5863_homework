///////////////////////////////////////////////////////////////////////////////////////////////////
//
// File: sender.v
//
// Description: 
//
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: Brian Ibeling
//
// Refernces:
//  - https://www.intel.com/content/www/us/en/programmable/support/support-resources/design-examples/design-software/verilog/ver_statem.html
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module sender( clk, reset, enableTx, ack, req, data );
input clk, reset, enableTx, ack;
output req;
output [7:0] data;

// Local Variables
reg enable, txState, reqState, ackState, dataSent;
wire rollover;
reg [2:0] senderState;
reg [7:0] counterData;

// Define states of State Machine
parameter idle=0, awaitTxEnable=1, sendData=2, awaitAck=3, receivedAck=4, ackDeasserted=5;

// Create Counter
counter mCounter(clk, reset, enable, rollover, data);

// Initial values
initial
begin
    enable = 0;
    reqState = 0;
    ackState = 0;
    dataSent = 0;
    txState = 0;
    senderState = 2'b0;
    counterData = 7'b0;
end

// Detect and hold the data output from the counter
// Also disable counter from continuing and send req signal to receiver
always @(data)
begin
    if(counterData != data)
    begin
        dataSent = 1;
    end
    else
    begin
        dataSent = 0;
    end
end


always @(ack)
begin
    if(ack == 1)
        ackState = 1;
    else
        ackState = 0;
end

always @(enableTx)
begin
    if((enableTx == 1) && (reqState == 0))
        txState = 1;
    else
        txState = 0;
end

// Handle state transitions
always @(senderState)
begin
    case (senderState)
        idle:
            enable = 0;
        awaitTxEnable:
            enable = 1;
        sendData:
        begin
            counterData = data;
            enable = 0;
            reqState = 1;
        end
        awaitAck:
            reqState = 1;
        // receive ack signal from receiver, deassert req signal
        receivedAck:
            reqState = 0;
        // ack deasserted - enable counter again and allow for 
        ackDeasserted:
            enable = 0;
        default:
            enable = 0;
    endcase
end

// Define state machine
always @(posedge clk)
begin
    if (reset)
    begin
        senderState = idle;
    end
    else
    begin
        case (senderState)
            idle:
                if(txState == 1)
                    senderState = awaitTxEnable;
                else
                    senderState = idle;
            awaitTxEnable:
                if(dataSent == 1)
                    senderState = sendData;
                else
                    senderState = awaitTxEnable;
            sendData:
                senderState = awaitAck;
            awaitAck:
                if(ackState == 0)
                    senderState = awaitAck;
                else
                    senderState = receivedAck;
            receivedAck:
                if(ackState == 0)
                    senderState = ackDeasserted;
                else
                    senderState = receivedAck;
            ackDeasserted:
                if(ackState == 0)
                    senderState = idle;
                else
                    senderState = ackDeasserted;
            default:
                senderState = idle;
        endcase
    end
end

assign req = reqState;

endmodule
