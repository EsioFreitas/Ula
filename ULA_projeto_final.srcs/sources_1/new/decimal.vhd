library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decimal is
    Port ( s : in STD_LOGIC_vector(3 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0));
end decimal;

architecture Behavioral of decimal is
signal sa, sb: std_logic_vector(4 downto 0);
begin
sa <= '0' & ((not s) + 1);
            process(sel, s, sa, sb)
            begin
            if s(3) = '1' then 
                case sel is
                when "11" => sout <= sa;
                when "10" => sout <= "10001";
                when others => sout <= "00000";
                end case;
                else 
                    case sel is
                    when "11" => sout <= '0'&s;
                    when others => sout <= "00000";
                    end case;
                end if;
            
                end process;

end Behavioral;
