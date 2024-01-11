----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:22 12/14/2023 
-- Design Name: 
-- Module Name:    RoundFun - RoundFunImp 
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

ENTITY RoundFun IS
	PORT (ENK   : IN STD_LOGIC;
	    ENS     : IN  STD_LOGIC;
			ENM     : IN  STD_LOGIC;
			ENSH    : IN  STD_LOGIC;
			ENA     : IN  STD_LOGIC;
			ENI     : IN  STD_LOGIC;
			ENC     : IN  STD_LOGIC;
			CLK     : IN  STD_LOGIC;
			RST     : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			CNT     : OUT NATURAL RANGE 0 TO 10;
			DataEnc : OUT STD_LOGIC_VECTOR (127 DOWNTO 0)
		);
END RoundFun;

ARCHITECTURE RoundFunImp OF RoundFun IS
      SIGNAL   CNTIn     :  NATURAL RANGE 0 TO 10;
		------------------- SUB BYTE ---------------------
		SIGNAL   NewB0Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB1Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB2Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB3Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB4Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB5Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB6Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB7Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB8Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB9Su   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB10Su  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB11Su  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB12Su  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB13Su  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB14Su  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB15Su  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		SIGNAL   NewB0Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB1Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB2Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB3Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB4Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB5Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB6Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB7Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB8Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB9Sui   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB10Sui  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB11Sui  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB12Sui  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB13Sui  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB14Sui  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB15Sui  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		------------------ SHIFTROW SIGNALS ----------------
		SIGNAL   NewB0Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB1Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB2Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB3Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB4Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB5Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB6Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB7Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB8Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB9Sh   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB10Sh  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB11Sh  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB12Sh  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB13Sh  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB14Sh  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB15Sh  : STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		------------------ MIXCOLUMN SIGNAL --------------------
		SIGNAL   NewB0m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB1m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB2m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB3m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB4m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB5m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB6m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB7m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB8m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB9m    : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB10m   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB11m   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB12m   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB13m   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB14m   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL	NewB15m   : STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		------- ADD ROUND KEY SIGNALS -------
		SIGNAL B0a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B1a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B2a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B3a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B4a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B5a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B6a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B7a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B8a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B9a   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B10a  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B11a  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B12a  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B13a  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B14a  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B15a  :  STD_LOGIC_VECTOR (7 DOWNTO 0);	
		
		SIGNAL B0aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B1aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B2aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B3aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B4aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B5aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B6aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B7aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B8aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B9aF   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B10aF  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B11aF  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B12aF  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B13aF  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B14aF  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B15aF  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		SIGNAL B0a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B1a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B2a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B3a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B4a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B5a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B6a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B7a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B8a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B9a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B10a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B11a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B12a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B13a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B14a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B15a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		SIGNAL B0a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B1a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B2a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B3a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B4a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B5a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B6a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B7a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B8a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B9a22   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B10a22  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B11a22  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B12a22  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B13a22  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B14a22  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL B15a22  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		SIGNAL K0a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K1a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K2a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K3a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K4a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K5a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K6a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K7a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K8a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K9a2   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K10a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K11a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K12a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K13a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K14a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K15a2  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		SIGNAL K0O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K1O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K2O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K3O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K4O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K5O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K6O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K7O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K8O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K9O    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K10O   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K11O  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K12O  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K13O  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K14O  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K15O  :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		SIGNAL K0OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K1OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K2OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K3OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K4OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K5OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K6OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K7OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K8OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K9OI    :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K10OI   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K11OI   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K12OI   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K13OI   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K14OI   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		SIGNAL K15OI   :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
		------------------ RCON --------------------
		SIGNAL R     :  STD_LOGIC_VECTOR (7 DOWNTO 0);
		
COMPONENT SubByte IS
	PORT (ENR     : IN  STD_LOGIC;
	    CLK     : IN  STD_LOGIC;
	    RST     : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT SubByte;
FOR SubByteTop : SubByte USE ENTITY WORK.SubByte(SubByteImp);

COMPONENT ShiftRows IS
	PORT (ENSH    : IN  STD_LOGIC;
	    CLK : IN  STD_LOGIC;
			RST : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT ShiftRows;
FOR ShiftRowsTop : ShiftRows USE ENTITY WORK.ShiftRows(ShiftRowsImp);

COMPONENT MixColumn IS
	PORT (ENM     : IN  STD_LOGIC;
	    CLK     : IN  STD_LOGIC;
	    RST     : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT MixColumn;
FOR MixColumnTop : MixColumn USE ENTITY WORK.MixColumn(MixColumnImp);

COMPONENT AddRoundKey IS
	PORT (ENA     : IN  STD_LOGIC;
	    CLK     : IN  STD_LOGIC;
	    RST     : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END COMPONENT AddRoundKey;
FOR AddRoundKeyIni : AddRoundKey USE ENTITY WORK.AddRoundKey(AddRoundKeyImp);
FOR AddRoundKeyTop : AddRoundKey USE ENTITY WORK.AddRoundKey(AddRoundKeyImp);

COMPONENT KeyExpansion IS
	PORT (Rcon    : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
	    ENK     : IN  STD_LOGIC;
	    CLK     : IN  STD_LOGIC;
	    RST     : IN  STD_LOGIC;
			K0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			K15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewK15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END COMPONENT KeyExpansion;
FOR KeyExpansionTop : KeyExpansion USE ENTITY WORK.KeyExpansion(KeyExpansionImp); 

COMPONENT Counter IS
	PORT (CLK : IN  STD_LOGIC;
			RST : IN  STD_LOGIC;
			EN  : IN  STD_LOGIC;
			CNT : OUT NATURAL RANGE 0 TO 10
		);
END COMPONENT Counter;
FOR CounterTop : Counter USE ENTITY WORK.Counter(CounterImp);

COMPONENT Rcon IS
	PORT (RoundNo : IN  NATURAL RANGE 0 TO 10;
			R       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END COMPONENT Rcon;
FOR RconTop : Rcon USE ENTITY WORK.Rcon(RconImp);

COMPONENT Reg IS
	PORT (CLK     : IN  STD_LOGIC;
			RST     : IN  STD_LOGIC;
			B0      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B1      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B2      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B3      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B4      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B5      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B6      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B7      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B8      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B9      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B10     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B11     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B12     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B13     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B14     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			B15     : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB0   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB1   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB2   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB3   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB4   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB5   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB6   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB7   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB8   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB9   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB10  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB11  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB12  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB13  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB14  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			NewB15  : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END COMPONENT Reg;
FOR RegTop1 : Reg USE ENTITY WORK.Reg(RegImp);
FOR RegTop2 : Reg USE ENTITY WORK.Reg(RegImp);

BEGIN

	AddRoundKeyIni   : AddRoundKey
		PORT MAP (ENI, CLK, RST, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
					 K0, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10, K11, K12, K13, K14, K15,
					 B0a, B1a, B2a, B3a, B4a, B5a, B6a, B7a, B8a, B9a, B10a, B11a, B12a, B13a, B14a, B15a);
	
	SubByteTop : SubByte 
		PORT MAP(ENS, CLK, RST, NewB0Sui, NewB1Sui, NewB2Sui, NewB3Sui, NewB4Sui, NewB5Sui, NewB6Sui, NewB7Sui, NewB8Sui,
					NewB9Sui, NewB10Sui, NewB11Sui, NewB12Sui, NewB13Sui, NewB14Sui, NewB15Sui,
					NewB0Su, NewB1Su, NewB2Su, NewB3Su, NewB4Su, NewB5Su, NewB6Su, NewB7Su, NewB8Su,
					NewB9Su, NewB10Su, NewB11Su, NewB12Su, NewB13Su, NewB14Su, NewB15Su);
					
	ShiftRowsTop : ShiftRows
		PORT MAP (ENSH, CLK, RST, NewB0Su, NewB1Su, NewB2Su, NewB3Su, NewB4Su, NewB5Su, NewB6Su, NewB7Su, NewB8Su,
					 NewB9Su, NewB10Su, NewB11Su, NewB12Su, NewB13Su, NewB14Su, NewB15Su,
					 NewB0Sh, NewB1Sh, NewB2Sh, NewB3Sh, NewB4Sh, NewB5Sh, NewB6Sh, NewB7Sh, NewB8Sh,
					 NewB9Sh, NewB10Sh, NewB11Sh, NewB12Sh, NewB13Sh, NewB14Sh, NewB15Sh);
					 
	MixColumnTop  : MixColumn
		PORT MAP (ENM, CLK, RST, NewB0Sh, NewB1Sh, NewB2Sh, NewB3Sh, NewB4Sh, NewB5Sh, NewB6Sh, NewB7Sh, NewB8Sh,
					 NewB9Sh, NewB10Sh, NewB11Sh, NewB12Sh, NewB13Sh, NewB14Sh, NewB15Sh,
					 NewB0m, NewB1m, NewB2m, NewB3m, NewB4m, NewB5m, NewB6m, NewB7m, NewB8m,
					 NewB9m, NewB10m, NewB11m, NewB12m, NewB13m, NewB14m, NewB15m);
					 
	CounterTop       : Counter
		PORT MAP (CLK, RST, ENC, CNTIn);
	
	RconTop          : Rcon
		PORT MAP (CNTIn, R);
	
	KeyExpansionTop  : KeyExpansion
		PORT MAP (R, ENK, CLK, RST, K0a2, K1a2, K2a2, K3a2, K4a2, K5a2, K6a2, K7a2, K8a2, K9a2, K10a2, K11a2, K12a2,
					 K13a2, K14a2, K15a2,
					 K0O, K1O, K2O, K3O, K4O, K5O, K6O, K7O, K8O, K9O, K10O, K11O, K12O,
					 K13O, K14O, K15O);
		
	AddRoundKeyTop : AddRoundKey
		PORT MAP (ENA, CLK, RST, B0aF, B1aF, B2aF, B3aF, B4aF, B5aF, B6aF, B7aF, B8aF,
		       B9aF, B10aF, B11aF, B12aF, B13aF, B14aF, B15aF,
					 K0O, K1O, K2O, K3O, K4O, K5O, K6O, K7O, K8O, K9O, K10O, K11O, K12O,
					 K13O, K14O, K15O,
					 B0a2, B1a2, B2a2, B3a2, B4a2, B5a2, B6a2, B7a2, B8a2, B9a2, B10a2, B11a2, B12a2,
					 B13a2, B14a2, B15a2);
	
	RegTop1         : Reg
		PORT MAP (CLK, RST, B0a2, B1a2, B2a2, B3a2, B4a2, B5a2, B6a2, B7a2, B8a2, B9a2, B10a2, B11a2, B12a2,
					 B13a2, B14a2, B15a2, B0a22, B1a22, B2a22, B3a22, B4a22, B5a22, B6a22, B7a22, B8a22, B9a22, 
					 B10a22, B11a22, B12a22, B13a22, B14a22, B15a22);
					 
	RegTop2         : Reg
		PORT MAP (CLK, RST, K0O, K1O, K2O, K3O, K4O, K5O, K6O, K7O, K8O, K9O, K10O, K11O, K12O,
					 K13O, K14O, K15O, K0OI, K1OI, K2OI, K3OI, K4OI, K5OI, K6OI, K7OI, K8OI, K9OI, K10OI, K11OI, K12OI,
					 K13OI, K14OI, K15OI);
					 
	DataEnc <= B0a2 & B1a2 & B2a2 & B3a2 & B4a2 & B5a2 & B6a2 & B7a2 & B8a2 & B9a2 & B10a2 & B11a2 & B12a2 & B13a2 & B14a2 & B15a2;
	CNT     <= CNTIn;				 
 
    
		NewB0Sui  <= B0a  WHEN (CNTIn = 0) ELSE B0a22;
		NewB1Sui  <= B1a  WHEN (CNTIn = 0) ELSE B1a22;
		NewB2Sui  <= B2a  WHEN (CNTIn = 0) ELSE B2a22;
		NewB3Sui  <= B3a  WHEN (CNTIn = 0) ELSE B3a22;
		NewB4Sui  <= B4a  WHEN (CNTIn = 0) ELSE B4a22;
		NewB5Sui  <= B5a  WHEN (CNTIn = 0) ELSE B5a22;
		NewB6Sui  <= B6a  WHEN (CNTIn = 0) ELSE B6a22;
		NewB7Sui  <= B7a  WHEN (CNTIn = 0) ELSE B7a22;
		NewB8Sui  <= B8a  WHEN (CNTIn = 0) ELSE B8a22;
		NewB9Sui  <= B9a  WHEN (CNTIn = 0) ELSE B9a22;
		NewB10Sui <= B10a WHEN (CNTIn = 0) ELSE B10a22;
		NewB11Sui <= B11a WHEN (CNTIn = 0) ELSE B11a22;
		NewB12Sui <= B12a WHEN (CNTIn = 0) ELSE B12a22;
		NewB13Sui <= B13a WHEN (CNTIn = 0) ELSE B13a22;
		NewB14Sui <= B14a WHEN (CNTIn = 0) ELSE B14a22;
		NewB15Sui <= B15a WHEN (CNTIn = 0) ELSE B15a22;
		K0a2      <= K0   WHEN (CNTIn = 1) ELSE K0OI;
		K1a2      <= K1   WHEN (CNTIn = 1) ELSE K1OI;
		K2a2      <= K2   WHEN (CNTIn = 1) ELSE K2OI;
		K3a2      <= K3   WHEN (CNTIn = 1) ELSE K3OI;
		K4a2      <= K4   WHEN (CNTIn = 1) ELSE K4OI;
		K5a2      <= K5   WHEN (CNTIn = 1) ELSE K5OI;
		K6a2      <= K6   WHEN (CNTIn = 1) ELSE K6OI;
		K7a2      <= K7   WHEN (CNTIn = 1) ELSE K7OI;
		K8a2      <= K8   WHEN (CNTIn = 1) ELSE K8OI;
		K9a2      <= K9   WHEN (CNTIn = 1) ELSE K9OI;
		K10a2     <= K10  WHEN (CNTIn = 1) ELSE K10OI;
		K11a2     <= K11  WHEN (CNTIn = 1) ELSE K11OI;
		K12a2     <= K12  WHEN (CNTIn = 1) ELSE K12OI;
		K13a2     <= K13  WHEN (CNTIn = 1) ELSE K13OI;
		K14a2     <= K14  WHEN (CNTIn = 1) ELSE K14OI;
		K15a2     <= K15  WHEN (CNTIn = 1) ELSE K15OI;
		
		----------- FOR THE FINAL ROUND ------------
		B0aF      <= NewB0m   WHEN (CNTIn < 10) ELSE NewB0Sh;
		B1aF      <= NewB1m   WHEN (CNTIn < 10) ELSE NewB1Sh;
		B2aF      <= NewB2m   WHEN (CNTIn < 10) ELSE NewB2Sh;
		B3aF      <= NewB3m   WHEN (CNTIn < 10) ELSE NewB3Sh;
		B4aF      <= NewB4m   WHEN (CNTIn < 10) ELSE NewB4Sh;
		B5aF      <= NewB5m   WHEN (CNTIn < 10) ELSE NewB5Sh;
		B6aF      <= NewB6m   WHEN (CNTIn < 10) ELSE NewB6Sh;
		B7aF      <= NewB7m   WHEN (CNTIn < 10) ELSE NewB7Sh;
		B8aF      <= NewB8m   WHEN (CNTIn < 10) ELSE NewB8Sh;
		B9aF      <= NewB9m   WHEN (CNTIn < 10) ELSE NewB9Sh;
		B10aF     <= NewB10m  WHEN (CNTIn < 10) ELSE NewB10Sh;
		B11aF     <= NewB11m  WHEN (CNTIn < 10) ELSE NewB11Sh;
		B12aF     <= NewB12m  WHEN (CNTIn < 10) ELSE NewB12Sh;
		B13aF     <= NewB13m  WHEN (CNTIn < 10) ELSE NewB13Sh;
		B14aF     <= NewB14m  WHEN (CNTIn < 10) ELSE NewB14Sh;
		B15aF     <= NewB15m  WHEN (CNTIn < 10) ELSE NewB15Sh;
END RoundFunImp;

