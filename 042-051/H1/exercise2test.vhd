-- created by: yashar zavary rezaie
-- Date: 20 April 2025
-- subject: exercise 2(7 segment) test file

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity sevensegment_testbench is
end sevensegment_testbench;


architecture test_flow of sevensegment_testbench is

component seven_segment is
port(
	input: in std_logic_vector(3 downto 0);
	output: out std_logic_vector(6 downto 0);
	error: out std_logic
	
);
end component;

signal input: std_logic_vector(3 downto 0) := "0000";
signal output: std_logic_vector(6 downto 0);
signal error: std_logic;
begin

uut: seven_segment
port map(input, output, error);

simulate: process
begin
	-- 0
	input <= "0000";
	wait for 10 ns;
	
	-- 1
	input <= "0001";
	wait for 10 ns;

	-- 2
	input <= "0010";
	wait for 10 ns;
	
	-- 3
	input <= "0011";
	wait for 10 ns;
	
	-- 4
	input <= "0100";
	wait for 10 ns;
	
	-- 5
	input <= "0101";
	wait for 10 ns;
	
	-- 6
	input <= "0110";
	wait for 10 ns;
	
	-- 7
	input <= "0111";
	wait for 10 ns;
	
	-- 8
	input <= "1000";
	wait for 10 ns;
	
	-- 9
	input <= "1001";
	wait for 10 ns;
	
	-- error
	input <= "1111";
	wait for 10 ns;
	
	end process;
	
end test_flow;




