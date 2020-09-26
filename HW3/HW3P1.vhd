--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 1 Module 1 Course 2                    --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file HW3P1.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0 
-- Date of current revision:  @date 2018-08-08  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the entity VHDL code for a 
--              2-bit comparator.  The architecture is to be completed by the
--              student. 
--  Hierarchy:  Only 1 level for this simple device 
--  
--  Designed for: Coursera 
--                
--  Designed by:  @author Tim Scherr
--                University of Colorado
--
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- References and Resoures
--   > Followed an example found on page 32 of Freerange VHDL Textbook
------------------------------------------------------------------------------

library ieee;                                	
use ieee.std_logic_1164.all;           	
                                        
-- entity										
entity comparator2 is port (                 	
    A, B: in std_logic_vector(1 downto 0); 
    Equals: out std_logic);
end comparator2;

-- architecture
architecture comparator2_arch of comparator2 is
    signal AB0_out, AB1_out : std_logic;
begin
    AB0_out <= A(0) and B(0);
    AB1_out <= A(1) and B(1);
    Equals <= AB0_out or AB1_out;
end comparator2_arch;





