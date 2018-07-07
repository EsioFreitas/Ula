library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divisor_de_clock is
    Port ( clk : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR(1 downto 0));
end divisor_de_clock;

architecture Behavioral of divisor_de_clock is
signal count: integer:= 1;
signal sin: std_logic_vector(1 downto 0):= "00";
begin
        s <= sin;
        process(clk)
            begin
            if rising_edge(clk) THEN
            if count = 50000 then
            count <= 1;
            
            sin <= sin + 1;
            else count <= count + 1;
            end if;
            end if;
        end process; 
end Behavioral;
