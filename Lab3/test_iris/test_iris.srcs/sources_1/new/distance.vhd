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

entity distance is
    port ( p1, p2, p3, p4, q1, q2, q3, q4 : in std_logic_vector (11 downto 0);
         clk, rst : in std_logic;
         res : out std_logic_vector (25 downto 0);
         done : out std_logic
         );
end distance;

architecture behavioral of distance is
    signal en1, en2, en3 : std_logic;
    signal rp1, rp2, rp3, rp4, rq1, rq2, rq3, rq4 : std_logic_vector (11 downto 0);
    signal rp1sg, rp2sg, rp3sg, rp4sg, rq1sg, rq2sg, rq3sg, rq4sg : signed (12 downto 0);
    signal sub1, sub2, sub3, sub4 : std_logic_vector(12 downto 0);
    signal rsub1, rsub2, rsub3, rsub4 : std_logic_vector (12 downto 0);
    signal mul1, mul2, mul3, mul4 : std_logic_vector (25 downto 0);
    signal rmul1, rmul2, rmul3, rmul4 : std_logic_vector (24 downto 0);
    signal add1, add2 : signed (25 downto 0);
    signal add3 : std_logic_vector (25 downto 0);
    signal rout : std_logic_vector (25 downto 0);
    
    -- this signal initialization is only considered for simulation
begin
    -------------------- 1st layer -------------------------
    rp1sg <= signed('0' & rp1);
    rp2sg <= signed('0' & rp2);
    rp3sg <= signed('0' & rp3);
    rp4sg <= signed('0' & rp4);
    rq1sg <= signed('0' & rq1);
    rq2sg <= signed('0' & rq2);
    rq3sg <= signed('0' & rq3);
    rq4sg <= signed('0' & rq4);
    
    -- subtracter 1
    sub1 <= std_logic_vector(rp1sg - rq1sg);

    -- subtracter 2
    sub2 <= std_logic_vector(rp2sg - rq2sg);
    
    -- subtracter 3
    sub3 <= std_logic_vector(rp3sg - rq3sg);
    
    -- subtracter 4
    sub4 <= std_logic_vector(rp4sg - rq4sg);
   
    
    -------------------- 2nd layer -------------------------
    -- multiplier 1
    mul1 <= std_logic_vector(signed(rsub1) * signed(rsub1));
    
    -- multiplier 2
    mul2 <= std_logic_vector(signed(rsub2) * signed(rsub2));
    
    -- multiplier 3
    mul3 <= std_logic_vector(signed(rsub3) * signed(rsub3));
    
    -- multiplier 4
    mul4 <= std_logic_vector(signed(rsub4) * signed(rsub4));


    -------------------- 3rd layer -------------------------
    -- adder 1
    add1 <= signed('0' & rmul1) + signed('0' & rmul2);
    
    -- adder 2
    add2 <= signed('0' & rmul3) + signed('0' & rmul4);
    
    -- adder 3
    add3 <= std_logic_vector(add1 + add2);
    
    
    -- registers input
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
                en1 <= '0';
            else
                rp1 <= p1;
                rp2 <= p2;
                rp3 <= p3;
                rp4 <= p4;
                rq1 <= q1;
                rq2 <= q2;
                rq3 <= q3;
                rq4 <= q4;
                en1 <= '1';
            end if;
        end if;
    end process;

    -- registers 1st layer
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                rsub1 <= (others => '0');
                rsub2 <= (others => '0');
                rsub3 <= (others => '0');
                rsub4 <= (others => '0');
                en2 <= '0';
            elsif en1='1' then
                rsub1 <= sub1;
                rsub2 <= sub2;
                rsub3 <= sub3;
                rsub4 <= sub4;
                en2 <= '1';
            end if;
        end if;
    end process;
    
    -- registers 2nd layer
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                rmul1 <= (others => '0');
                rmul2 <= (others => '0');
                rmul3 <= (others => '0');
                rmul4 <= (others => '0');
                en3 <= '0';
            elsif en2='1' then
                rmul1 <= mul1 (24 downto 0);
                rmul2 <= mul2 (24 downto 0);
                rmul3 <= mul3 (24 downto 0);
                rmul4 <= mul4 (24 downto 0);
                en3 <= '1';
            end if;
        end if;
    end process;
    
    -- registers 3rd layer
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                rout <= (others => '1');
                done <= '0';
            elsif en3='1' then
                rout <= add3;
                done <= '1';
            end if;
        end if;
    end process;

    res <= rout;

end behavioral;