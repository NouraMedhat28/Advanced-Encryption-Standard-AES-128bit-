----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:41 12/10/2023 
-- Design Name: 
-- Module Name:    BlockToState - Behavioral 
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

ENTITY BlockToState IS
	PORT (DATA : IN  STD_LOGIC_VECTOR (127 DOWNTO 0);
			B0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END ENTITY BlockToState;

ARCHITECTURE BlockToStateImp OF BlockToState IS
BEGIN
	B0  <= DATA(127 DOWNTO 120);
	B1  <= DATA(119 DOWNTO 112);
	B2  <= DATA(111 DOWNTO 104);
	B3  <= DATA(103 DOWNTO 96);
	B4  <= DATA(95  DOWNTO 88);
	B5  <= DATA(87  DOWNTO 80);
	B6  <= DATA(79  DOWNTO 72);
	B7  <= DATA(71  DOWNTO 64);
	B8  <= DATA(63  DOWNTO 56);
	B9  <= DATA(55  DOWNTO 48);
	B10 <= DATA(47  DOWNTO 40);
	B11 <= DATA(39  DOWNTO 32);
	B12 <= DATA(31  DOWNTO 24);
	B13 <= DATA(23  DOWNTO 16);
	B14 <= DATA(15  DOWNTO 8);
	B15 <= DATA(7   DOWNTO 0);
	

END BlockToStateImp;

