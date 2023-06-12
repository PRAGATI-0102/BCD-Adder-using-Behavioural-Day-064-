library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BCD_ADDER is
	port(A      : in std_logic_vector(3 downto 0);
		  B      : in std_logic_vector(3 downto 0);
		  Y      : out std_logic_vector(4 downto 0));
		  
end BCD_ADDER;

architecture behavioural of BCD_ADDER is
begin

process(A,B)
	
		variable Y_temp : std_logic_vector (4 downto 0);
		
begin
	
		
		Y_temp := std_logic_vector(('0' & unsigned(A)) + ('0' & unsigned(B)));
		
		if (unsigned(Y_temp) > 9) then
			
			Y <= std_logic_vector((unsigned(Y_temp)) + "00110");
			
		else
		
			Y <= std_logic_vector(unsigned(Y_temp));
		
		end if;	


end process;

end behavioural;