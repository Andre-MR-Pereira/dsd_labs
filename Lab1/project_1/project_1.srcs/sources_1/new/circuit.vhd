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

entity circuito is
    port (
        clk, rst, ar_en, reg_mux: in std_logic;
        instr: in std_logic_vector(3 downto 0);
        data_in: in std_logic_vector(12 downto 0);
        res: out std_logic_vector (16 downto 0)
    );
end circuito;

architecture Behavioral of circuito is
    component control
        port(
            clk : in std_logic;
            rst : in std_logic;
            ar_en : in std_logic;
            instr : in std_logic_vector(3 downto 0);
            enable : out std_logic_vector(1 downto 0);
            oper : out std_logic_vector(4 downto 0)
        );
    end component;
    component datapath
        port(
            value : in std_logic_vector(12 downto 0);
            oper : in std_logic_vector(4 downto 0);
            en_r2, rst, en_r1 : in std_logic;
            clk : in std_logic;
            reg2: out std_logic_vector (16 downto 0); 
            reg1 : out std_logic_vector (12 downto 0)
        );
    end component;

    signal enable : std_logic_vector(1 downto 0);
    signal oper : std_logic_vector(4 downto 0);
    signal reg1 : std_logic_vector (12 downto 0);
    signal reg2, sreg1, sreg2 : std_logic_vector (16 downto 0);

begin
    inst_control: control port map(
            clk => clk,
            rst => rst,
            instr => instr,
            enable => enable,
            oper => oper,
            ar_en => ar_en
        );
    inst_datapath: datapath port map(
            value => data_in,
            rst => rst,
            en_r2 => enable(1),
            en_r1 => enable(0),
            oper => oper,
            clk => clk,
            reg1 => reg1,
            reg2 => reg2
        );
      
      sreg1 <= (16 downto 13 => reg1(12)) & reg1 when reg1(12)='0' else
               reg1(12) & (15 downto 13 => '0') & std_logic_vector(signed(reg1 xor "1111111111111") + 1);
      
      sreg2 <= reg2 when reg2(16)='0' else
               reg2(16) & std_logic_vector(signed(reg2(15 downto 0) xor "1111111111111111") + 1);
      
      with reg_mux select
        res <= sreg1 when '0',
               sreg2 when others;

end Behavioral;