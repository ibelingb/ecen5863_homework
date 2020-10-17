-- HW6P1 - Train Simulation State Machine
--
-- References and Examples:
--  - Used example code from Rapid Prototyping of digital systems, Chapter 6

-- Librarys and includes
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Define Entity
ENTITY Tcontrol IS
PORT( reset_n,                        --  asynchronous active low reset
      clock, sensor1, sensor2,
		sensor3, sensor4, sensor5 : IN STD_LOGIC;
		switch1, switch2, switch3 : OUT STD_LOGIC;
		-- dirA and dirB are 2-bit logic vectors(i.e. an array of 2 bits)
		dirA, dirB : OUT STD_LOGIC_VECTOR( 1 DOWNTO 0 ));
END Tcontrol;


-- Define Architecture
ARCHITECTURE a OF Tcontrol IS
	TYPE STATE_TYPE IS (ABout, Ain, Bin, Astop, Bstop);
	SIGNAL state: STATE_TYPE;
	SIGNAL sensor42, sensor43, sensor21 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	
BEGIN
	PROCESS (reset_n, clock)
	BEGIN
	
		-- Reset state on asynchronous reset input received
		IF reset_n = '1' THEN
			state <= ABout;
			
		-- This section executes on each positive edge of the clock
		-- Signal assignments will generate D FFs
		-- Case statement will determine the next state
		ELSIF clock'EVENT AND clock = '1' THEN
			CASE state IS
				WHEN ABout =>
					CASE sensor42 IS
						WHEN "00" => state <= ABout;
						WHEN "01" => state <= Bin;
						WHEN "10" => state <= Ain;
						WHEN "11" => state <= Ain;
						WHEN OTHERS => state <= ABout;
					END CASE;

				WHEN Ain =>
					CASE sensor21 IS
						WHEN "00" => state <= Ain;
						WHEN "01" => state <= ABout;
						WHEN "10" => state <= Bstop;
						WHEN "11" => state <= ABout;
						WHEN OTHERS => state <= ABout;
					END CASE;
				
				WHEN Bin =>
					CASE sensor43 IS
						WHEN "00" => state <= Bin;
						WHEN "01" => state <= ABout;
						WHEN "10" => state <= Astop;
						WHEN "11" => state <= ABout;
						WHEN OTHERS => state <= ABout;
					END CASE;
					
				WHEN Astop =>
					IF sensor3 = '1' THEN
						state <= Ain;
					ELSE
						state <= Astop;
					END IF;

				WHEN Bstop =>
					IF sensor1 = '1' THEN
						state <= Bin;
					ELSE
						state <= Bstop;
					END IF;
			END CASE;
		END IF;
	END PROCESS;

	
	sensor42 <= sensor4 & sensor2;
	sensor43 <= sensor4 & sensor3;
	sensor21 <= sensor2 & sensor1;
	
	switch3 <= '0';
	
	-- Outputs which depend on state, use state to specify the value
	WITH state SELECT
		switch1 <= 	'0' WHEN ABout,
						'0' WHEN Ain,
						'1' WHEN Bin,
						'1' WHEN Astop,
						'0' WHEN Bstop;
	
	WITH state SELECT
		switch2 <= 	'0' WHEN ABout,
						'0' WHEN Ain,
						'1' WHEN Bin,
						'1' WHEN Astop,
						'0' WHEN Bstop;
	
	WITH state SELECT
		dirA <= 	"10" WHEN ABout,
					"10" WHEN Ain,
					"10" WHEN Bin,
					"00" WHEN Astop,
					"10" WHEN Bstop;
		
	WITH state SELECT
		dirB <= 	"01" WHEN ABout,
					"01" WHEN Ain,
					"01" WHEN Bin,
					"01" WHEN Astop,
					"00" WHEN Bstop;
	END a;
