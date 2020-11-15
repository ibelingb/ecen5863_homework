/* Program that converts a binary number to decimal */

				.text							// executable code follows
				.global	_start
_start:		
				LDR		R4, =N			
				
				LDR		R4, [R4]		// R4 holds N
				MOV		R6, R4			// parameter for DIVIDE goes in R6
				
				// R9 holds thousands, R8 holds hundreds, Tens digit is now in R7, ones digit is in R6
				// Isolate each individual bit and store in unique register (R9-R6)
				// Isolate 1000s digit in R9
				MOV		R1, #1000
				BL		DIVIDE			// Call divide subroutine

				MOV		R9, R7
				
				// Isolate 100s digit in R8
				MOV		R1, #100
				BL		DIVIDE			// Call divide subroutine
				MOV		R8, R7
				
				// Isolate 10s digit in R7, 1s digit in R6
				MOV		R1, #10
				BL		DIVIDE			// Call divide subroutine

				// Individual digits held in registers R9 - R6. Shift values accordingly and write to Digits.
				MOV 	R9, R9, LSL #24
				MOV 	R8, R8, LSL #16
				MOV 	R7, R7, LSL #8
				MOV 	R5, #0 // Clear digits storage location to 0
				ADD		R5, R6
				ADD		R5, R7
				ADD		R5, R8
				ADD		R5, R9

END:			B		END

/* Subroutine to perform the integer division R6 / R1. 
 * Returns: quotient in R7, and remainder in R6
 */
DIVIDE:			MOV		R2, #0
CONT:			CMP		R6, R1
				BLT		DIV_END
				SUB		R6, R1
				ADD		R2, #1
				B		CONT
DIV_END:		MOV		R7, R2		// return quotient in R1 (remainder is in R0)
				BX		LR

N:				.word		9999	// number of entries in the list
Digits:			.space		8 		// storage space for the decimal digits

				.end    

