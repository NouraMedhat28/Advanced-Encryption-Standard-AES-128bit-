----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:00 12/14/2023 
-- Design Name: 
-- Module Name:    ControlUnit - ControlUnitImp 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY ControlUnit IS
	PORT (Valid : IN STD_LOGIC;
	    CLK    : IN  STD_LOGIC;
			RST    : IN  STD_LOGIC;
			CNT    : IN  NATURAL RANGE 0 TO 10;
			Done   : OUT STD_LOGIC;
			ENC    : OUT STD_LOGIC; ---- COUNTER ENABLE
			ENS    : OUT STD_LOGIC; ---- ENABLING SUBBYTE
			ENSH   : OUT STD_LOGIC; ---- ENABLING SHIFTROW
			ENA    : OUT STD_LOGIC; ---- ENABLING ADDROUND
			ENI    : OUT STD_LOGIC; ---- ENABLING INITIAL ADDROUND
			ENK    : OUT STD_LOGIC;
			ENM    : OUT STD_LOGIC  ---- ENABLING MIXCOLUMN
		);
END ControlUnit;

ARCHITECTURE ControlUnitImp OF ControlUnit IS
	TYPE STATE IS (IDLE, AddRoundKey, ShiftRow, MixColumn, SubByte, ByPass, ByPass2);
	SIGNAL PresentState : STATE;
	SIGNAL NextState    : STATE;

BEGIN 
	-------- STATE TRANSITION --------
	CSP: PROCESS (CLK, RST)
	BEGIN 
		IF (RST = '0')THEN 
			PresentState <= IDLE;
		ELSIF (RISING_EDGE (CLK)) THEN
			PresentState <= NextState;
		END IF;
	END PROCESS CSP;
	
	-------- NEXT STATE --------
	NSP : PROCESS (PresentState, CNT, Valid)
	BEGIN 
		CASE (PresentState) IS
			WHEN IDLE =>
			 IF(Valid = '1') THEN
				NextState <= AddRoundKey;
				ENA       <= '0';
				ENI       <= '1';
				ENC       <= '0';
				ENM       <= '0';
				ENS       <= '0';
				ENSH      <= '0';
				ENK       <= '0';
				Done      <= '0';
			ELSE 
			 NextState <= IDLE;
				ENA       <= '0';
				ENI       <= '0';
				ENC       <= '0';
				ENM       <= '0';
				ENS       <= '0';
				ENSH      <= '0';
				ENK       <= '0';
				Done      <= '0';
			END IF;
			WHEN AddRoundKey =>
				IF (CNT < 10) THEN
					NextState <= ByPass;
					ENA       <= '0';
					ENC       <= '0';
					ENI       <= '0';
					ENSH      <= '0';
					ENS       <= '1';
					ENM       <= '0';
					ENK       <= '0';
					Done      <= '0';
				ELSE 
					NextState <= IDLE;
					ENA       <= '0';
					ENC       <= '1';
					ENSH      <= '0';
					ENI       <= '0';
					ENS       <= '0';
					ENM       <= '0';
					ENK       <= '0';
					Done      <= '1';
				END IF;
				
			WHEN ByPass =>
			   NextState <= SubByte;
				  ENA       <= '0';
				  ENC       <= '0';
				  ENSH      <= '0';
				  ENI       <= '0';
				  ENS       <= '1';
				  ENM       <= '0';
				  ENK       <= '0';
				  Done      <= '0';
				  
			WHEN SubByte =>
				NextState <= ShiftRow;
				ENA       <= '0';
				ENC       <= '1';
				ENSH      <= '1';
				ENI       <= '0';
				ENS       <= '0';
				ENM       <= '0';
				ENK       <= '0';
				Done      <= '0';
			WHEN ShiftRow => 
				IF (CNT < 10) THEN
					NextState <= MixColumn;
					ENA       <= '0';
					ENC       <= '0';
					ENSH      <= '0';
					ENI       <= '0';
					ENS       <= '0';
					ENM       <= '1';
					ENK       <= '1';
					Done      <= '0';
				ELSE 
					NextState <= ByPass2;
					ENA       <= '0';
					ENC       <= '0';
					ENSH      <= '0';
					ENI       <= '0';
					ENS       <= '0';
					ENM       <= '0';
					ENK       <= '1';
					Done      <= '0';
				END IF;
				
			WHEN MixColumn =>
				NextState <= AddRoundKey;
				ENA       <= '1';
				ENC       <= '0';
				ENSH      <= '0';
				ENI       <= '0';
				ENS       <= '0';
				ENM       <= '0';
				ENK       <= '0';
				Done      <= '0';
				
			WHEN ByPass2 =>
				NextState <= AddRoundKey;
				ENA       <= '1';
				ENC       <= '0';
				ENSH      <= '0';
				ENI       <= '0';
				ENS       <= '0';
				ENM       <= '0';
				ENK       <= '0';
				Done      <= '0';
				
			WHEN OTHERS =>
			  NextState <= IDLE;
				ENA       <= '0';
				ENC       <= '0';
				ENSH      <= '0';
				ENI       <= '0';
				ENS       <= '0';
				ENM       <= '0';
				ENK       <= '0';
				Done      <= '0';
			END CASE;
		END PROCESS NSP;
END ControlUnitImp;


