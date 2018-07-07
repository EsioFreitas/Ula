library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hexadecimal is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0));
end hexadecimal;

architecture Behavioral of hexadecimal is

begin
        process (s, sel)
            begin
             case sel is
                 when "11" => sout <= '0'&s;
                 when others => sout <= "00000";
             end case; 
        end process;
end Behavioral;
