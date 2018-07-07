----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2018 10:33:26
-- Design Name: 
-- Module Name: topleveldecod - Behavioral
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

entity decodificacao is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           ove: in std_logic;
           an : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC);
end decodificacao;

architecture Behavioral of decodificacao is

component BCD is
    Port ( a : in STD_LOGIC_VECTOR (4 downto 0);
           sout : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component mux4x1 is
    Port ( en1 : in STD_LOGIC_VECTOR (4 downto 0);
            en2 : in STD_LOGIC_VECTOR (4 downto 0);
            en3 : in STD_LOGIC_VECTOR (4 downto 0);
            en4 : in STD_LOGIC_VECTOR (4 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component decimal is
    Port ( s : in STD_LOGIC_vector(3 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0));
           
end component;

component hexadecimal is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component octal is
    Port ( s : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           sout : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component binario is 
    Port ( SEL : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           SOUT : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component divisor_de_clock is
    Port ( clk : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR(1 downto 0));
end component;

component multi_erro is
    Port ( SEL : in STD_LOGIC_VECTOR(1 downto 0);
           saida : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component multi_final is
    Port ( Op : in STD_LOGIC_VECTOR(4 downto 0);
           ov: in STD_LOGIC;
           over : in STD_LOGIC_VECTOR(4 downto 0);
           saida: out STD_LOGIC_VECTOR(4 downto 0));
end component;


signal sclk: std_logic_vector(1 downto 0);
signal sb, sd, sh, so: std_logic_vector (4 downto 0);
signal smux,studo,sover: std_logic_vector (4 downto 0);



begin

clock: divisor_de_clock port map (clk => clk, s => sclk);
multiplexa_erro: multi_erro port map(SEL=>sclk,saida=>sover);
multiplexa_tudo: multi_final port map(Op=>smux,ov=>ove,over=>sover,saida=>studo);
mux: mux4x1 port map (en1 => sd, en2 => sh, en3 => sb, en4 => so, sel => sel, sout => smux);
conversorBCD: BCD port map (a => studo, sout => seg);
decod_decimal: decimal port map (s => s, sel => sclk, sout => sd);
decod_hexadecimal: hexadecimal port map (s => s, sel => sclk, sout => sh);
decod_octal: octal port map (s => s, sel => sclk, sout => so);
decod_binario: binario port map (s => s, sel => sclk, sout => sb);





with sclk select
 an <= "0111" when "00",
        "1011" when "01",
        "1101" when "10",
        "1110" when others;

end Behavioral;
