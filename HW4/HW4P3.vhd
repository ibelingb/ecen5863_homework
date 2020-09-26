-- HW4P3.vhd
-- 128 by 32 RAM using VHDL and the Altsyncram function
--
-- References Used:
-- 
---------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity HW4Q3 is port (
  CP: in std_logic;  -- clock
  SR: in std_logic := '1';  -- Active low, synchronous reset
  P:  in std_logic_vector(3 downto 0) := "0000";  -- Parallel input
  PE: in std_logic := '1';  -- Parallel Enable (Load)
  CEP: in std_logic := '0'; -- Count enable parallel input
  CET: in std_logic := '0'; -- Count enable trickle input
  Q:  out std_logic_vector(3 downto 0);
  TC: out std_logic  -- Terminal Count
);
end entity HW4Q3;

architecture HW4Q3_arch of HW4Q3 is
  begin ram_proc : process (CP, SR, PE, CEP, CET)
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
	 
  end process ram_proc;
end architecture HW4Q3_arch;

