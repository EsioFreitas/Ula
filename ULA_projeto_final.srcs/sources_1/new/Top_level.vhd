library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_level is
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC_VECTOR (3 downto 0);
           SEGUI : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end Top_level;

architecture Behavioral of Top_level is

COMPONENT decodificacao is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           ove: in std_logic;
           an : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end COMPONENT;

COMPONENT operacoes is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           ov : out std_logic;
           F : out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT;


signal sf : std_logic_vector(3 downto 0):=(others=>'0');

signal sa: std_logic:='0';

begin
ULA: operacoes port map (A => a, B => b, F => sf, S => S, ov => sa);
DECODIFICADOR: decodificacao port map (s => sf, 
                               sel => sel, 
                               seg => SEGUI, 
                               an => an, 
                               clk => clk, 
                               ove => sa);

end Behavioral;
