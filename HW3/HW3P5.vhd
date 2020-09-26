-- HW3P5.vhd
-- 4-bit Counter VHDL model implementing the 74LS163 4-bit binary counter
-- found in the following datasheet.
-- Datasheet: http://pdf.datasheetbank.com/datasheet-download/139897/1/Motorola/74160
--
-- References Used:
-- - https://startingelectronics.org/software/VHDL-CPLD-course/tut14-VHDL-adder/
---------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity HW3Q5 is port (
  CP: in std_logic;  -- clock
  SR: in std_logic := '1';  -- Active low, synchronous reset
  P:  in std_logic_vector(3 downto 0) := "0000";  -- Parallel input
  PE: in std_logic := '1';  -- Parallel Enable (Load)
  CEP: in std_logic := '0'; -- Count enable parallel input
  CET: in std_logic := '0'; -- Count enable trickle input
  Q:  out std_logic_vector(3 downto 0);
  TC: out std_logic  -- Terminal Count
);
end entity HW3Q5;

architecture HW3Q5_arch of HW3Q5 is
  begin counter_proc : process (CP, SR, PE, CEP, CET)
    begin
	 -- Handle Async Reset input being received
    if (SR = '0') then
      Q <= "0000";

    elsif (rising_edge(CP)) then
		-- Handle case where Output Q is set to known value via Input P
      if ((PE = '0')) then
        Q <= P;
		-- Implement Counter
      elsif(CEP = '1') then
		  Q <= Q + 1;
		  
		  -- Determine if rollover event occurred
		  if ((Q = "1110") and (CET = '1')) then
		    TC <= '1';
		  else
		    TC <= '0';
		  end if;
		end if;
    else
    -- do nothing
    end if;
	 
  end process counter_proc;
end architecture HW3Q5_arch;

