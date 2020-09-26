/*
--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 4 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- [Replace [items in brackets] with your content]
-- @file HW4P1.v
-- @brief 2-bit Comparator
-- @version: 1.0 
-- Date of current revision:  @date [YYYY-MM-DD]  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the VHDL which describes the 
--               FPGA implementation of a Majority Vote Circuit. The inputs are  
--               signals A, B, C with one output Y that is true only if at  
--               least 2 of the inputs are true.
 
--  Hierarchy:  There is only one level in this simple design.
--  
--  Designed for: [Customer] 
--                [Address]
--                [City, ST ZIP]
--                [www.customer, phone number]
--  Designed by:  @author [your name] 
--                [Organization]
--                [email] 
-- 
--      Copyright (c) 2019 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 
-- References and Resources:
--  - Followed example code from Chu Textbook Chapter 2
*/


module HW4P1 (
   input [1:0] A, B,
   output Equals
);
	// Define signals
	wire p0, p1, p2, p3;
	
	
	// Determine all possible combinations which are true
	assign p0 = (A[0] & B[0]) & (A[1] & B[1]);
	assign p1 = (~A[0] & ~B[0]) & (A[1] & B[1]);
	assign p2 = (A[0] & B[0]) & (~A[1] & ~B[1]);
	assign p3 = (~A[0] & ~B[0]) & (~A[1] & ~B[1]);
	
	// Sum of product terms
	assign Equals = p0 | p1 | p2 | p3;

endmodule
    