library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    port (
        clk, rst : in std_logic;
        instr : in std_logic;
        addrin : out std_logic_vector (6 downto 0);
        en : out std_logic;
        oper : out std_logic
        );
end control;

architecture Behavioral of control is
    type fsm_states is ( s_initial, s_end, s_working);
    signal currstate, nextstate: fsm_states;
    signal counter: unsigned(2 downto 0) := (others => '0');
    signal raddr: std_logic_vector (6 downto 0) := (others => '0');
    signal flag: std_logic := '0';

begin
    state_reg: process (clk)
    begin
        if clk'event and clk = '1' then
            if rst = '1' then
                currstate <= s_initial ;
                raddr <= (others => '0');
            else
                currstate <= nextstate;
                if flag='1' then
                    raddr <= std_logic_vector(unsigned(raddr) + 1);
                else
                    raddr <= (others => '0');
                end if;
            end if ;
        end if ;
    end process;

    state_comb: process (currstate, instr, raddr)
    begin  --  process
        nextstate <= currstate ;
        -- by default, does not change the state.

        case currstate is
            when s_initial =>
                if instr='1' then
                    nextstate <= s_working;
                end if;
                flag<='0';
                en <= '0';
                oper <= '0';
                counter <= "000";

            when s_working =>
                if rst='1' then
                    nextstate <= s_end;
                    en <= '0';
                    counter <= "000";
                elsif (unsigned(raddr)<108) then
                    nextstate <= s_working;
                    en <= '1';
                    counter <= "000";
                elsif (counter<4) then
                    nextstate <= s_working;
                    en <= '1';
                    counter <= counter + 1;
                else
                    nextstate <= s_end;
                    counter <= "000";
                    en <= '0';
                end if;
                flag<='1';
                oper <= '0';

            when s_end =>
                if instr='0' then
                    nextstate <= s_initial;
                end if;
                en <= '0';
                flag <= '0';
                oper <= '1';
                counter <= "000";

        end case;
    end process;
    
    addrin <= raddr;

end Behavioral;