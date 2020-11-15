/* Program that finds the largest number in a list of integers	    */

				.text							// executable code follows
				.global	_start
_start:		
				LDR		R4, =RESULT		// R4 points to result location
				LDR		R2, [R4, #4]	// R2 holds the number of elements in the list
				ADD		R3, R4, #8		// R3 points to the first number
				LDR		R0, [R3]		// R0 holds the largest number so far
				BL 		LARGE

LARGE:			SUBS	R2, R2, #1		// decrement the loop counter
				BEQ		END
				ADD		R3, R3, #4
				LDR		R5, [R3]		// get the next number
				CMP		R0, R5			// check if larger number found
				BGE		LARGE
				MOV		R0, R5			// update the largest number
				B		LARGE

END:			B			END

				.data
RESULT:			.word		0
N:				.word		7					// number of entries in the list
NUMBERS:		.word		4, 5, 3, 6 		// the data
				.word		1, 8, 2

				.end    
