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
    port ( p1, p2, p3, p4, q1, q2, q3, q4 : in std_logic_vector (7 downto 0);
         oper : in std_logic_vector (1 downto 0);
         clk, rst, en : in std_logic;
         res : out std_logic_vector (11 downto 0)
         );
end datapath;

architecture behavioral of datapath is
    signal rp1, rp2, rp3, rp4, rq1, rq2, rq3, rq4 : std_logic_vector (7 downto 0);
    signal reg3, reg4, mul1, mul2 : std_logic_vector (16 downto 0);
    signal reg1, addsub1, mul1_ex, mul2_ex : std_logic_vector (17 downto 0);
    signal reg2, addsub2 : std_logic_vector (18 downto 0);
    signal rp1sg, rp3sg, rq1sg, rq3sg : signed (17 downto 0);
    signal rp2sg, rp4sg, rq2sg, rq4sg : signed (18 downto 0);
    signal res_mul1, res_mul2 : signed (17 downto 0);
    signal res_mul3, res_mul4 : signed (18 downto 0);
    
    -- this signal initialization is only considered for simulation
begin
    -- alu     
    rp1sg <= signed((17 downto 8 => '0') & rp1);
    rp2sg <= signed((18 downto 8 => '0') & rp2);
    rp3sg <= signed((17 downto 8 => '0') & rp3);
    rp4sg <= signed((18 downto 8 => '0') & rp4);
    rq1sg <= signed((17 downto 8 => '0') & rq1);
    rq2sg <= signed((18 downto 8 => '0') & rq2);
    rq3sg <= signed((17 downto 8 => '0') & rq3);
    rq4sg <= signed((18 downto 8 => '0') & rq4);
    
    -- adder/subtracter 1
    addsub1 <= std_logic_vector(res_mul1 - res_mul2) when oper(1)='0' else
               std_logic_vector(res_mul1 + res_mul2);

    -- adder/subtracter 2
    addsub2 <= std_logic_vector(res_mul3 - res_mul4) when oper(1)='0' else
               std_logic_vector(res_mul3 + res_mul4);

    -- multiplier 1
    mul1_ex <= std_logic_vector(signed(reg1(8 downto 0)) * signed(reg1(8 downto 0)));
    mul1 <= mul1_ex(16 downto 0);
    
    -- multiplier 2
    mul2_ex <= std_logic_vector(signed(reg2(8 downto 0)) * signed(reg2(8 downto 0)));
    mul2 <= mul2_ex(16 downto 0);


    -- multiplexer 1
    res_mul1 <= rp1sg when oper="00" else
                rp3sg when oper="01" else
                signed(reg3(16) & reg3);

    -- multiplexer 2
    res_mul2 <= rq1sg when oper="00" else
                rq3sg when oper="01" else
                signed(reg4(16) & reg4);
                
    -- multiplexer 3
    res_mul3 <= rp2sg when oper="00" else
                rp4sg when oper="01" else
                signed(addsub1(17) & addsub1);

    -- multiplexer 4
    res_mul4 <= rq2sg when oper="00" else
                rq4sg when oper="01" else
                signed(reg1(17) & reg1);
    
    -- registers rp and rq
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                rp1 <= (others => '0');
                rp2 <= (others => '0');
                rp3 <= (others => '0');
                rp4 <= (others => '0');
                rq1 <= (others => '0');
                rq2 <= (others => '0');
                rq3 <= (others => '0');
                rq4 <= (others => '0');
            else
                rp1 <= p1;
                rp2 <= p2;
                rp3 <= p3;
                rp4 <= p4;
                rq1 <= q1;
                rq2 <= q2;
                rq3 <= q3;
                rq4 <= q4;
            end if;
        end if;
    end process;

    -- registers R1
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                reg1 <= (others => '0');
            elsif en = '1' then
                reg1 <= addsub1;
            end if;
        end if;
    end process;
    
    -- registers R2
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                reg2 <= (others => '0');
            elsif en = '1' then
                reg2 <= addsub2;
            end if;
        end if;
    end process;
    
    -- registers R3
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                reg3 <= (others => '0');
            elsif en = '1' then
                reg3 <= mul1;
            end if;
        end if;
    end process;
    
    -- registers R4
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                reg4 <= (others => '0');
            elsif en = '1' then
                reg4 <= mul2;
            end if;
        end if;
    end process;

    res <= reg2(11 downto 0);

end behavioral;

