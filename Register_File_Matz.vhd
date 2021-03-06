library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register_File_Matz is
	port(
		wenable_matz : in std_logic;
		write_value_in_matz : in std_logic_vector(31 downto 0);
		write_register_address_matz : in std_logic_vector(4 downto 0);
		rs_address_in_matz : in std_logic_vector(4 downto 0);
		rt_address_in_matz : in std_logic_vector(4 downto 0);
		clock_matz : in std_logic;
		read_rs_out_matz : out std_logic_vector(31 downto 0);
		read_rt_out_matz : out std_logic_vector(31 downto 0)
	);
end Register_File_Matz;

architecture behav of Register_File_Matz is
	type reg_array_matz is array (0 to 31) of std_logic_vector(31 downto 0);
	signal register_matz : reg_array_matz := (others => (others=> '0'));
begin
process(clock_matz, wenable_matz)
begin
		if rising_edge(clock_matz) and wenable_matz = '1' then
					register_matz(to_integer(unsigned(write_register_address_matz))) <= write_value_in_matz;
		end if;
		
end process;

		read_rs_out_matz <= register_matz(to_integer(unsigned(rs_address_in_matz)));
		read_rt_out_matz <= register_matz(to_integer(unsigned(rt_address_in_matz)));
end architecture;
