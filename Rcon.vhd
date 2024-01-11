----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:15:29 12/13/2023 
-- Design Name: 
-- Module Name:    Rcon - RconImp 
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

ENTITY Rcon IS
	PORT (RoundNo : IN  NATURAL RANGE 0 TO 10;
			R       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END Rcon;

ARCHITECTURE RconImp OF Rcon IS
BEGIN
	RconP : PROCESS (RoundNo)
		BEGIN
		CASE (RoundNo) IS
		WHEN 1 =>
			R <= x"01";
			
		WHEN 2 =>
			R <= x"02";
			
		WHEN 3 =>
			R <= x"04";
			
		WHEN 4 =>
			R <= x"08";
			
		WHEN 5 =>
			R <= x"10";
			
		WHEN 6 =>
			R <= x"20";
			
		WHEN 7 =>
			R <= x"40";
			
		WHEN 8 =>
			R <= x"80";
			
		WHEN 9 =>
			R <= x"1B";
			
		WHEN 10 =>
			R <= x"36";
		WHEN OTHERS =>
		  R <= x"00";
		END CASE;
	END PROCESS RconP;
END RconImp;


