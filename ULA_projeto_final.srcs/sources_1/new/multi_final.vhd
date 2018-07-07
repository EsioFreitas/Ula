----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.07.2018 11:23:09
-- Design Name: 
-- Module Name: mux_over - Behavioral
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
-- mux final. Multiplexa o decod do modo programa, da saida das operacoes e do erro
entity multi_final is
    Port ( Op : in STD_LOGIC_VECTOR(4 downto 0);
           ov: in STD_LOGIC;
           over : in STD_LOGIC_VECTOR(4 downto 0);
           saida: out STD_LOGIC_VECTOR(4 downto 0));
end multi_final;

architecture Behavioral of multi_final is

begin

    process(ov,Op,over)
        begin
            if ov = '1'  then
                saida <= over;
            else 
                saida<=Op;
            end if;
        end process;
end Behavioral;
