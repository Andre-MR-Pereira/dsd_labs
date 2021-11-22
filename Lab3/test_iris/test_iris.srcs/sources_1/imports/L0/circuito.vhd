library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circuito is
  port (
    clk: in std_logic;
    rst: in std_logic;
    instr: in std_logic;
    input: in std_logic_vector(47 downto 0);
    k3: in std_logic; 
    leds: out std_logic_vector(15 downto 0);
    res: out std_logic_vector(1 downto 0)
    );
end circuito;

architecture Behavioral of circuito is
  COMPONENT blk_mem_gen_0
   PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
   );
  END COMPONENT;
  COMPONENT dist_mem_gen_0
   PORT (
    a : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    qspo : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
   );
  END COMPONENT;
  component fracc_hex2dec
      Port ( hexd : in STD_LOGIC_VECTOR (3 downto 0);
             decd : out STD_LOGIC_VECTOR (3 downto 0));
  end component;
   component control
      Port( clk, rst : in std_logic;
        instr : in std_logic;
        addrin : out std_logic_vector (6 downto 0);
        en : out std_logic;
        oper : out std_logic
        );
  end component;  
  component knn
      Port( rom_port_attr: in std_logic_vector(47 downto 0);
            class: in std_logic_vector(1 downto 0);
            clk,k3: in std_logic;
            flower : in std_logic_vector (47 downto 0);
            en, rst, oper : in std_logic;
            flower_class: out std_logic_vector(1 downto 0)
        );
  end component; 
  signal zeros : std_logic_vector(47 downto 0);
  signal class, res_class : std_logic_vector(1 downto 0);
  signal douta: std_logic_vector(47 downto 0);
  signal doutb : std_logic_vector(11 downto 0);
  signal dec_frac_digitA, dec_frac_digitB : std_logic_vector(3 downto 0);
  signal addra: std_logic_vector(6 downto 0);
  signal addrb : std_logic_vector(8 downto 0);
  signal en, oper : std_logic;
  
begin
zeros <= (others => '0');

feature_mem_instance : blk_mem_gen_0
  PORT MAP (
    clka => clk, wea => zeros(0 downto 0),
    addra => addra, dina => zeros(47 downto 0), douta => douta);

 class_mem_instance : dist_mem_gen_0
      PORT MAP (
        a => addra, d => zeros(1 downto 0), clk => clk, we => zeros(0), qspo => class);
      
 control_unit : control
      PORT MAP (
        clk => clk, rst => rst, instr => instr, addrin => addra, en => en, oper => oper);
 knn_port : knn
   PORT MAP (k3=> k3, rom_port_attr => douta , class => class,clk=>clk, oper => oper, rst => rst, en=>en, flower=>input, flower_class=>res_class);
  
  res <= res_class;

  leds(13 downto 3) <= zeros(13 downto 3);
  leds(14) <= instr;
  leds(15) <= '1' when res_class="00" else '0';
  leds(2 downto 0) <= "001" when res_class="01" else
                        "011" when res_class="10" else
                        "111" when res_class="11" else "000";

end Behavioral;

