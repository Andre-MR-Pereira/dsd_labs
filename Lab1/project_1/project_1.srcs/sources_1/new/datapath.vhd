----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.10.2021 10:30:34
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
    port ( value : in std_logic_vector (12 downto 0);
         oper : in std_logic_vector (4 downto 0);
         clk, en_r1, en_r2, rst : in std_logic;
         reg1 : out std_logic_vector (12 downto 0);
         reg2 : out std_logic_vector (16 downto 0));
end datapath;

architecture behavioral of datapath is
    signal res_mul, res_alu, addsub, mul, logic_nandnor, shift, shift_in: std_logic_vector (16 downto 0);
    signal r1sg : signed (12 downto 0);
    signal addsubsg, mulsg, r2sg : signed (16 downto 0);
    signal ex_mulsg : signed (29 downto 0);
    signal register1, data : std_logic_vector (12 downto 0) := (others => '0');
    signal register2, ext_register1, ext_data : std_logic_vector (16 downto 0) := (others => '0');
    -- this signal initialization is only considered for simulation
begin
    -- alu 
        
    data <= value when value(12)='0' else
            value(12) & std_logic_vector(signed(value(11 downto 0) xor "111111111111") + 1);
    
    
    r1sg <= signed(register1);
    r2sg <= signed(register2);
    ext_register1 <= (16 downto 13 => register1(12)) & register1(12 downto 0);
    ext_data <= (16 downto 13 => data(12)) & data(12 downto 0);

    -- adder/subtracter
    addsubsg <= r2sg + r1sg when oper(0)='0' else
                r2sg - r1sg;
     addsub <= std_logic_vector(addsubsg);

    -- multiplier
    ex_mulsg <= r2sg * r1sg;
    mulsg <= ex_mulsg(16 downto 0);
    mul <= std_logic_vector(mulsg);

    -- logic unit
    logic_nandnor <= register2 nand ext_register1 when oper(1)='0' else
                     register2 nor ext_register1;

    -- arithmetic unit
    shift_in <= (others => register2(16));
    shift <= register2 when register1(2 downto 0)="000" else
    shift_in(0) & register2(16 downto 1) when register1(2 downto 0)="001" else
    shift_in(1 downto 0) & register2(16 downto 2) when register1(2 downto 0)="010" else
    shift_in(2 downto 0) & register2(16 downto 3) when register1(2 downto 0)="011" else
    shift_in(3 downto 0) & register2(16 downto 4) when register1(2 downto 0)="100" else
    shift_in(4 downto 0) & register2(16 downto 5) when register1(2 downto 0)="101" else
    shift_in(5 downto 0) & register2(16 downto 6) when register1(2 downto 0)="110" else
    shift_in(6 downto 0) & register2(16 downto 7);

    -- alu multiplexer
    res_alu <= addsub when oper(3 downto 2)="00" else
               mul when oper(3 downto 2)="01" else
               logic_nandnor when oper(3 downto 2)="10" else
               shift;

    -- r2 multiplexer
    res_mul <= res_alu when oper(4)='1' else
               ext_data;
    
    -- register R2
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                register2 <= (others => '0');
            elsif en_r2 = '1' then
                register2 <= res_mul;
            end if;
        end if;
    end process;
    
    -- register R1
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                register1 <= (others => '0');
            elsif en_r1 = '1' then
                register1 <= data;
            end if;
        end if;
    end process;

    -- output
    reg1 <= register1;
    reg2 <= register2;
end behavioral;

