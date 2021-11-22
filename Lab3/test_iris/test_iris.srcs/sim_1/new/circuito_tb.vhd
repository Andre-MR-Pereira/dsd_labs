-------------------------------------------------------------------------------
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- USE ieee.numeric_std.ALL;
 
ENTITY circuito_tb IS
END circuito_tb;
 
ARCHITECTURE behavior OF circuito_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT circuito
    PORT(
        clk: in std_logic;
        rst: in std_logic;
        instr: in std_logic;
        input: in std_logic_vector(47 downto 0);
        k3: in std_logic; 
        leds: out std_logic_vector(15 downto 0);
        res: out std_logic_vector(1 downto 0)
    );
    END COMPONENT;


   --Inputs
   signal clk, instr, k3: std_logic := '0';
   signal rst: std_logic := '1';
   signal input: std_logic_vector(47 downto 0) := (others => '0');
   signal leds: std_logic_vector(15 downto 0) := (others => '0');
   

 	--Outputs
   signal res : std_logic_vector(1 downto 0);
        
   -- Clock period definitions
   constant clk_period : time := 5.214 ns;
   constant t_hdelay : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: circuito PORT MAP (
          clk => clk, rst => rst,
          instr => instr, input => input,
          k3 => k3, leds => leds,
          res => res);

   -- Clock definition
   clk <= not clk after clk_period/2;
            
    -- Stimulus process
   stim_proc: process
   begin
      rst <= '0' after 20ns;
      
      instr <= '1' after 60ns,
               '0' after 140ns;
      
      input <= "110000000000011000000000100110011001001110011001";
      
      -- hold reset state for 100 ns.
      wait for 1400 ns;

      -- insert stimulus here 
      -- note that input signals should never change at the positive edge of the clock

   end process;
END;