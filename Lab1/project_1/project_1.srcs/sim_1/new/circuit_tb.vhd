--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:45 09/10/2014
-- Design Name:   
-- Module Name:   C:/xup/vhdl/introLab/tb_circuito.vhd
-- Project Name:  introLab
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: circuito
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY circuito_tb IS
END circuito_tb;
 
ARCHITECTURE behavior OF circuito_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT circuito
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ar_en : IN std_logic;
         reg_mux : IN std_logic;
         instr : IN  std_logic_vector(3 downto 0);
         data_in : IN  std_logic_vector(12 downto 0);
         res : OUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal ar_en : std_logic := '0';
   signal reg_mux : std_logic := '0';
   signal instr : std_logic_vector(3 downto 0) := (others => '0');
   signal data_in : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal res : std_logic_vector(16 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: circuito PORT MAP (
          clk => clk,
          rst => rst,
          ar_en => ar_en,
          reg_mux => reg_mux,
          instr => instr,
          data_in => data_in,
          res => res
        );

   -- Clock definition
   clk <= not clk after clk_period/2;

    -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
      -- note that input signals should never change at the positive edge of the clock
	  rst <= '1' after 20 ns,
			 '0' after 40 ns;
	  data_in <= "0000000000010" after  40 ns,
	             "1111111111110" after  80 ns;
	  instr <= "1000" after  40 ns,
	           "0000" after  60 ns,
	           "0100" after  80 ns,
	           "0000" after 100 ns,
			   "0100" after 120 ns,
			   "0000" after 140 ns,
			   "0100" after 160 ns,
			   "0000" after 180 ns,
			   "0100" after 200 ns,
			   "0000" after 220 ns,
			   "0100" after 240 ns,
			   "0000" after 260 ns,
			   "0100" after 280 ns,
			   "0000" after 300 ns,
			   "0100" after 320 ns,
			   "0000" after 340 ns,
			   "0100" after 360 ns,
			   "0000" after 380 ns,
			   "0100" after 400 ns,
			   "0000" after 440 ns,
			   "0100" after 480 ns;
	  ar_en <= '1' after 40 ns,
	           '0' after 100 ns;
	  reg_mux <= '1' after 60 ns,
	             '0' after 120 ns,
	             '1' after 200 ns,
	             '0' after 280 ns;

      wait;
   end process;

END;
