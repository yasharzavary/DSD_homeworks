-- created by: yashar zavary rezaie
-- Date: 20 April 2025
-- Homework1 - exercise 1: 7-segment

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity seven_segment is
port(
	input: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(6 downto 0);
	error: out std_logic
	
);
end seven_segment;


architecture seven_segment_flow of seven_segment is

begin
	process(input)
	begin
	error <= '0';
		case input is
			when "0000" => 
				output <= "1111110";
			when "0001" =>
				output <= "0110000";
			when "0010" =>
				output <= "1101101";
			when "0011" =>
				output <= "1111001";
			when "0100" =>
				output <= "0110011";
			when "0101" =>
				output <= "1011011";
			when "0110" =>
				output <= "1011111";
			when "0111" =>
				output <= "1110000";
			when "1000" =>
				output <= "1111111";
			when "1001" =>
				output <= "1111011";
			when others =>
				output <= "1111111";
				error <= '1';
			end case;
	end process;
		
	
end seven_segment_flow;