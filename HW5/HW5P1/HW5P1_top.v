/*
 * Design a FIFO memory in Verilog or VHDL. Make it 8-deep, 9 bits wide. 
 * When a read signal is asserted, the output of the FIFO should be enabled, otherwise it should be high impedance. 
 * When the write signal is asserted, write to one of the 9 bit registers. 
 * Use rdinc and wrinc as input signals to increment the pointers that indicate which register to read or write. 
 * Use RdPtrClr and WrPtrClr as input signals which reset the pointers to point to the first register in the array. 
 * Do not implement full or empty signals.
 *
 * References and Examples:
 * - https://projectf.io/posts/initialize-memory-in-verilog/
 */

module HW5P1_top (

	input clk, 		// Clock
	input RdPtrClr,	//  Read Pointer Clear,  to reset the read pointer
	input WrPtrClr,	//  Write Pointer Clear, to reset the write pointer
	input rdinc,		//  Read pointer increment signal 
	input wrinc,		//  Write pointer increment signal
	input  [7:0] DataIn,	//  Data input bus
	output reg [7:0] DataOut,	//  Data Output bus
	output rden,		//  read (output) enable
	input wden		//  write (input) enable
);

// Define FIFO memory
reg [8:0] fifo [7:0];
reg [2:0] writePtr = 3'b000;
reg [2:0] readPtr = 3'b000;

always@ (posedge clk)
	begin
	
	// Write Enable received
	if(wden == 1)
		begin
		fifo[writePtr] <= DataIn;
		end
		
	// Read Enable received
	if(rden == 1)
		begin
		DataOut <= fifo[readPtr];
		end
	
	// Reset Read/Write Ptrs
	if(RdPtrClr == 1 )
		begin
		readPtr = 0;
		end
	if(WrPtrClr == 1)
		begin
		writePtr = 0;
		end
	
	// Increment Read/Write Ptrs, with max of FIFO size of 9 bits wide
	if((rdinc == 1) && (readPtr < 7))
		begin
		readPtr = readPtr + 1;
		end
	if((wrinc == 1) && (writePtr < 7))
		begin
		writePtr = writePtr + 1;
		end
		
	end


endmodule