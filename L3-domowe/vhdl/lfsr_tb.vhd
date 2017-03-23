LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY lfsr_tb IS
END lfsr_tb;
 
ARCHITECTURE behavior OF lfsr_tb IS 
    COMPONENT lfsr
    PORT(
         clk : IN  std_logic;
         q : inout  STD_LOGIC_VECTOR(15 downto 0) := (0 => '1', OTHERS => '0')
        );
    END COMPONENT;
    
   signal clk : std_logic := '0';
   signal qq : STD_LOGIC_VECTOR(15 downto 0) :=  (0 => '1', OTHERS => '0');
   constant clk_period : time := 20 ns;
 
BEGIN
   uut: lfsr PORT MAP (
          clk => clk,
          q   => qq
        );

   clk_process :PROCESS
   BEGIN
		clk <= '0';
		WAIT FOR clk_period/2;
		clk <= '1';
		WAIT FOR clk_period/2;
   END PROCESS;

--   stim_proc: PROCESS
--   BEGIN		
--      wait for 100 ns;
--		  rst <= '1';
--      wait for 50 ns;
--      rst <= '0';
--      wait;
--   END PROCESS;	
END;
