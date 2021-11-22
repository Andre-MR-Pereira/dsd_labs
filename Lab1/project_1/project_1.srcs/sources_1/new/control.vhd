library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    port (
        clk, rst : in std_logic;
        instr : in std_logic_vector (3 downto 0);
        ar_en: in std_logic;
        enable : out std_logic_vector (1 downto 0);
        oper : out std_logic_vector (4 downto 0));
end control;

architecture Behavioral of control is
    type fsm_states is ( s_initial, s_end, s_sub, s_add, s_mul, s_nand, s_nor, s_shift, s_loadr1, s_loadr2);
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

    state_comb: process (currstate, instr, ar_en)
    begin  --  process
        nextstate <= currstate ;
        -- by default, does not change the state.

        case currstate is
            when s_initial =>
                if ar_en='0' then
                    if instr="0001" then
                        nextstate <= s_add ;
                    elsif instr="0010" then
                        nextstate <= s_sub ;
                    elsif instr="0100" then
                        nextstate <= s_mul ;
                    elsif instr="1000" then
                        nextstate <= s_shift;
                    end if;
                else
                    if instr="0001" then
                        nextstate <= s_nand ;
                    elsif instr="0010" then
                        nextstate <= s_nor ;
                    elsif instr="0100" then
                        nextstate <= s_loadr1 ;
                    elsif instr="1000" then
                        nextstate <= s_loadr2;
                    end if;
                end if;
                oper<="00000";
                enable<="00";

            when s_add =>
                nextstate <= s_end;
                oper <= "100X0";
                enable <= "10";

            when s_sub =>
                nextstate <= s_end;
                oper<="100X1";
                enable<="10";

            when s_mul =>
                nextstate <= s_end;
                oper<="101XX";
                enable<="10";

            when s_shift =>
                nextstate <= s_end;
                oper<="111XX";
                enable<="10";

            when s_nand =>
                nextstate <= s_end;
                oper<="1100X";
                enable<="10";
                
            when s_nor =>
                nextstate <= s_end;
                oper<="1101X";
                enable<="10";
                
            when s_loadr1 =>
                nextstate <= s_end;
                oper<="XXXXX";
                enable<="01";
                
            when s_loadr2 =>
                nextstate <= s_end;
                oper<="XXXXX";
                enable<="10";

            when s_end =>
                if instr="0000" then
                    nextstate <= s_initial ;
                end if;
                oper<="00000";
                enable<="00";

        end case;
    end process;

end Behavioral;

