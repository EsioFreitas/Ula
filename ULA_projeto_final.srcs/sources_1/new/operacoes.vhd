library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity operacoes is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           ov : out std_logic;
           F : out STD_LOGIC_VECTOR (3 downto 0));
end operacoes;

architecture Behavioral of operacoes is
signal sa, sb: integer := 0;
signal ss: integer := 0;
 
begin
SA <= CONV_INTEGER(A);
SB <= CONV_INTEGER(B);

    process(S, SS, A, B, sa, sb)
    begin
    case s is
 when "0000"=> F <= "0000";
 ov <= '0';
 when "0001"=> F <= "1111";
 ov <= '0';
 when "0010"=> F <= A;
 ov <= '0';
 when "0011"=> F <= B;
 ov <= '0';
 when "0100"=> F <= A OR B;
 ov <= '0';
 when "0101"=> F <= A AND B;
 ov <= '0';
 when "0110"=> F <= A XOR B;
 ov <= '0';
 when "0111"=> F <= NOT A;
 ov <= '0';
 when "1000"=> 
 SS <= SA+SB;
  if ss > 7 or ss < -8 then ov <= '1';
  else 
  ov <= '0';
  F <= CONV_STD_LOGIC_VECTOR (SS,4);
    end if;
 when "1001"=>  SS<= SA-SB;
 if ss < -8 then ov <= '1';
 else
 ov <= '0';
    F <= CONV_STD_LOGIC_VECTOR (SS,4);
    end if;
 when "1010"=> SS <= SA*SB;
 if ss > 7 or ss < -8 then ov <= '1';
 else
 ov <= '0';
 F <= CONV_STD_LOGIC_VECTOR (SS,4);
 end if;
 when "1011"=> if sb = 0 then ov <= '1';
               else ss <= sa/sb;
               ov <= '0';
               F <= CONV_STD_LOGIC_VECTOR (SS,4);
               end if;
 when "1100"=> if sb = 0 then ov <= '1';
               else ss <= sa mod sb;
               ov <= '0';
               F <= CONV_STD_LOGIC_VECTOR (SS,4);
               end if;
 when "1101"=> SS <= SA*SA;
 if ss > 7 then ov <= '1';
       else
       ov <= '0';
       F <= CONV_STD_LOGIC_VECTOR (SS,4);
       end if;
       
 when "1110"=> if A = "1000" then ov <= '1';
            else 
            F <= not A + 1;
            ov <= '0';
        end if;

 when "1111"=> if A = "0111" then ov <= '1'; 
               else   
               ov <= '0';
                F <= A + 1;
               end if;
 when others => ov <= '0';
 end case;
 end process;  
        
 

end Behavioral;
