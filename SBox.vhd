----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:02 12/09/2023 
-- Design Name: 
-- Module Name:    SubByte - Behavioral 
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

LIBRARY work;
library IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY SBox IS
    PORT (OldB : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
          NewB : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
    END ENTITY SBox;

ARCHITECTURE SBoxImp OF SBox IS
BEGIN
    SBOXP : PROCESS IS
	 BEGIN
        CASE (OldB) IS
            WHEN x"00" =>
                NewB <= x"63";
            
            WHEN x"01" =>
                NewB <= x"7C";
            
            WHEN x"02" =>
                NewB <= x"77";

            WHEN x"03" =>
                NewB <= x"7B";

            WHEN x"04" =>
                NewB <= x"F2";

            WHEN x"05" =>
                NewB <= x"6B";

            WHEN x"06" =>
                NewB <= x"6F";

            WHEN x"07" =>
                NewB <= x"C5";

            WHEN x"08" =>
                NewB <= x"30";

            WHEN x"09" =>
                NewB <= x"01";

            WHEN x"0A" =>
                NewB <= x"67";

            WHEN x"0B" =>
                NewB <= x"2B";

            WHEN x"0C" =>
                NewB <= x"FE";

            WHEN x"0D" =>
                NewB <= x"D7";

            WHEN x"0E" =>
                NewB <= x"AB";

            WHEN x"0F" =>
                NewB <= x"76";

            WHEN x"10" =>
                NewB <= x"CA";
-------------------------------------------------------------------------------------------------------------------------------------------------------
            WHEN x"11" =>
                NewB <= x"82";

            WHEN x"12" =>
                NewB <= x"C9";

            WHEN x"13" =>
                NewB <= x"7D";

            WHEN x"14" =>
                NewB <= x"FA";

            WHEN x"15" =>
                NewB <= x"59";

            WHEN x"16" =>
                NewB <= x"47";

            WHEN x"17" =>
                NewB <= x"F0";

            WHEN x"18" =>
                NewB <= x"AD";

            WHEN x"19" =>
                NewB <= x"D4";

            WHEN x"1A" =>
                NewB <= x"A2";

            WHEN x"1B" =>
                NewB <= x"AF";

            WHEN x"1C" =>
                NewB <= x"9C";

            WHEN x"1D" =>
                NewB <= x"A4";

            WHEN x"1E" =>
                NewB <= x"72";

            WHEN x"1F" =>
                NewB <= x"C0";
----------------------------------------------------------------------------------------------------------------------------

            WHEN x"20" =>
                NewB <= x"B7";

            WHEN x"21" =>
                NewB <= x"FD";

            WHEN x"22" =>
                NewB <= x"93";

            WHEN x"23" =>
                NewB <= x"26";
            
            WHEN x"24" =>
                NewB <= x"36";

            WHEN x"25" =>
                NewB <= x"3F";

            WHEN x"26" =>
                NewB <= x"F7";

            WHEN x"27" =>
                NewB <= x"CC";

            WHEN x"28" =>
                NewB <= x"34";

            WHEN x"29" =>
                NewB <= x"A5";

            WHEN x"2A" =>
                NewB <= x"E5";

            WHEN x"2B" =>
                NewB <= x"F1";
					 
				WHEN x"2C" =>
					 NewB <= x"71";
					 
				WHEN x"2D" =>
					 NewB <= x"D8";
					 
				WHEN x"2E" =>
					 NewB <= x"31";
					 
				WHEN x"2F" =>
					 NewB <= x"15";
------------------------------------------------------------------------------------					
				WHEN x"30" =>
					 NewB <= x"04";
					 
				WHEN x"31" =>
					 NewB <= x"C7";
					 
				WHEN x"32" =>
					 NewB <= x"23";
					 
				WHEN x"33" =>
					 NewB <= x"C3";
					 
				WHEN x"34" =>
					 NewB <= x"18";
					 
				WHEN x"35" =>
					 NewB <= x"96";
					 
				WHEN x"36" =>
					 NewB <= x"05";
					 
				WHEN x"37" =>
					 NewB <= x"9A";
					 
				WHEN x"38" =>
					 NewB <= x"07";
					 
				WHEN x"39" =>
					 NewB <= x"12";
					 
				WHEN x"3A" =>
					 NewB <= x"80";
					 
				WHEN x"3B" =>
					 NewB <= x"E2";
					 
				WHEN x"3C" =>
					 NewB <= x"EB";
					 
				WHEN x"3D" => 
					 NewB <= x"27";
					 
				WHEN x"3E" =>
					 NewB <= x"B2";
					 
				WHEN x"3F" =>
					 NewB <= x"75";
					 
----------------------------------------------------------------------------
				WHEN x"40" =>
					 NewB <= x"09";
					 
				WHEN x"41" =>
					 NewB <= x"83";
					 
				WHEN x"42" =>
					 NewB <= x"2C";
					 
				WHEN x"43" =>
					 NewB <= x"1A";
					 
				WHEN x"44" =>
					 NewB <= x"1B";
					 
				WHEN x"45" =>
					 NewB <= x"6E";
					 
				WHEN x"46" =>
					 NewB <= x"5A";
					 
				WHEN x"47" =>
					 NewB <= x"A0";
					 
				WHEN x"48" =>
					 NewB <= x"52";
					 
				WHEN x"49" =>
					 NewB <= x"3B";
					 
				WHEN x"4A" =>
					 NewB <= x"D6";
					 
				WHEN x"4B" =>
					 NewB <= x"B3";
					 
				WHEN x"4C" =>
					 NewB <= x"29";
					 
				WHEN x"4D" =>
					 NewB <= x"E3";
					 
				WHEN x"4E" =>
					 NewB <= x"2F";
					 
				WHEN x"4F" =>
					 NewB <= x"84";
					 
----------------------------------------------------------------------

				WHEN x"50" =>
					 NewB <= x"53";
					 
				WHEN x"51" =>
					 NewB <= x"D1";
					 
				WHEN x"52" =>
					 NewB <= x"00";
					 
				WHEN x"53" =>
					 NewB <= x"ED";
					 
				WHEN x"54" =>
					 NewB <= x"20";
					 
				WHEN x"55" =>
					 NewB <= x"FC";
					 
				WHEN x"56" =>
					 NewB <= x"B1";
					 
				WHEN x"57" =>
					 NewB <= x"5B";
					 
				WHEN x"58" =>
					 NewB <= x"6A";
					 
				WHEN x"59" =>
					 NewB <= x"CB";
					 
				WHEN x"5A" =>
					 NewB <= x"BE";
					 
				WHEN x"5B" =>
					 NewB <= x"39";
					 
				WHEN x"5C" =>
					 NewB <= x"4A";
					 
				WHEN x"5D" =>
					 NewB <= x"4C";
					 
				WHEN x"5E" =>
					 NewB <= x"58";
					 
				WHEN x"5F" =>
					 NewB <= x"CF";
					 
----------------------------------------------------------------------
				WHEN x"60" =>
					 NewB <= x"D0";
				
				WHEN x"61" =>
					 NewB <= x"EF";
					 
				WHEN x"62" =>
					 NewB <= x"AA";
					 
				WHEN x"63" =>
					 NewB <= x"FB";
					 
				WHEN x"64" =>
					 NewB <= x"43";
					 
				WHEN x"65" =>
					 NewB <= x"4D";
					 
				WHEN x"66" =>
					 NewB <= x"33";
					 
				WHEN x"67" =>
					 NewB <= x"85";
					 
				WHEN x"68" =>
					 NewB <= x"45";
					 
				WHEN x"69" =>
					 NewB <= x"F9";
					 
				WHEN x"6A" =>
					 NewB <= x"02";
					 
				WHEN x"6B" =>
					 NewB <= x"7F";
					 
				WHEN x"6C" =>
					 NewB <= x"50";
					 
				WHEN x"6D" =>
					 NewB <= x"3C";
					 
				WHEN x"6E" =>
					 NewB <= x"9F";
					 
				WHEN x"6F" =>
					 NewB <= x"A8";
		
--------------------------------------------------------------------------
		
				WHEN x"70" =>
					 NewB <= x"51";
					 
				WHEN x"71" =>
					 NewB <= x"A3";
					 
				WHEN x"72" =>
					 NewB <= x"40";
					 
				WHEN x"73" =>
					 NewB <= x"8F";
					 
				WHEN x"74" =>
					 NewB <= x"92";
					 
				WHEN x"75" =>
					 NewB <= x"9D";
					 
				WHEN x"76" =>
					 NewB <= x"38";
					 
				WHEN x"77" =>
					 NewB <= x"F5";
					 
				WHEN x"78" =>
					 NewB <= x"BC";
					 
				WHEN x"79" =>
					 NewB <= x"B6";
					 
				WHEN x"7A" =>
					 NewB <= x"DA";
					 
				WHEN x"7B" =>
					 NewB <= x"21";
					 
				WHEN x"7C" => 
					 NewB <= x"10";
					 
				WHEN x"7D" =>
					 NewB <= x"FF";
					 
				WHEN x"7E" =>
					 NewB <= x"F3";
					 
				WHEN x"7F" =>
					 NewB <= x"D2";
					 
-------------------------------------------------------------------

				WHEN x"80" =>
					 NewB <= x"CD";
					 
				WHEN x"81" =>
					 NewB <= x"0C";
					 
				WHEN x"82" =>
					 NewB <= x"13";
					 
				WHEN x"83" => 
					 NewB <= x"EC";
					 
				WHEN x"84" =>
					 NewB <= x"5F";
					 
				WHEN x"85" =>
					 NewB <= x"97";
					 
				WHEN x"86" =>
					 NewB <= x"44";
					 
				WHEN x"87" =>
					 NewB <= x"17";
					 
				WHEN x"88" =>
					 NewB <= x"C4";
					 
				WHEN x"89" =>
					 NewB <= x"A7";
				
				WHEN x"8A" =>
					 NewB <= x"7E";
					 
				WHEN x"8B" =>
					 NewB <= x"3D";
					 
				WHEN x"8C" =>
					 NewB <= x"64";
					 
				WHEN x"8D" =>
					 NewB <= x"5D";
					 
				WHEN x"8E" =>
					 NewB <= x"19";
					 
				WHEN x"8F" =>
					 NewB <= x"73";
					 
------------------------------------------------------------------

				WHEN x"90" =>
					 NewB <= x"60";
					 
				WHEN x"91" =>
					 NewB <= x"81";
					 
				WHEN x"92" =>
					 NewB <= x"4F";
					 
				WHEN x"93" =>
					 NewB <= x"DC";
					 
				WHEN x"94" =>
					 NewB <= x"22";
					 
				WHEN x"95" =>
					 NewB <= x"2A";
					 
				WHEN x"96" =>
					 NewB <= x"90";
					 
				WHEN x"97" =>
					 NewB <= x"88";
					 
				WHEN x"98" =>
					 NewB <= x"46";
					 
				WHEN x"99" =>
					 NewB <= x"EE";
					 
				WHEN x"9A" =>
					 NewB <= x"B8";
					 
				WHEN x"9B" =>
					 NewB <= x"14";
					 
				WHEN x"9C" =>
					 NewB <= x"DE";
					 
				WHEN x"9D" =>
					 NewB <= x"5E";
					 
				WHEN x"9E" =>
					 NewB <= x"0B";
					 
				WHEN x"9F" =>
					 NewB <= x"DB";
					 
-------------------------------------------------------------
				WHEN x"A0" =>
					 NewB <= x"E0";
				
				WHEN x"A1" =>
					 NewB <= x"32";
					 
				WHEN x"A2" =>
					 NewB <= x"3A";
					 
				WHEN x"A3" =>
					 NewB <= x"0A";
					 
				WHEN x"A4" =>
					 NewB <= x"49";
					 
				WHEN x"A5" =>
					 NewB <= x"06";
					 
				WHEN x"A6" =>
					 NewB <= x"24";
					 
				WHEN x"A7" =>
					 NewB <= x"5C";
					 
				WHEN x"A8" =>
					 NewB <= x"C2";
					 
				WHEN x"A9" =>
					 NewB <= x"D3";
					 
				WHEN x"AA" =>
					 NewB <= x"AC";
					 
				WHEN x"AB" =>
					 NewB <= x"62";
					 
				WHEN x"AC" =>
					 NewB <= x"91";
					 
				WHEN x"AD" =>
					 NewB <= x"95";
					 
				WHEN x"AE" =>
					 NewB <= x"E4";
					 
				WHEN x"AF" =>
					 NewB <= x"79";
					 
-------------------------------------------------------

				WHEN x"B0" =>
					 NewB <= x"E7";
					 
				WHEN x"B1" =>
					 NewB <= x"C8";
					 
				WHEN x"B2" => 
					 NewB <= x"37";
					 
				WHEN x"B3" =>
					 NewB <= x"6D";
					 
				WHEN x"B4" =>
					 NewB <= x"8D";
					 
				WHEN x"B5" =>
					 NewB <= x"D5";
					 
				WHEN x"B6" =>
					 NewB <= x"4E";
					 
				WHEN x"B7" =>
					 NewB <= x"A9";
					 
				WHEN x"B8" =>
					 NewB <= x"6C";
					 
				WHEN x"B9" =>
					 NewB <= x"56";
					 
				WHEN x"BA" =>
					 NewB <= x"F4";
					 
				WHEN x"BB" =>
					 NewB <= x"EA";
					 
				WHEN x"BC" =>
					 NewB <= x"65";
					 
				WHEN x"BD" =>
					 NewB <= x"7A";
					 
				WHEN x"BE" =>
					 NewB <= x"AE";
					 
				WHEN x"BF" =>
					 NewB <= x"08";
					 
-----------------------------------------------------------
				
				WHEN x"C0" =>
					 NewB <= x"BA";
					 
				WHEN x"C1" =>
					 NewB <= x"78";
					 
				WHEN x"C2" =>
					 NewB <= x"25";
					 
				WHEN x"C3" =>
					 NewB <= x"2E";
					 
				WHEN x"C4" =>
					 NewB <= x"1C";
					 
				WHEN x"C5" =>
					 NewB <= x"A6";
					 
				WHEN x"C6" =>
					 NewB <= x"B4";
					 
				WHEN x"C7" =>
					 NewB <= x"C6";
					 
				WHEN x"C8" =>
					 NewB <= x"E8";
					 
				WHEN x"C9" =>
					 NewB <= x"DD";
					 
				WHEN x"CA" =>
					 NewB <= x"74";
					 
				WHEN x"CB" =>
					 NewB <= x"1F";
					 
				WHEN x"CC" =>
					 NewB <= x"4B";
					 
				WHEN x"CD" =>
					 NewB <= x"BD";
					 
				WHEN x"CE" =>
					 NewB <= x"8B";
					 
				WHEN x"CF" =>
					 NewB <= x"8A";
					 
---------------------------------------------------------------

				WHEN x"D0" =>
					 NewB <= x"70";
					 
				WHEN x"D1" =>
					 NewB <= x"3E";
					 
				WHEN x"D2" =>
					 NewB <= x"B5";
					 
				WHEN x"D3" =>
					 NewB <= x"66";
					 
				WHEN x"D4" =>
					 NewB <= x"48";
					 
				WHEN x"D5" =>
					 NewB <= x"03";
					 
				WHEN x"D6" =>
					 NewB <= x"F6";
					 
				WHEN x"D7"=>
					 NewB <= x"0E";
					 
				WHEN x"D8" =>
					 NewB <= x"61";
					 
				WHEN x"D9" =>
					 NewB <= x"35";
					 
				WHEN x"DA" =>
					 NewB <= x"57";
					 
				WHEN x"DB" =>
					 NewB <= x"B9";
					 
				WHEN x"DC" =>
					 NewB <= x"86";
					 
				WHEN x"DD" => 
					 NewB <= x"C1";
					 
				WHEN x"DE" =>
					 NewB <= x"1D";
					 
				WHEN x"DF" =>
					 NewB <= x"9E";
					 
-----------------------------------------------------------------------
 
				WHEN x"E0" =>
					 NewB <= x"E1";
					 
				WHEN x"E1" =>
					 NewB <= x"F8";
					 
				WHEN x"E2" =>
					 NewB <= x"98";
					 
				WHEN x"E3" =>
					 NewB <= x"11";
					 
				WHEN x"E4" =>
					 NewB <= x"69";
					 
				WHEN x"E5" =>
					 NewB <= x"D9";
					 
				WHEN x"E6" =>
					 NewB <= x"8E";
					 
				WHEN x"E7" =>
					 NewB <= x"94";
					 
				WHEN x"E8" =>
					 NewB <= x"9B";
					 
				WHEN x"E9" =>
					 NewB <= x"1E";
					 
				WHEN x"EA" =>
					 NewB <= x"87";
					 
				WHEN x"EB" =>
					 NewB <= x"E9";
					 
				WHEN x"EC" =>
					 NewB <= x"CE";
					 
				WHEN x"ED" =>
					 NewB <= x"55";
					 
				WHEN x"EE" =>
					 NewB <= x"28";
					 
				WHEN x"EF" =>
					 NewB <= x"DF";
					 
---------------------------------------------------------------------

				WHEN x"F0" =>
					 NewB <= x"8C";
					 
				WHEN x"F1" =>
					 NewB <= x"A1";
					 
				WHEN x"F2" =>
					 NewB <= x"89";
					 
				WHEN x"F3" =>
					 NewB <= x"0D";
					 
				WHEN x"F4" =>
					 NewB <= x"BF";
					 
				WHEN x"F5" =>
					 NewB <= x"E6";
					 
				WHEN x"F6" =>
					 NewB <= x"42";
					 
				WHEN x"F7" =>
					 NewB <= x"68";
					 
				WHEN x"F8" =>
					 NewB <= x"41";
					 
				WHEN x"F9" =>
					 NewB <= x"99";
					 
				WHEN x"FA" =>
					 NewB <= x"2D";
					 
				WHEN x"FB" =>
					 NewB <= x"0F";
					 
				WHEN x"FC" =>
					 NewB <= x"B0";
					 
				WHEN x"FD" =>
					 NewB <= x"54";
					 
				WHEN x"FE" =>
					 NewB <= x"BB";
					 
				WHEN x"FF" =>
					 NewB <= x"16";
					 
				WHEN OTHERS =>
					 NewB <= x"00";
			END CASE;
			
			WAIT ON OldB;
		END PROCESS SBOXP;
	END ARCHITECTURE;


            

