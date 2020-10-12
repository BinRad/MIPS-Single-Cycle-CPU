library ieee;
use ieee.std_logic_1164.all;

entity two2one_5bit_mux_matz is
port (
			a_in_matz : in std_logic_vector(4 downto 0);
			b_in_matz : in std_logic_vector(4 downto 0);
			selct_matz : in std_logic;
			output_matz : out std_logic_vector(4 downto 0)
);
end two2one_5bit_mux_matz;


architecture mux5bit of two2one_5bit_mux_matz is
begin
output_matz <= a_in_matz when (selct_matz = '0') else
				b_in_matz;

end mux5bit;