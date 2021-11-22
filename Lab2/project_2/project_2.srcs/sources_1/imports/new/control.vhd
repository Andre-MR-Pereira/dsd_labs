library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    port (
        clk, rst : in std_logic;
        instr : in std_logic;
        oper : out std_logic_vector (1 downto 0);
        done : out std_logic);
end control;

architecture Behavioral of control is
    type fsm_states is ( s_initial, s_end, s_1, s_2, s_3, s_4);
    signal currstate, nextstate: fsm_states;

begin
    state_reg: process (clk)
    begin
        if clk'event and clk = '1' then
            if rst = '1' then
                currstate <= s_initial ;
            else
                currstate <= nextstate ;
            end if ;
        end if ;
    end process;

    state_comb: process (currstate, instr)
    begin  --  process
        nextstate <= currstate ;
        -- by default, does not change the state.

        case currstate is
            when s_initial =>
                if instr='1' then
                    nextstate <= s_1;
                end if;
                oper<="11";
                done <= '1';

            when s_1 =>
                nextstate <= s_2;
                oper <= "00";
                done <= '0';

            when s_2 =>
                nextstate <= s_3;
                oper<="01";
                done <= '0';

            when s_3 =>
                nextstate <= s_4;
                oper<="10";
                done <= '0';

            when s_4 =>
                nextstate <= s_end;
                oper<="10";
                done <= '0';

            when s_end =>
                nextstate <= s_initial ;
                oper<="11";
                done <= '1';

        end case;
    end process;

end Behavioral;

