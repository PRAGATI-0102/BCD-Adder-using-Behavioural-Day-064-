-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
-- BCD_ADDER.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component BCD_ADDER is
     port(A      : in std_logic_vector(3 downto 0);
		    B      : in std_logic_vector(3 downto 0);
		    Y      : out std_logic_vector(4 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: BCD_ADDER 
			port map (
					

					
					A(3)   => input_vector(7),
					A(2)   => input_vector(6),
					A(1)   => input_vector(5),
					A(0)   => input_vector(4),
					
					B(3)   => input_vector(3),
					B(2)   => input_vector(2),
					B(1)   => input_vector(1),
					B(0)   => input_vector(0),

					
					Y(4)   => output_vector(4),
					Y(3)   => output_vector(3),
					Y(2)   => output_vector(2),
					Y(1)   => output_vector(1),
					Y(0)   => output_vector(0));

end DutWrap;

