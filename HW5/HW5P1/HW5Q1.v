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
 * - https://stackoverflow.com/questions/17413014/whats-the-best-way-to-tell-if-a-bus-contains-a-single-x-in-verilog
 */

module HW5Q1 (

	input clk, 		// Clock
	input RdPtrClr,	//  Read Pointer Clear,  to reset the read pointer
	input WrPtrClr,	//  Write Pointer Clear, to reset the write pointer
	input rdinc,		//  Read pointer increment signal 
	input wrinc,		//  Write pointer increment signal
	input [7:0] DataIn,	//  Data input bus
	output reg [7:0] DataOut,	//  Data Output bus
	input rden,		//  read (output) enable
	input wden		//  write (input) enable
);

// Define FIFO memory and read/write pointers
reg [7:0] fifo [8:0]; // Define 8x9 bit FIFO array
reg [3:0] writePtr = 4'b0000;
reg [3:0] readPtr = 4'b0000;

// Set initial values
initial
	begin
	writePtr = 4'b0000;
	readPtr = 4'b0000;
	
	DataOut <= 8'bzzzzzzzz;
	end

always@ (posedge clk)
	begin
	
	// Write Enable received
	if(wden == 1)
		begin
		fifo[writePtr] <= DataIn;
		end
		
	// Read Enable received, output current fifo read ptr.
	// Otherwise, output high impedence.
	if(rden == 1)
		begin
		// Check if input data is undefined. Set to high impedance if true
		// Otherwise, output data read from FIFO at current readPtr
		if(fifo[readPtr] === 8'bxxxxxxxx)
			begin
			DataOut <= 8'bzzzzzzzz;
			end
		else
			begin
			DataOut <= fifo[readPtr];
			end
		end
	else
		begin
		DataOut <= 8'bzzzzzzzz;
		end
	
	// Reset Read/Write Ptrs to 0
	if(RdPtrClr == 1 )
		begin
		readPtr = 0;
		end
	if(WrPtrClr == 1)
		begin
		writePtr = 0;
		end
	
	// Increment Read/Write Ptrs, with max of FIFO size of 9 bits wide
	if((rdinc == 1) && (readPtr < 8))
		begin
		readPtr = readPtr + 1;
		end
	if((wrinc == 1) && (writePtr < 8))
		begin
		writePtr = writePtr + 1;
		end
		
	end // always@


endmodule