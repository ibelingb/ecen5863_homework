//------------------------------------------------------------------------------
//                                                                            --
//                     [Functional Unit Name]  Test Bench                     --
//                                                                            --
//------------------------------------------------------------------------------
//--
//-- Replace [items in brackets] with your content
//-- @file [YourFPGA_tb.vhd]
//-- @version: 1.0 
//-- Date of current revision:  @date YYYY-MM-DD  
//-- Target FPGA: [Intel Altera MAX10] 
//-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
//--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
//--             [Quartus Prime 16.1]  for place and route if applied
//--             
//--  Functional Description:  This file contains the VHDL which describes the 
//--              test bench for an FPGA implementation of a [4-bit mux]
//--  Hierarchy:  This test bench uses the [YourFPGA.vhd] component found
//--              in the Work Library.
//--             The YourFPGA component is instantiated. This is the component 
//--             under test.  Other devices on the board are modeled as processes 
//--             which run concurrently.    The other 
//--             devices are listed in the following function sections:
//--                [ I.   Clock - generates XX MHz clock 
//--                 II.  Reset control
//--                 III. Interrupt Control
//--                 IV.  Address/Data Bus
//--                      etc.         ]
//--
//--              [The FPGA is one entity.  The architecture is one
//--              functional section, which compares all the possible
//--              input bit vector combinations and checks to see if the
//--              result is correct after a 10 ns delay.]   
//
//--	 TESTS 
//--   I. [Majority Vote test
//--    compare all the possible input bit vector combinations and checks to see 
//--    if the result is correct after a 10 ns delay.]
//--  
//--  Designed for: [Customer] 
//--                [Address]
//--                [City, ST ZIP]
//--                [www.customer, phone number]
//--  Designed by:  @author [your name] 
//--                [Organization]
//--                [email] 
//-- 
//--      Copyright (c) 2018 by Tim Scherr
//--
//-- Redistribution, modification or use of this software in source or binary
//-- forms is permitted as long as the files maintain this copyright. Users are
//-- permitted to modify this and use it to learn about the field of HDl code.
//-- Tim Scherr and the University of Colorado are not liable for any misuse
//-- of this material.
//------------------------------------------------------------------------------
//-- 

// Resources:
// - https://www.youtube.com/watch?v=XzavC0lpoSs


//--------------------------------------------------------------------
//-- Libraries
//----------------------------------------------------------------------

//-------------------------------------------------------------------
//-- Testbench module
//----------------------------------------------------------------------
module HW5P3_tb;    
//----------------------------------------------------------------------
//--- constant declarations
//----------------------------------------------------------------------
   localparam  TIME = 10; // defines the wait period.
//----------------------------------------------------------------------                                                                      
//-- signal declarations 
//---------------------------------------------------------	``-------------
//--  wire clock;    -- clock if needed
//--  wire reset_n;    -- reset if needed  
  reg [1:0] a_tb;  // data input
  reg [1:0] b_tb;  // data input
  wire equals_tb; // data output
  
//----------------------------------------------------------------------
//-- Component instances
//----------------------------------------------------------------------
//-- instantiate the device under test
HW5P3 HW5P3_dut    // Device under Test  #(.TIME(10))
    ( 
        // Inputs
        .A(a_tb),
		.B(b_tb),
         // Outputs
        .Equals(equals_tb)
        );  

//----------------------------------------------------------------------
//-- External Device Simulation Processes
//----------------------------------------------------------------------

//----------------------------------------------------------------------
//-- Test Process
//----------------------------------------------------------------------                                       
initial
	begin
	
	a_tb = 2'b00;
	b_tb = 2'b00;
	#100;
	
	a_tb = 2'b01;
	b_tb = 2'b00;
	#100;
	
	a_tb = 2'b10;
	b_tb = 2'b00;
	#100;
	
	a_tb = 2'b11;
	b_tb = 2'b00;
	#100;
	
	a_tb = 2'b00;
	b_tb = 2'b01;
	#100;
	
	a_tb = 2'b01;
	b_tb = 2'b01;
	#100;
	
	a_tb = 2'b10;
	b_tb = 2'b01;
	#100;
	
	a_tb = 2'b11;
	b_tb = 2'b01;
	#100;

	a_tb = 2'b00;
	b_tb = 2'b10;
	#100;
	
	a_tb = 2'b01;
	b_tb = 2'b10;
	#100;
	
	a_tb = 2'b10;
	b_tb = 2'b10;
	#100;
	
	a_tb = 2'b11;
	b_tb = 2'b10;
	#100;

	a_tb = 2'b00;
	b_tb = 2'b11;
	#100;
	
	a_tb = 2'b01;
	b_tb = 2'b11;
	#100;
	
	a_tb = 2'b10;
	b_tb = 2'b11;
	#100;
	
	a_tb = 2'b11;
	b_tb = 2'b11;
	#100;
	
	end

endmodule // of HW5P3_tb;     


    