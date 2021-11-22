--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:45 09/10/2014
-- Design Name:   
-- Module Name:   C:/xup/vhdl/introLab/tb_circuit.vhd
-- Project Name:  introLab
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: circuit
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
 
ENTITY circuit_tb IS
END circuit_tb;
 
ARCHITECTURE behavior OF circuit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT circuit
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         instr : IN  std_logic;
         p1 : IN  std_logic_vector(7 downto 0);
         p2 : IN  std_logic_vector(7 downto 0);
         p3 : IN  std_logic_vector(7 downto 0);
         p4 : IN  std_logic_vector(7 downto 0);
         q1 : IN  std_logic_vector(7 downto 0);
         q2 : IN  std_logic_vector(7 downto 0);
         q3 : IN  std_logic_vector(7 downto 0);
         q4 : IN  std_logic_vector(7 downto 0);
         done : OUT std_logic;
         res : OUT std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal instr : std_logic := '0';
   signal p1 : std_logic_vector(7 downto 0) := (others => '0');
   signal p2 : std_logic_vector(7 downto 0) := (others => '0');
   signal p3 : std_logic_vector(7 downto 0) := (others => '0');
   signal p4 : std_logic_vector(7 downto 0) := (others => '0');
   signal q1 : std_logic_vector(7 downto 0) := (others => '0');
   signal q2 : std_logic_vector(7 downto 0) := (others => '0');
   signal q3 : std_logic_vector(7 downto 0) := (others => '0');
   signal q4 : std_logic_vector(7 downto 0) := (others => '0');
   
   --Outputs
   signal done : std_logic := '0';
   signal res : std_logic_vector(11 downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: circuit PORT MAP (
          clk => clk,
          rst => rst,
          instr => instr,
          p1 => p1,
          p2 => p2,
          p3 => p3,
          p4 => p4,
          q1 => q1,
          q2 => q2,
          q3 => q3,
          q4 => q4,
          done => done,
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
			 '0' after 40 ns,
			 '1' after 200 ns,
			 '0' after 220 ns;
	  instr <= '1' after 80 ns,
			 '0' after 100 ns,
			 '1' after 140 ns,
			 '0' after 160 ns;
	  p1 <= "11111111" after 80 ns,
	        "00000011" after 120 ns;
	  p2 <= "11111111" after 80 ns,
	        "00000101" after 120 ns;
	  p3 <= "00000000" after 80 ns,
	        "00000001" after 120 ns;
	  p4 <= "00000000" after 80 ns,
	        "00000010" after 120 ns;
	  q1 <= "00000000" after 80 ns,
	        "00000011" after 120 ns;
	  q2 <= "00000000" after 80 ns,
	        "00000001" after 120 ns;
	  q3 <= "11111111" after 80 ns,
	        "00000111" after 120 ns;
	  q4 <= "11111111" after 80 ns,
	        "00001011" after 120 ns;

      wait;
   end process;

END;
