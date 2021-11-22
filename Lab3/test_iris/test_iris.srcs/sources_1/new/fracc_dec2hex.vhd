----------------------------------------------------------------------------------
--  
-- Module Name: fracc_dec2hex - Behavioral
-- Description: 
--   Converts one-digit fractional binary-coded decimal (BCD) number to 
--   one binary Q0.9 fixed-point number.
--   
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fracc_dec2hex is
    Port ( decd : in STD_LOGIC_VECTOR (3 downto 0);
           hexd : out STD_LOGIC_VECTOR (8 downto 0));
end fracc_dec2hex;

architecture Behavioral of fracc_dec2hex is
  signal aux : std_logic_vector (11 downto 0);
begin
  aux <= X"000" when decd="0000" else
          X"198" when decd="0001" else
          X"330" when decd="0010" else
          X"4D0" when decd="0011" else
          X"668" when decd="0100" else
          X"800" when decd="0101" else
          X"998" when decd="0110" else
          X"B30" when decd="0111" else
          X"CD0" when decd="1000" else
          X"E68" when decd="1001" else
          X"EEE";   
  hexd <= aux(11 downto 3);       
  
end Behavioral;
