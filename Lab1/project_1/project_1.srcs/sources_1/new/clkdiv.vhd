----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.10.2021 18:52:14
-- Design Name: 
-- Module Name: clkdiv - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity clkdiv is
  Port (
    clk100M : in std_logic;
    clk10Hz, clk_disp : out std_logic);
end clkdiv;

architecture mixed of clkdiv is

  signal clk_i : std_logic;
  signal cnt : std_logic_vector(23 downto 0);

begin

--  BUFG_INST1: BUFG port map (I => clk, O => clk_i);
--  clk50M <= clk_i;
  clk_i <= clk100M;
  -- Divide the master clock (100Mhz) down to an aprox 10Hz frequency.
  process (clk_i)
  begin
    if clk_i = '1' and clk_i'event then
      if cnt = X"98967F" then         -- x98967F = 100,000,000-1
        cnt <= (others => '0');
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process;

  -- BUFG: Global Clock Buffer (source by an internal signal)
  -- Xilinx HDL Language Template version 8.1i

  BUFG_INST2: BUFG port map (I => cnt(23), O => clk10Hz);
  BUFG_INST3: BUFG port map (I => cnt(16), O => clk_disp);
  
end mixed;
