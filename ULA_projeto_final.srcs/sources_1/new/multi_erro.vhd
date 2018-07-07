----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.07.2018 11:53:51
-- Design Name: 
-- Module Name: mux_erro - Behavioral
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

entity multi_erro is
    Port ( SEL : in STD_LOGIC_VECTOR(1 downto 0);
           saida : out STD_LOGIC_VECTOR (4 downto 0));
end multi_erro;

architecture Behavioral of multi_erro is

begin

    with SEL select
        saida<="01110" when "00",
               "10000" when "01",
               "10000" when "10",
               "00000" when others;
end Behavioral;
