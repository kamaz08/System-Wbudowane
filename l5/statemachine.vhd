
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity statemachine is
  port(
	clk:     in std_logic;
	pusher:  in std_logic;
	reset: in std_logic;
	driver : out std_logic_vector(1 downto 0) := "00"
  );
  
end statemachine;

architecture Flow of statemachine is
  type stan is (S0, S1, S2, S3);
  signal stan_teraz : stan := S0;
  signal stan_potem : stan := S0;
begin

state_advance: process(clk)
begin
  if reset = '1' then
	stan_teraz <= S0;
  else if rising_edge(clk) then
     stan_teraz <= stan_potem;
  end if;
end if;
end process;

next_state: process(stan_teraz, pusher)
begin

   case stan_teraz is
     when S0 => 
				if pusher ='1' then
					stan_potem <= S1;
				else
					stan_potem <=S0;
				end if;
				driver <= "00";	
	  when S1 => 		
				if pusher ='1' then
					stan_potem <= S2;
				else
					stan_potem <= S1;				
				end if;				
				driver <= "10";
	  when S2 => 		
				if pusher = '1' then
					stan_potem <= S3;
				else
					stan_potem <= S0;
				end if;
				driver <= "11";				
	  when S3 => 
				if pusher ='1' then
					stan_potem <= S1;
				else
					stan_potem <= S3;
				end if;
				driver <= "01";				
   end case;
end process;

end Flow;

