library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1 is
    Port ( en1 : in STD_LOGIC_VECTOR (4 downto 0);
           en2 : in STD_LOGIC_VECTOR (4 downto 0);
           en3 : in STD_LOGIC_VECTOR (4 downto 0);
           en4 : in STD_LOGIC_VECTOR (4 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0));
end mux4x1;

architecture Behavioral of mux4x1 is
begin

        with sel select
        sout <= en1 when "00",
            en2 when "01",
            en3 when "10",
            en4 when others;



end Behavioral;
