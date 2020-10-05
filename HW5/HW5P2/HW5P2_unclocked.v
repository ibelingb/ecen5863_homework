/*
 * Write a VHDL or Verilog model for a 32-bit, arithmetic logic unit (ALU). 
 * Develop both a clocked (register the inputs and outputs) and unclocked version of the ALU.
 * A and B are 32-bit inputs to the ALU, and Y is the output. 
 * A shift operation follows the arithmetic and logical operation.
 *
 * This is the unclocked version of the ALU
 */

module HW5P2_unclocked (
	input  [31:0] A, 		// Input < as per Q> bit A to ALU
	input  [31:0] B,		//  Input < as per Q> bit B to ALU
	input  [5:0]  Op,		//  Input ALU Opcodes
	output reg [31:0] Y		//  <as per Q> bit output of ALU 
 );


// Define ALU_OUT reg 
reg [31:0] ALU_OUT;


// Set initial values
initial
begin
	Y = 32'bz;
	ALU_OUT = 32'b0;
end


always @*
begin
	case(Op) // Lookup Table
		6'b000xxx: ALU_OUT = A;
		6'b001xxx: ALU_OUT = A + B;
		6'b010xxx: ALU_OUT = A - B;
		6'b011xxx: ALU_OUT = A & B;
		6'b100xxx: ALU_OUT = A | B;
		6'b101xxx: ALU_OUT = A + 1;
		6'b110xxx: ALU_OUT = A - 1;
		6'b111xxx: ALU_OUT = B;
		
		6'bxxxx00: Y = ALU_OUT;
		6'bxxxx01: Y = ALU_OUT << 1;
		6'bxxxx10: Y = ALU_OUT >> 1;
		6'bxxxx11: Y = 32'b0;

		default: ; // If Opscode invalid, ignore
	endcase

end

endmodule 