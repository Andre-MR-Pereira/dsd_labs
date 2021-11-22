----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2016 07:01:44 PM
-- Design Name: 
-- Module Name: fpga_basicIO - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fpga_basicIO is
  port (
    clk: in std_logic;                            -- 100MHz clock
    btnC, btnU, btnL, btnR, btnD: in std_logic;   -- buttons
    sw: in std_logic_vector(15 downto 0);         -- switches
    led: out std_logic_vector(15 downto 0);       -- leds
    an: out std_logic_vector(3 downto 0);         -- display selectors
    seg: out std_logic_vector(6 downto 0);        -- display 7-segments
    dp: out std_logic                             -- display point
  );
end fpga_basicIO;

architecture Behavioral of fpga_basicIO is
  signal dd3, dd2, dd1, dd0 : std_logic_vector(6 downto 0);
  signal res : std_logic_vector(1 downto 0);
  signal dact : std_logic_vector(3 downto 0);
  signal clk10hz, clk_disp : std_logic;
  signal btnCreg, btnUreg, btnLreg, btnRreg, btnDreg: std_logic;   -- registered input buttons
  signal sw_reg : std_logic_vector(15 downto 0);  -- registered input switches
  signal instr, rst : std_logic;
  signal input : std_logic_vector(47 downto 0);
  signal rinput1, rinput2, rinput3, rinput4 : std_logic_vector(11 downto 0);
  signal lcd : std_logic_vector(11 downto 0);
  signal zeros : std_logic_vector(2 downto 0);
  
  component disp7
  port (
   disp3, disp2, disp1, disp0 : in std_logic_vector(6 downto 0);
   dp3, dp2, dp1, dp0 : in std_logic;
   dclk : in std_logic;
   dactive : in std_logic_vector(3 downto 0);
   en_disp_l : out std_logic_vector(3 downto 0);
   segm_l : out std_logic_vector(6 downto 0);
   dp_l : out std_logic);
  end component;
  component hex2disp
    port (
      sw : in std_logic_vector(3 downto 0);
      seg : out std_logic_vector(6 downto 0));
  end component;
  component clkdiv
    port(
      clk100M : in std_logic;          
      clk10Hz : out std_logic;
      clk_disp : out std_logic);
  end component;
  component circuito
    port(
        clk: in std_logic;
        rst: in std_logic;
        instr: in std_logic;
        input: in std_logic_vector(47 downto 0);
        k3: in std_logic; 
        leds: out std_logic_vector(15 downto 0);
        res: out std_logic_vector(1 downto 0)
    );
  end component;

begin
  
  zeros <= "000";
  dact <= "1111";
  rst <= sw_reg(15);
  lcd <= input(11 downto 0) when (sw_reg(13)='0' and sw_reg(12)='0') else
         input(23 downto 12) when (sw_reg(13)='0' and sw_reg(12)='1') else
         input(35 downto 24) when (sw_reg(13)='1' and sw_reg(12)='0') else
         input(47 downto 36);

  inst_disp7: disp7 port map(
      disp3 => dd3, disp2 => dd2, disp1 => dd1, disp0 => dd0,
      dp3 => '1', dp2 => '0', dp1 => sw_reg(15), dp0 => '0',  
      dclk => clk_disp,
      dactive => dact,
      en_disp_l => an,
      segm_l => seg,
      dp_l => dp);

  inst_hex0: hex2disp port map(sw => lcd(3 downto 0), seg => dd0);
  inst_hex1: hex2disp port map(sw => lcd(7 downto 4), seg => dd1);
  inst_hex2: hex2disp port map(sw => (zeros & lcd(8)), seg => dd2);
  inst_hex3: hex2disp port map(sw => (zeros(0) & lcd(11 downto 9)), seg => dd3);
  
  inst_clkdiv: clkdiv port map(
    clk100M => clk,
    clk10hz => clk10hz,
    clk_disp => clk_disp);
    
  inst_circuito: circuito port map(
      clk => clk, rst => rst, instr => instr, input => input,
      k3 => sw_reg(14), leds => led, res => res);
      
  process (clk10hz)
    begin
       if rising_edge(clk10hz) then
          btnCreg <= btnC; btnUreg <= btnU; btnLreg <= btnL; 
          btnRreg <= btnR; btnDreg <= btnD;
          sw_reg <= sw;
          input <= rinput4 & rinput3 & rinput2 & rinput1;
          
          if rst='1' then
            instr <= '0';
          elsif btnC='1' then
            instr <= '1';
          else
            instr <= '0';
          end if;
                    
          if rst='1' then
            rinput1 <= (others => '0');
            rinput2 <= (others => '0');
            rinput3 <= (others => '0');
            rinput4 <= (others => '0');
          elsif btnRreg='1' then
            rinput1 <= sw_reg(11 downto 0);
          elsif btnDreg='1' then
            rinput2 <= sw_reg(11 downto 0);
          elsif btnUreg='1' then
            rinput3 <= sw_reg(11 downto 0);
          elsif btnLreg='1' then
            rinput4 <= sw_reg(11 downto 0);
          end if;
          
      end if;
    end process;
end Behavioral;
