----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.10.2021 12:51:17
-- Design Name: 
-- Module Name: circuit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circuit is
    port (
        clk, rst: in std_logic;
        instr: in std_logic;
        p1, p2, p3, p4, q1, q2, q3, q4 : in std_logic_vector (7 downto 0);
        done : out std_logic;
        res : out std_logic_vector (11 downto 0)
    );
end circuit;

architecture Behavioral of circuit is
    component control
        port(
        clk, rst : in std_logic;
        instr : in std_logic;
        oper : out std_logic_vector (1 downto 0);
        done : out std_logic
        );
    end component;
    component datapath
        port(
         p1, p2, p3, p4, q1, q2, q3, q4 : in std_logic_vector (7 downto 0);
         oper : in std_logic_vector (1 downto 0);
         clk, rst, en : in std_logic;
         res : out std_logic_vector (11 downto 0)
        );
    end component;

    signal enable : std_logic;
    signal oper : std_logic_vector(1 downto 0);
    signal don : std_logic;

begin
    inst_control: control port map(
            clk => clk,
            rst => rst,
            instr => instr,
            oper => oper,
            done => don
        );
    inst_datapath: datapath port map(
            p1 => p1,
            p2 => p2,
            p3 => p3,
            p4 => p4,
            q1 => q1,
            q2 => q2,
            q3 => q3,
            q4 => q4,
            rst => rst,
            oper => oper,
            clk => clk,
            en => not don,
            res => res
        );
    done <= don;
        
end Behavioral;