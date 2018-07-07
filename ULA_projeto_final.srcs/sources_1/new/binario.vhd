----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.06.2018 09:49:43
-- Design Name: 
-- Module Name: BINARIO - Behavioral
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

entity binario is
    Port ( SEL : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           SOUT : out STD_LOGIC_VECTOR (4 downto 0));
end binario;

architecture Behavioral of BINARIO is
signal sa, sb, sc, sd: std_logic_vector (4 downto 0);
begin
sa <= "0000" & s(3);
sb <= "0000" & s(2);
sc <= "0000" & s(1);
sd <= "0000" & s(0);
            process(s, sel)
            begin

            case sel is
                when "00" => sout <= sa;
                when "01" => sout <= sb;
                when "10" => sout <= sc;
                when others => sout <= sd;          
            end case;
               
                                end process;
    
end Behavioral;
