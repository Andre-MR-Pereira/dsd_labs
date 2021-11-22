----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 11:57:49 AM
-- Design Name: 
-- Module Name: list - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity insert_push_cell is
    port (
        inval: in std_logic_vector (25 downto 0);
        dprev: in std_logic_vector (25 downto 0);
        class: in std_logic_vector(1 downto 0);
        class_prev: in std_logic_vector(1 downto 0);
        smaller_prev, clk, rst : in std_logic;
        dout_distance : out std_logic_vector (25 downto 0);
        dout_class : out std_logic_vector (1 downto 0);
        smaller_than : out std_logic);
end insert_push_cell;

architecture Behavioral of insert_push_cell is
    signal sdin_distance, local_reg_distance : unsigned(inval'range);
    signal sdin_class, local_reg_class : unsigned(class'range);
    signal smaller, insert : std_logic;
begin
    sdin_distance <= unsigned(inval) when insert = '1' 
        else unsigned(dprev);
    sdin_class <= unsigned(class) when insert = '1' 
        else unsigned(class_prev);
    smaller <= '1' when unsigned(inval) < local_reg_distance else '0';
    insert <= smaller and (not smaller_prev);
    dout_distance <= std_logic_vector(local_reg_distance);
    dout_class <= std_logic_vector(local_reg_class);
    smaller_than <= smaller ;
    process (clk)
    begin
        if clk'event and clk='1' then
            if rst='1' then 
                local_reg_distance <= (others => '1');
                local_reg_class <= (others => '0');
            elsif smaller ='1' then
                local_reg_distance <= sdin_distance ;
                local_reg_class <= sdin_class ;
            end if;
        end if;
    end process;
end Behavioral;