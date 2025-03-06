----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 08:33:02 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

component sevenseg_decoder is
    port(
    i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
    o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end component sevenseg_decoder;

signal i_h : STD_LOGIC_VECTOR(3 downto 0);
signal o_s : STD_LOGIC_VECTOR(6 downto 0);   

begin

    SEVENSEG: sevenseg_decoder
        Port map(
            i_Hex => i_h,
            o_seg_n => o_s
        );
    test : process
    begin
        -- Test case 1: Input value 0000 (0 in hex)
        i_H <= "0000";  -- Input value 0
        wait for 10 ns;
        assert (o_S = "1111110") 
            report "Test case 1 failed: expected 0 (1111110)" severity failure;

        -- Test case 2: Input value 0001 (1 in hex)
        i_H <= "0001";  -- Input value 1
        wait for 10 ns;
        assert (o_S = "0110000") 
            report "Test case 2 failed: expected 1 (0110000)" severity failure;

        -- Test case 3: Input value 0010 (2 in hex)
        i_H <= "0010";  -- Input value 2
        wait for 10 ns;
        assert (o_S = "1101101") 
            report "Test case 3 failed: expected 2 (1101101)" severity failure;

        -- Test case 4: Input value 0011 (3 in hex)
        i_H <= "0011";  -- Input value 3
        wait for 10 ns;
        assert (o_S = "1111001") 
            report "Test case 4 failed: expected 3 (1111001)" severity failure;

        -- Test case 5: Input value 0100 (4 in hex)
        i_H <= "0100";  -- Input value 4
        wait for 10 ns;
        assert (o_S = "0110011") 
            report "Test case 5 failed: expected 4 (0110011)" severity failure;

        -- Test case 6: Input value 0101 (5 in hex)
        i_H <= "0101";  -- Input value 5
        wait for 10 ns;
        assert (o_S = "1011011") 
            report "Test case 6 failed: expected 5 (1011011)" severity failure;

        -- Test case 7: Input value 0110 (6 in hex)
        i_H <= "0110";  -- Input value 6
        wait for 10 ns;
        assert (o_S = "1011111") 
            report "Test case 7 failed: expected 6 (1011111)" severity failure;

        -- Test case 8: Input value 0111 (7 in hex)
        i_H <= "0111";  -- Input value 7
        wait for 10 ns;
        assert (o_S = "1110000") 
            report "Test case 8 failed: expected 7 (1110000)" severity failure;

        -- Test case 9: Input value 1000 (8 in hex)
        i_H <= "1000";  -- Input value 8
        wait for 10 ns;
        assert (o_S = "1111111") 
            report "Test case 9 failed: expected 8 (1111111)" severity failure;

        -- Test case 10: Input value 1001 (9 in hex)
        i_H <= "1001";  -- Input value 9
        wait for 10 ns;
        assert (o_S = "1111011") 
            report "Test case 10 failed: expected 9 (1111011)" severity failure;

        -- Test case 11: Input value 1010 (A in hex)
        i_H <= "1010";  -- Input value A
        wait for 10 ns;
        assert (o_S = "1110111") 
            report "Test case 11 failed: expected A (1110111)" severity failure;

        -- Test case 12: Input value 1011 (b in hex)
        i_H <= "1011";  -- Input value b
        wait for 10 ns;
        assert (o_S = "0011111") 
            report "Test case 12 failed: expected b (0011111)" severity failure;

        -- Test case 13: Input value 1100 (C in hex)
        i_H <= "1100";  -- Input value C
        wait for 10 ns;
        assert (o_S = "1001110") 
            report "Test case 13 failed: expected C (1001110)" severity failure;

        -- Test case 14: Input value 1101 (d in hex)
        i_H <= "1101";  -- Input value d
        wait for 10 ns;
        assert (o_S = "0111101") 
            report "Test case 14 failed: expected d (0111101)" severity failure;

        -- Test case 15: Input value 1110 (E in hex)
        i_H <= "1110";  -- Input value E
        wait for 10 ns;
        assert (o_S = "1001111") 
            report "Test case 15 failed: expected E (1001111)" severity failure;

        -- Test case 16: Input value 1111 (F in hex)
        i_H <= "1111";  -- Input value F
        wait for 10 ns;
        assert (o_S = "1000111") 
            report "Test case 16 failed: expected F (1000111)" severity failure;

        -- End of test
        wait;


    end process;

end Behavioral;
