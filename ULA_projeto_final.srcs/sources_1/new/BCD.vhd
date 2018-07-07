----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2018 10:05:58
-- Design Name: 
-- Module Name: conversor7seg - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD is
    Port ( a : in STD_LOGIC_VECTOR (4 downto 0);
            sout : out STD_LOGIC_VECTOR (6 downto 0));
end BCD;

architecture Behavioral of BCD is

begin
        process(a)
        begin
        
        case a is
        when "00001" => sout <="1111001"; --1
        
         when "00010" => sout <= "0100100"; --2
        
         when "00011" => sout <= "0110000"; --3
        
         when "00100" => sout <= "0011001"; --4
        
         when "00101" => sout <= "0010010"; --5
        
         when "00110" => sout <= "0000010"; --6
        
         when "00111" => sout <= "1111000"; --7
        
         when "01000" => sout <= "0000000"; --8
        
         when "01001" => sout <= "0010000"; --9
        
         when "01010" => sout <= "0001000"; --A
        
         when "01011" => sout <= "0000011"; --b
        
         when "01100" => sout <= "1000110"; --C
        
         when "01101" => sout <= "0100001"; --d
        
         when "01110" => sout <= "0000110"; --E
        
         when "01111" => sout <= "0001110"; --F
        
         when "00000" => sout <= "1000000"; --0
         
         when "10000" => sout <= "0101111"; --r
         
         when others => sout <= "0111111"; -- -
end case;
end process;
end Behavioral;
