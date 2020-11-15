/* Program that finds the largest number in a list of integers	    */

				.text							// executable code follows
				.global	_start
_start:		
				LDR		R4, =RESULT		// R4 <- pointer to result location
				LDR		R5, [R4, #4]	// R5 <- number of elements in the list
				ADD		R6, R4, #8		// R6 points to the first number
				LDR		R7, [R6]			// R7 holds the largest number so far

LOOP:			SUBS		R5, R5, #1		// decrement the loop counter
				BEQ		DONE
				ADD		R6, R6, #4
				LDR		R8, [R6]			// get the next number
				CMP		R7, R8			// check if larger number found
				BGE		LOOP
				MOV		R7, R8			// update the largest number
				B			LOOP

DONE:			STR		R7, [R4]			// store largest number into result location

END:			B			END

				.data
RESULT:		.word		0
N:				.word		7					// number of entries in the list
NUMBERS:		.word		4, 5, 3, 6 		// the data
				.word		1, 8, 2

				.end    

