----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2021 11:31:46 AM
-- Design Name: 
-- Module Name: knn - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity knn is
    port( rom_port_attr: in std_logic_vector(47 downto 0);
    class: in std_logic_vector(1 downto 0);
    clk,k3: in std_logic;
    flower : in std_logic_vector (47 downto 0);
    en, rst, oper : in std_logic;
    flower_class: out std_logic_vector(1 downto 0) := (others => '0')
    );
end knn;

architecture Behavioral of knn is
    COMPONENT distance
    PORT (
        p1, p2, p3, p4, q1, q2, q3, q4 : in std_logic_vector (11 downto 0);
        clk, rst : in std_logic;
        res : out std_logic_vector (25 downto 0);
        done : out std_logic
        );
    END COMPONENT;

    COMPONENT insert_push_sort
    PORT (
        k3,clk,rst: std_logic;
        din_distance : std_logic_vector(25 downto 0);
        din_class : std_logic_vector(1 downto 0);
        dout_classes : out std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    
    signal attr1,attr2,attr3,attr4 : std_logic_vector(11 downto 0);
    signal rattr1,rattr2,rattr3,rattr4 : std_logic_vector(11 downto 0);
    signal flower_attr1,flower_attr2,flower_attr3,flower_attr4 : std_logic_vector(11 downto 0);
    signal flower_rattr1,flower_rattr2,flower_rattr3,flower_rattr4 : std_logic_vector(11 downto 0);	
    signal distance_test, rdistance_test : std_logic_vector(25 downto 0); --8.18
    signal done : std_logic;
    signal knn_rst : std_logic;
    signal dout_classes : std_logic_vector(5 downto 0);
    signal setosa, versicolor, virginica, rclass, flower_class3 : std_logic_vector(1 downto 0) := (others => '0');
    
begin

    attr4<=rom_port_attr(47 downto 36);
    attr3<=rom_port_attr(35 downto 24);
    attr2<=rom_port_attr(23 downto 12);
    attr1<=rom_port_attr(11 downto 0);
    flower_attr4<=flower(47 downto 36);
    flower_attr3<=flower(35 downto 24);
    flower_attr2<=flower(23 downto 12);
    flower_attr1<=flower(11 downto 0);
    
 distancer : distance
   PORT MAP ( p1 => rattr1, p2 => rattr2 , p3 => rattr3,  p4 => rattr4 ,
    q1 => flower_rattr1, q2 => flower_rattr2, q3 => flower_rattr3, q4 => flower_rattr4,
    rst => knn_rst, clk=> clk, res=>distance_test, done => done);
 
 list : insert_push_sort
   PORT MAP ( k3=>k3,rst => not done, clk=> clk,din_distance=>rdistance_test,din_class=>rclass, dout_classes => dout_classes); 
    
    -- registers input
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then
                rattr1 <= (others => '0');
                rattr1 <= (others => '0');
                rattr1 <= (others => '0');
                rattr1 <= (others => '0');
                flower_rattr3 <= (others => '0');
                flower_rattr3 <= (others => '0');
                flower_rattr3 <= (others => '0');
                flower_rattr3 <= (others => '0');
                rdistance_test <= (others => '0');
                rclass <= (others => '0');
                knn_rst <= '1';
            elsif en='1' then
                rattr1 <= attr1;
                rattr2 <= attr2;
                rattr3 <= attr3;
                rattr4 <= attr4;
                flower_rattr1 <= flower_attr1;
                flower_rattr2 <= flower_attr2;
                flower_rattr3 <= flower_attr3;
                flower_rattr4 <= flower_attr4;
                rdistance_test <= distance_test;
                rclass <= class;
                knn_rst <= '0';
            else
                knn_rst <= '1';
            end if;
        end if;
    end process;
    
    flower_class3 <= "01" when (dout_classes(5 downto 2)="0101" or dout_classes(3 downto 0)="0101" or (dout_classes(5 downto 4)="01" and dout_classes(1 downto 0)="01")) else
                     "10" when (dout_classes(5 downto 2)="1010" or dout_classes(3 downto 0)="1010" or (dout_classes(5 downto 4)="10" and dout_classes(1 downto 0)="10")) else
                     "11" when (dout_classes(5 downto 2)="1111" or dout_classes(3 downto 0)="1111" or (dout_classes(5 downto 4)="11" and dout_classes(1 downto 0)="11")) else
                     dout_classes(5 downto 4);
    
    process(oper, k3)
    begin
        flower_class <= "00";
        if oper='1' then
            if k3='1' then 
                flower_class <= flower_class3;
            else
                flower_class <= dout_classes(5 downto 4);
            end if;
        else
            flower_class <= "00";
        end if;
    end process;
    
end Behavioral;
