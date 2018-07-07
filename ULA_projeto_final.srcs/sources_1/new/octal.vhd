library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity octal is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
          
           sout : out STD_LOGIC_VECTOR (4 downto 0));
end octal;

architecture Behavioral of octal is
signal sa, sb: std_logic_vector(4 downto 0);
begin

sa <= "0000"&s(3);
sb <= "00"&s(2 downto 0);
                process(s, sel)
                begin
                    case sel is
                    when "11" => sout <= sb;
                    when "10" => sout <= sa;
                    when others => sout <= "00000";
                    end case;
          
                end process;
end Behavioral;
