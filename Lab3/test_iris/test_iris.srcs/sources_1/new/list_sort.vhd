----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 12:59:47 PM
-- Design Name: 
-- Module Name: list_sort - Behavioral
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

entity insert_push_sort is
    port( k3,clk,rst: in std_logic;
    din_distance : in std_logic_vector(25 downto 0);
    din_class : in std_logic_vector(1 downto 0);
    dout_classes : out std_logic_vector(5 downto 0)
        );
end insert_push_sort;

architecture Behavioral of insert_push_sort is
    component  insert_push_cell
        port (
            inval: in std_logic_vector (25 downto 0);
            dprev: in std_logic_vector (25 downto 0);
            class: in std_logic_vector(1 downto 0);
            class_prev: in std_logic_vector(1 downto 0);
            smaller_prev, clk, rst : in std_logic;
            dout_distance : out std_logic_vector (25 downto 0);
            dout_class : out std_logic_vector (1 downto 0);
            smaller_than : out std_logic);
    end component ;
    
    type conections is array(0 to 3) of std_logic_vector(25 downto 0);
    signal wires: conections;
    type classes is array(0 to 3) of std_logic_vector(1 downto 0);
    signal wires_classes: classes;
    signal compared : std_logic_vector(3 downto 0);
    
begin

    wires(0) <= (others => '1');
    wires_classes(0) <= (others => '0'); 
    compared(0) <= '0';
    --dout_distance <= wires(3) when k3='1' else wires(1);
    --dout_class <= wires_classes(3) when k3='1' else wires_classes(1);

process (k3, wires_classes)
begin
    if k3='1' then
        dout_classes <= wires_classes(1) & wires_classes(2) & wires_classes(3);
    else
        dout_classes <= wires_classes(1) & "0000";
    end if;
end process;
    
    cascade: for i in 1 to 3 generate
        u: insert_push_cell
            port map (inval => din_distance, class => din_class, dprev => wires(i-1), class_prev => wires_classes(i-1),
                dout_distance => wires(i), dout_class => wires_classes(i),
                smaller_prev => compared(i-1), 
                smaller_than => compared(i), clk => clk, rst => rst); 
    end generate;

end Behavioral;
