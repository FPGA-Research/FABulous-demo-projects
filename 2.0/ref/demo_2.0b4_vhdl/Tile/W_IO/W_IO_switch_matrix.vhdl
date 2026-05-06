 -- NumberOfConfigBits: 106
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity W_IO_switch_matrix is
    Generic(
        NoConfigBits : integer := 106
    );
    Port (
        W1END0     : in STD_LOGIC;
        W1END1     : in STD_LOGIC;
        W1END2     : in STD_LOGIC;
        W1END3     : in STD_LOGIC;
        W2MID0     : in STD_LOGIC;
        W2MID1     : in STD_LOGIC;
        W2MID2     : in STD_LOGIC;
        W2MID3     : in STD_LOGIC;
        W2MID4     : in STD_LOGIC;
        W2MID5     : in STD_LOGIC;
        W2MID6     : in STD_LOGIC;
        W2MID7     : in STD_LOGIC;
        W2END0     : in STD_LOGIC;
        W2END1     : in STD_LOGIC;
        W2END2     : in STD_LOGIC;
        W2END3     : in STD_LOGIC;
        W2END4     : in STD_LOGIC;
        W2END5     : in STD_LOGIC;
        W2END6     : in STD_LOGIC;
        W2END7     : in STD_LOGIC;
        WW4END0    : in STD_LOGIC;
        WW4END1    : in STD_LOGIC;
        WW4END2    : in STD_LOGIC;
        WW4END3    : in STD_LOGIC;
        WW4END4    : in STD_LOGIC;
        WW4END5    : in STD_LOGIC;
        WW4END6    : in STD_LOGIC;
        WW4END7    : in STD_LOGIC;
        WW4END8    : in STD_LOGIC;
        WW4END9    : in STD_LOGIC;
        WW4END10   : in STD_LOGIC;
        WW4END11   : in STD_LOGIC;
        WW4END12   : in STD_LOGIC;
        WW4END13   : in STD_LOGIC;
        WW4END14   : in STD_LOGIC;
        WW4END15   : in STD_LOGIC;
        W6END0     : in STD_LOGIC;
        W6END1     : in STD_LOGIC;
        W6END2     : in STD_LOGIC;
        W6END3     : in STD_LOGIC;
        W6END4     : in STD_LOGIC;
        W6END5     : in STD_LOGIC;
        W6END6     : in STD_LOGIC;
        W6END7     : in STD_LOGIC;
        W6END8     : in STD_LOGIC;
        W6END9     : in STD_LOGIC;
        W6END10    : in STD_LOGIC;
        W6END11    : in STD_LOGIC;
        A_O        : in STD_LOGIC;
        A_Q        : in STD_LOGIC;
        B_O        : in STD_LOGIC;
        B_Q        : in STD_LOGIC;
        E1BEG0     : out STD_LOGIC;
        E1BEG1     : out STD_LOGIC;
        E1BEG2     : out STD_LOGIC;
        E1BEG3     : out STD_LOGIC;
        E2BEG0     : out STD_LOGIC;
        E2BEG1     : out STD_LOGIC;
        E2BEG2     : out STD_LOGIC;
        E2BEG3     : out STD_LOGIC;
        E2BEG4     : out STD_LOGIC;
        E2BEG5     : out STD_LOGIC;
        E2BEG6     : out STD_LOGIC;
        E2BEG7     : out STD_LOGIC;
        E2BEGb0    : out STD_LOGIC;
        E2BEGb1    : out STD_LOGIC;
        E2BEGb2    : out STD_LOGIC;
        E2BEGb3    : out STD_LOGIC;
        E2BEGb4    : out STD_LOGIC;
        E2BEGb5    : out STD_LOGIC;
        E2BEGb6    : out STD_LOGIC;
        E2BEGb7    : out STD_LOGIC;
        EE4BEG0    : out STD_LOGIC;
        EE4BEG1    : out STD_LOGIC;
        EE4BEG2    : out STD_LOGIC;
        EE4BEG3    : out STD_LOGIC;
        EE4BEG4    : out STD_LOGIC;
        EE4BEG5    : out STD_LOGIC;
        EE4BEG6    : out STD_LOGIC;
        EE4BEG7    : out STD_LOGIC;
        EE4BEG8    : out STD_LOGIC;
        EE4BEG9    : out STD_LOGIC;
        EE4BEG10   : out STD_LOGIC;
        EE4BEG11   : out STD_LOGIC;
        EE4BEG12   : out STD_LOGIC;
        EE4BEG13   : out STD_LOGIC;
        EE4BEG14   : out STD_LOGIC;
        EE4BEG15   : out STD_LOGIC;
        E6BEG0     : out STD_LOGIC;
        E6BEG1     : out STD_LOGIC;
        E6BEG2     : out STD_LOGIC;
        E6BEG3     : out STD_LOGIC;
        E6BEG4     : out STD_LOGIC;
        E6BEG5     : out STD_LOGIC;
        E6BEG6     : out STD_LOGIC;
        E6BEG7     : out STD_LOGIC;
        E6BEG8     : out STD_LOGIC;
        E6BEG9     : out STD_LOGIC;
        E6BEG10    : out STD_LOGIC;
        E6BEG11    : out STD_LOGIC;
        A_I        : out STD_LOGIC;
        A_T        : out STD_LOGIC;
        B_I        : out STD_LOGIC;
        B_T        : out STD_LOGIC;
 -- global
        ConfigBits : in STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );
        ConfigBits_N : in STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 )
);
end entity W_IO_switch_matrix;
architecture Behavioral of W_IO_switch_matrix is
constant GND0 : STD_LOGIC := '0';
constant GND : STD_LOGIC := '0';
constant VCC0 : STD_LOGIC := '1';
constant VCC : STD_LOGIC := '1';
constant VDD0 : STD_LOGIC := '1';
constant VDD : STD_LOGIC := '1';

signal E1BEG0_input : STD_LOGIC_VECTOR( 2-1 downto 0 );
signal E1BEG1_input : STD_LOGIC_VECTOR( 2-1 downto 0 );
signal E1BEG2_input : STD_LOGIC_VECTOR( 2-1 downto 0 );
signal E1BEG3_input : STD_LOGIC_VECTOR( 2-1 downto 0 );
signal E2BEG0_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG1_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG2_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG3_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG4_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG5_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG6_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEG7_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb0_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb1_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb2_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb3_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb4_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb5_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb6_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E2BEGb7_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG0_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG1_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG2_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG3_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG4_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG5_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG6_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG7_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG8_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG9_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG10_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG11_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG12_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG13_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG14_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal EE4BEG15_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG0_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG1_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG2_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG3_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG4_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG5_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG6_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG7_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG8_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG9_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG10_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal E6BEG11_input : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal A_I_input : STD_LOGIC_VECTOR( 16-1 downto 0 );
signal A_T_input : STD_LOGIC_VECTOR( 8-1 downto 0 );
signal B_I_input : STD_LOGIC_VECTOR( 16-1 downto 0 );
signal B_T_input : STD_LOGIC_VECTOR( 8-1 downto 0 );
 -- The configuration bits (if any) are just a long shift register
 -- This shift register is padded to an even number of flops/latches

begin

 -- switch matrix multiplexer E1BEG0 MUX-2
E1BEG0_input <= A_O & W1END3 after 80 ps;
inst_cus_mux21_E1BEG0 : cus_mux21
    Port map(
        A0 => E1BEG0_input(0),
        A1 => E1BEG0_input(1),
        S => ConfigBits(0+0),
        X => E1BEG0
    );

 -- switch matrix multiplexer E1BEG1 MUX-2
E1BEG1_input <= A_Q & W1END2 after 80 ps;
inst_cus_mux21_E1BEG1 : cus_mux21
    Port map(
        A0 => E1BEG1_input(0),
        A1 => E1BEG1_input(1),
        S => ConfigBits(1+0),
        X => E1BEG1
    );

 -- switch matrix multiplexer E1BEG2 MUX-2
E1BEG2_input <= B_O & W1END1 after 80 ps;
inst_cus_mux21_E1BEG2 : cus_mux21
    Port map(
        A0 => E1BEG2_input(0),
        A1 => E1BEG2_input(1),
        S => ConfigBits(2+0),
        X => E1BEG2
    );

 -- switch matrix multiplexer E1BEG3 MUX-2
E1BEG3_input <= B_Q & W1END0 after 80 ps;
inst_cus_mux21_E1BEG3 : cus_mux21
    Port map(
        A0 => E1BEG3_input(0),
        A1 => E1BEG3_input(1),
        S => ConfigBits(3+0),
        X => E1BEG3
    );

 -- switch matrix multiplexer E2BEG0 MUX-4
E2BEG0_input <= W6END7 & WW4END15 & WW4END7 & W2MID7 after 80 ps;
inst_cus_mux41_buf_E2BEG0 : cus_mux41_buf
    Port map(
        A0 => E2BEG0_input(0),
        A1 => E2BEG0_input(1),
        A2 => E2BEG0_input(2),
        A3 => E2BEG0_input(3),
        S0 => ConfigBits(4+0),
        S0N => ConfigBits_N(4+0),
        S1 => ConfigBits(4+1),
        S1N => ConfigBits_N(4+1),
        X => E2BEG0
    );

 -- switch matrix multiplexer E2BEG1 MUX-4
E2BEG1_input <= W6END6 & WW4END14 & WW4END6 & W2MID6 after 80 ps;
inst_cus_mux41_buf_E2BEG1 : cus_mux41_buf
    Port map(
        A0 => E2BEG1_input(0),
        A1 => E2BEG1_input(1),
        A2 => E2BEG1_input(2),
        A3 => E2BEG1_input(3),
        S0 => ConfigBits(6+0),
        S0N => ConfigBits_N(6+0),
        S1 => ConfigBits(6+1),
        S1N => ConfigBits_N(6+1),
        X => E2BEG1
    );

 -- switch matrix multiplexer E2BEG2 MUX-4
E2BEG2_input <= W6END5 & WW4END13 & WW4END5 & W2MID5 after 80 ps;
inst_cus_mux41_buf_E2BEG2 : cus_mux41_buf
    Port map(
        A0 => E2BEG2_input(0),
        A1 => E2BEG2_input(1),
        A2 => E2BEG2_input(2),
        A3 => E2BEG2_input(3),
        S0 => ConfigBits(8+0),
        S0N => ConfigBits_N(8+0),
        S1 => ConfigBits(8+1),
        S1N => ConfigBits_N(8+1),
        X => E2BEG2
    );

 -- switch matrix multiplexer E2BEG3 MUX-4
E2BEG3_input <= W6END4 & WW4END12 & WW4END4 & W2MID4 after 80 ps;
inst_cus_mux41_buf_E2BEG3 : cus_mux41_buf
    Port map(
        A0 => E2BEG3_input(0),
        A1 => E2BEG3_input(1),
        A2 => E2BEG3_input(2),
        A3 => E2BEG3_input(3),
        S0 => ConfigBits(10+0),
        S0N => ConfigBits_N(10+0),
        S1 => ConfigBits(10+1),
        S1N => ConfigBits_N(10+1),
        X => E2BEG3
    );

 -- switch matrix multiplexer E2BEG4 MUX-4
E2BEG4_input <= W6END3 & WW4END11 & WW4END3 & W2MID3 after 80 ps;
inst_cus_mux41_buf_E2BEG4 : cus_mux41_buf
    Port map(
        A0 => E2BEG4_input(0),
        A1 => E2BEG4_input(1),
        A2 => E2BEG4_input(2),
        A3 => E2BEG4_input(3),
        S0 => ConfigBits(12+0),
        S0N => ConfigBits_N(12+0),
        S1 => ConfigBits(12+1),
        S1N => ConfigBits_N(12+1),
        X => E2BEG4
    );

 -- switch matrix multiplexer E2BEG5 MUX-4
E2BEG5_input <= W6END2 & WW4END10 & WW4END2 & W2MID2 after 80 ps;
inst_cus_mux41_buf_E2BEG5 : cus_mux41_buf
    Port map(
        A0 => E2BEG5_input(0),
        A1 => E2BEG5_input(1),
        A2 => E2BEG5_input(2),
        A3 => E2BEG5_input(3),
        S0 => ConfigBits(14+0),
        S0N => ConfigBits_N(14+0),
        S1 => ConfigBits(14+1),
        S1N => ConfigBits_N(14+1),
        X => E2BEG5
    );

 -- switch matrix multiplexer E2BEG6 MUX-4
E2BEG6_input <= W6END1 & WW4END9 & WW4END1 & W2MID1 after 80 ps;
inst_cus_mux41_buf_E2BEG6 : cus_mux41_buf
    Port map(
        A0 => E2BEG6_input(0),
        A1 => E2BEG6_input(1),
        A2 => E2BEG6_input(2),
        A3 => E2BEG6_input(3),
        S0 => ConfigBits(16+0),
        S0N => ConfigBits_N(16+0),
        S1 => ConfigBits(16+1),
        S1N => ConfigBits_N(16+1),
        X => E2BEG6
    );

 -- switch matrix multiplexer E2BEG7 MUX-4
E2BEG7_input <= W6END0 & WW4END8 & WW4END0 & W2MID0 after 80 ps;
inst_cus_mux41_buf_E2BEG7 : cus_mux41_buf
    Port map(
        A0 => E2BEG7_input(0),
        A1 => E2BEG7_input(1),
        A2 => E2BEG7_input(2),
        A3 => E2BEG7_input(3),
        S0 => ConfigBits(18+0),
        S0N => ConfigBits_N(18+0),
        S1 => ConfigBits(18+1),
        S1N => ConfigBits_N(18+1),
        X => E2BEG7
    );

 -- switch matrix multiplexer E2BEGb0 MUX-4
E2BEGb0_input <= W6END7 & WW4END15 & WW4END7 & W2END7 after 80 ps;
inst_cus_mux41_buf_E2BEGb0 : cus_mux41_buf
    Port map(
        A0 => E2BEGb0_input(0),
        A1 => E2BEGb0_input(1),
        A2 => E2BEGb0_input(2),
        A3 => E2BEGb0_input(3),
        S0 => ConfigBits(20+0),
        S0N => ConfigBits_N(20+0),
        S1 => ConfigBits(20+1),
        S1N => ConfigBits_N(20+1),
        X => E2BEGb0
    );

 -- switch matrix multiplexer E2BEGb1 MUX-4
E2BEGb1_input <= W6END6 & WW4END14 & WW4END6 & W2END6 after 80 ps;
inst_cus_mux41_buf_E2BEGb1 : cus_mux41_buf
    Port map(
        A0 => E2BEGb1_input(0),
        A1 => E2BEGb1_input(1),
        A2 => E2BEGb1_input(2),
        A3 => E2BEGb1_input(3),
        S0 => ConfigBits(22+0),
        S0N => ConfigBits_N(22+0),
        S1 => ConfigBits(22+1),
        S1N => ConfigBits_N(22+1),
        X => E2BEGb1
    );

 -- switch matrix multiplexer E2BEGb2 MUX-4
E2BEGb2_input <= W6END5 & WW4END13 & WW4END5 & W2END5 after 80 ps;
inst_cus_mux41_buf_E2BEGb2 : cus_mux41_buf
    Port map(
        A0 => E2BEGb2_input(0),
        A1 => E2BEGb2_input(1),
        A2 => E2BEGb2_input(2),
        A3 => E2BEGb2_input(3),
        S0 => ConfigBits(24+0),
        S0N => ConfigBits_N(24+0),
        S1 => ConfigBits(24+1),
        S1N => ConfigBits_N(24+1),
        X => E2BEGb2
    );

 -- switch matrix multiplexer E2BEGb3 MUX-4
E2BEGb3_input <= W6END4 & WW4END12 & WW4END4 & W2END4 after 80 ps;
inst_cus_mux41_buf_E2BEGb3 : cus_mux41_buf
    Port map(
        A0 => E2BEGb3_input(0),
        A1 => E2BEGb3_input(1),
        A2 => E2BEGb3_input(2),
        A3 => E2BEGb3_input(3),
        S0 => ConfigBits(26+0),
        S0N => ConfigBits_N(26+0),
        S1 => ConfigBits(26+1),
        S1N => ConfigBits_N(26+1),
        X => E2BEGb3
    );

 -- switch matrix multiplexer E2BEGb4 MUX-4
E2BEGb4_input <= W6END3 & WW4END11 & WW4END3 & W2END3 after 80 ps;
inst_cus_mux41_buf_E2BEGb4 : cus_mux41_buf
    Port map(
        A0 => E2BEGb4_input(0),
        A1 => E2BEGb4_input(1),
        A2 => E2BEGb4_input(2),
        A3 => E2BEGb4_input(3),
        S0 => ConfigBits(28+0),
        S0N => ConfigBits_N(28+0),
        S1 => ConfigBits(28+1),
        S1N => ConfigBits_N(28+1),
        X => E2BEGb4
    );

 -- switch matrix multiplexer E2BEGb5 MUX-4
E2BEGb5_input <= W6END2 & WW4END10 & WW4END2 & W2END2 after 80 ps;
inst_cus_mux41_buf_E2BEGb5 : cus_mux41_buf
    Port map(
        A0 => E2BEGb5_input(0),
        A1 => E2BEGb5_input(1),
        A2 => E2BEGb5_input(2),
        A3 => E2BEGb5_input(3),
        S0 => ConfigBits(30+0),
        S0N => ConfigBits_N(30+0),
        S1 => ConfigBits(30+1),
        S1N => ConfigBits_N(30+1),
        X => E2BEGb5
    );

 -- switch matrix multiplexer E2BEGb6 MUX-4
E2BEGb6_input <= W6END1 & WW4END9 & WW4END1 & W2END1 after 80 ps;
inst_cus_mux41_buf_E2BEGb6 : cus_mux41_buf
    Port map(
        A0 => E2BEGb6_input(0),
        A1 => E2BEGb6_input(1),
        A2 => E2BEGb6_input(2),
        A3 => E2BEGb6_input(3),
        S0 => ConfigBits(32+0),
        S0N => ConfigBits_N(32+0),
        S1 => ConfigBits(32+1),
        S1N => ConfigBits_N(32+1),
        X => E2BEGb6
    );

 -- switch matrix multiplexer E2BEGb7 MUX-4
E2BEGb7_input <= W6END0 & WW4END8 & WW4END0 & W2END0 after 80 ps;
inst_cus_mux41_buf_E2BEGb7 : cus_mux41_buf
    Port map(
        A0 => E2BEGb7_input(0),
        A1 => E2BEGb7_input(1),
        A2 => E2BEGb7_input(2),
        A3 => E2BEGb7_input(3),
        S0 => ConfigBits(34+0),
        S0N => ConfigBits_N(34+0),
        S1 => ConfigBits(34+1),
        S1N => ConfigBits_N(34+1),
        X => E2BEGb7
    );

 -- switch matrix multiplexer EE4BEG0 MUX-4
EE4BEG0_input <= A_O & W6END4 & W6END2 & W6END0 after 80 ps;
inst_cus_mux41_buf_EE4BEG0 : cus_mux41_buf
    Port map(
        A0 => EE4BEG0_input(0),
        A1 => EE4BEG0_input(1),
        A2 => EE4BEG0_input(2),
        A3 => EE4BEG0_input(3),
        S0 => ConfigBits(36+0),
        S0N => ConfigBits_N(36+0),
        S1 => ConfigBits(36+1),
        S1N => ConfigBits_N(36+1),
        X => EE4BEG0
    );

 -- switch matrix multiplexer EE4BEG1 MUX-4
EE4BEG1_input <= B_O & W6END10 & W6END8 & W6END6 after 80 ps;
inst_cus_mux41_buf_EE4BEG1 : cus_mux41_buf
    Port map(
        A0 => EE4BEG1_input(0),
        A1 => EE4BEG1_input(1),
        A2 => EE4BEG1_input(2),
        A3 => EE4BEG1_input(3),
        S0 => ConfigBits(38+0),
        S0N => ConfigBits_N(38+0),
        S1 => ConfigBits(38+1),
        S1N => ConfigBits_N(38+1),
        X => EE4BEG1
    );

 -- switch matrix multiplexer EE4BEG2 MUX-4
EE4BEG2_input <= A_Q & W6END5 & W6END3 & W6END1 after 80 ps;
inst_cus_mux41_buf_EE4BEG2 : cus_mux41_buf
    Port map(
        A0 => EE4BEG2_input(0),
        A1 => EE4BEG2_input(1),
        A2 => EE4BEG2_input(2),
        A3 => EE4BEG2_input(3),
        S0 => ConfigBits(40+0),
        S0N => ConfigBits_N(40+0),
        S1 => ConfigBits(40+1),
        S1N => ConfigBits_N(40+1),
        X => EE4BEG2
    );

 -- switch matrix multiplexer EE4BEG3 MUX-4
EE4BEG3_input <= B_Q & W6END11 & W6END9 & W6END7 after 80 ps;
inst_cus_mux41_buf_EE4BEG3 : cus_mux41_buf
    Port map(
        A0 => EE4BEG3_input(0),
        A1 => EE4BEG3_input(1),
        A2 => EE4BEG3_input(2),
        A3 => EE4BEG3_input(3),
        S0 => ConfigBits(42+0),
        S0N => ConfigBits_N(42+0),
        S1 => ConfigBits(42+1),
        S1N => ConfigBits_N(42+1),
        X => EE4BEG3
    );

 -- switch matrix multiplexer EE4BEG4 MUX-4
EE4BEG4_input <= W2END6 & W2END4 & W2END2 & W2END0 after 80 ps;
inst_cus_mux41_buf_EE4BEG4 : cus_mux41_buf
    Port map(
        A0 => EE4BEG4_input(0),
        A1 => EE4BEG4_input(1),
        A2 => EE4BEG4_input(2),
        A3 => EE4BEG4_input(3),
        S0 => ConfigBits(44+0),
        S0N => ConfigBits_N(44+0),
        S1 => ConfigBits(44+1),
        S1N => ConfigBits_N(44+1),
        X => EE4BEG4
    );

 -- switch matrix multiplexer EE4BEG5 MUX-4
EE4BEG5_input <= W2END7 & W2END5 & W2END3 & W2END1 after 80 ps;
inst_cus_mux41_buf_EE4BEG5 : cus_mux41_buf
    Port map(
        A0 => EE4BEG5_input(0),
        A1 => EE4BEG5_input(1),
        A2 => EE4BEG5_input(2),
        A3 => EE4BEG5_input(3),
        S0 => ConfigBits(46+0),
        S0N => ConfigBits_N(46+0),
        S1 => ConfigBits(46+1),
        S1N => ConfigBits_N(46+1),
        X => EE4BEG5
    );

 -- switch matrix multiplexer EE4BEG6 MUX-4
EE4BEG6_input <= W2MID6 & W2MID4 & W2MID2 & W2MID0 after 80 ps;
inst_cus_mux41_buf_EE4BEG6 : cus_mux41_buf
    Port map(
        A0 => EE4BEG6_input(0),
        A1 => EE4BEG6_input(1),
        A2 => EE4BEG6_input(2),
        A3 => EE4BEG6_input(3),
        S0 => ConfigBits(48+0),
        S0N => ConfigBits_N(48+0),
        S1 => ConfigBits(48+1),
        S1N => ConfigBits_N(48+1),
        X => EE4BEG6
    );

 -- switch matrix multiplexer EE4BEG7 MUX-4
EE4BEG7_input <= W2MID7 & W2MID5 & W2MID3 & W2MID1 after 80 ps;
inst_cus_mux41_buf_EE4BEG7 : cus_mux41_buf
    Port map(
        A0 => EE4BEG7_input(0),
        A1 => EE4BEG7_input(1),
        A2 => EE4BEG7_input(2),
        A3 => EE4BEG7_input(3),
        S0 => ConfigBits(50+0),
        S0N => ConfigBits_N(50+0),
        S1 => ConfigBits(50+1),
        S1N => ConfigBits_N(50+1),
        X => EE4BEG7
    );

 -- switch matrix multiplexer EE4BEG8 MUX-4
EE4BEG8_input <= W6END10 & W6END8 & W6END6 & W6END4 after 80 ps;
inst_cus_mux41_buf_EE4BEG8 : cus_mux41_buf
    Port map(
        A0 => EE4BEG8_input(0),
        A1 => EE4BEG8_input(1),
        A2 => EE4BEG8_input(2),
        A3 => EE4BEG8_input(3),
        S0 => ConfigBits(52+0),
        S0N => ConfigBits_N(52+0),
        S1 => ConfigBits(52+1),
        S1N => ConfigBits_N(52+1),
        X => EE4BEG8
    );

 -- switch matrix multiplexer EE4BEG9 MUX-4
EE4BEG9_input <= W6END7 & W6END5 & W6END3 & W6END1 after 80 ps;
inst_cus_mux41_buf_EE4BEG9 : cus_mux41_buf
    Port map(
        A0 => EE4BEG9_input(0),
        A1 => EE4BEG9_input(1),
        A2 => EE4BEG9_input(2),
        A3 => EE4BEG9_input(3),
        S0 => ConfigBits(54+0),
        S0N => ConfigBits_N(54+0),
        S1 => ConfigBits(54+1),
        S1N => ConfigBits_N(54+1),
        X => EE4BEG9
    );

 -- switch matrix multiplexer EE4BEG10 MUX-4
EE4BEG10_input <= A_O & W6END4 & W6END2 & W6END0 after 80 ps;
inst_cus_mux41_buf_EE4BEG10 : cus_mux41_buf
    Port map(
        A0 => EE4BEG10_input(0),
        A1 => EE4BEG10_input(1),
        A2 => EE4BEG10_input(2),
        A3 => EE4BEG10_input(3),
        S0 => ConfigBits(56+0),
        S0N => ConfigBits_N(56+0),
        S1 => ConfigBits(56+1),
        S1N => ConfigBits_N(56+1),
        X => EE4BEG10
    );

 -- switch matrix multiplexer EE4BEG11 MUX-4
EE4BEG11_input <= B_O & W6END10 & W6END8 & W6END6 after 80 ps;
inst_cus_mux41_buf_EE4BEG11 : cus_mux41_buf
    Port map(
        A0 => EE4BEG11_input(0),
        A1 => EE4BEG11_input(1),
        A2 => EE4BEG11_input(2),
        A3 => EE4BEG11_input(3),
        S0 => ConfigBits(58+0),
        S0N => ConfigBits_N(58+0),
        S1 => ConfigBits(58+1),
        S1N => ConfigBits_N(58+1),
        X => EE4BEG11
    );

 -- switch matrix multiplexer EE4BEG12 MUX-4
EE4BEG12_input <= A_Q & W6END5 & W6END3 & W6END1 after 80 ps;
inst_cus_mux41_buf_EE4BEG12 : cus_mux41_buf
    Port map(
        A0 => EE4BEG12_input(0),
        A1 => EE4BEG12_input(1),
        A2 => EE4BEG12_input(2),
        A3 => EE4BEG12_input(3),
        S0 => ConfigBits(60+0),
        S0N => ConfigBits_N(60+0),
        S1 => ConfigBits(60+1),
        S1N => ConfigBits_N(60+1),
        X => EE4BEG12
    );

 -- switch matrix multiplexer EE4BEG13 MUX-4
EE4BEG13_input <= B_Q & W6END11 & W6END9 & W6END7 after 80 ps;
inst_cus_mux41_buf_EE4BEG13 : cus_mux41_buf
    Port map(
        A0 => EE4BEG13_input(0),
        A1 => EE4BEG13_input(1),
        A2 => EE4BEG13_input(2),
        A3 => EE4BEG13_input(3),
        S0 => ConfigBits(62+0),
        S0N => ConfigBits_N(62+0),
        S1 => ConfigBits(62+1),
        S1N => ConfigBits_N(62+1),
        X => EE4BEG13
    );

 -- switch matrix multiplexer EE4BEG14 MUX-4
EE4BEG14_input <= W2MID6 & W2MID4 & W2MID2 & W2MID0 after 80 ps;
inst_cus_mux41_buf_EE4BEG14 : cus_mux41_buf
    Port map(
        A0 => EE4BEG14_input(0),
        A1 => EE4BEG14_input(1),
        A2 => EE4BEG14_input(2),
        A3 => EE4BEG14_input(3),
        S0 => ConfigBits(64+0),
        S0N => ConfigBits_N(64+0),
        S1 => ConfigBits(64+1),
        S1N => ConfigBits_N(64+1),
        X => EE4BEG14
    );

 -- switch matrix multiplexer EE4BEG15 MUX-4
EE4BEG15_input <= W2MID7 & W2MID5 & W2MID3 & W2MID1 after 80 ps;
inst_cus_mux41_buf_EE4BEG15 : cus_mux41_buf
    Port map(
        A0 => EE4BEG15_input(0),
        A1 => EE4BEG15_input(1),
        A2 => EE4BEG15_input(2),
        A3 => EE4BEG15_input(3),
        S0 => ConfigBits(66+0),
        S0N => ConfigBits_N(66+0),
        S1 => ConfigBits(66+1),
        S1N => ConfigBits_N(66+1),
        X => EE4BEG15
    );

 -- switch matrix multiplexer E6BEG0 MUX-4
E6BEG0_input <= A_O & W6END11 & WW4END11 & W1END2 after 80 ps;
inst_cus_mux41_buf_E6BEG0 : cus_mux41_buf
    Port map(
        A0 => E6BEG0_input(0),
        A1 => E6BEG0_input(1),
        A2 => E6BEG0_input(2),
        A3 => E6BEG0_input(3),
        S0 => ConfigBits(68+0),
        S0N => ConfigBits_N(68+0),
        S1 => ConfigBits(68+1),
        S1N => ConfigBits_N(68+1),
        X => E6BEG0
    );

 -- switch matrix multiplexer E6BEG1 MUX-4
E6BEG1_input <= B_O & W6END10 & WW4END10 & W1END3 after 80 ps;
inst_cus_mux41_buf_E6BEG1 : cus_mux41_buf
    Port map(
        A0 => E6BEG1_input(0),
        A1 => E6BEG1_input(1),
        A2 => E6BEG1_input(2),
        A3 => E6BEG1_input(3),
        S0 => ConfigBits(70+0),
        S0N => ConfigBits_N(70+0),
        S1 => ConfigBits(70+1),
        S1N => ConfigBits_N(70+1),
        X => E6BEG1
    );

 -- switch matrix multiplexer E6BEG2 MUX-4
E6BEG2_input <= A_O & W6END7 & WW4END15 & WW4END7 after 80 ps;
inst_cus_mux41_buf_E6BEG2 : cus_mux41_buf
    Port map(
        A0 => E6BEG2_input(0),
        A1 => E6BEG2_input(1),
        A2 => E6BEG2_input(2),
        A3 => E6BEG2_input(3),
        S0 => ConfigBits(72+0),
        S0N => ConfigBits_N(72+0),
        S1 => ConfigBits(72+1),
        S1N => ConfigBits_N(72+1),
        X => E6BEG2
    );

 -- switch matrix multiplexer E6BEG3 MUX-4
E6BEG3_input <= B_O & W6END6 & WW4END14 & WW4END6 after 80 ps;
inst_cus_mux41_buf_E6BEG3 : cus_mux41_buf
    Port map(
        A0 => E6BEG3_input(0),
        A1 => E6BEG3_input(1),
        A2 => E6BEG3_input(2),
        A3 => E6BEG3_input(3),
        S0 => ConfigBits(74+0),
        S0N => ConfigBits_N(74+0),
        S1 => ConfigBits(74+1),
        S1N => ConfigBits_N(74+1),
        X => E6BEG3
    );

 -- switch matrix multiplexer E6BEG4 MUX-4
E6BEG4_input <= A_O & W6END3 & WW4END3 & W1END2 after 80 ps;
inst_cus_mux41_buf_E6BEG4 : cus_mux41_buf
    Port map(
        A0 => E6BEG4_input(0),
        A1 => E6BEG4_input(1),
        A2 => E6BEG4_input(2),
        A3 => E6BEG4_input(3),
        S0 => ConfigBits(76+0),
        S0N => ConfigBits_N(76+0),
        S1 => ConfigBits(76+1),
        S1N => ConfigBits_N(76+1),
        X => E6BEG4
    );

 -- switch matrix multiplexer E6BEG5 MUX-4
E6BEG5_input <= B_O & W6END2 & WW4END2 & W1END3 after 80 ps;
inst_cus_mux41_buf_E6BEG5 : cus_mux41_buf
    Port map(
        A0 => E6BEG5_input(0),
        A1 => E6BEG5_input(1),
        A2 => E6BEG5_input(2),
        A3 => E6BEG5_input(3),
        S0 => ConfigBits(78+0),
        S0N => ConfigBits_N(78+0),
        S1 => ConfigBits(78+1),
        S1N => ConfigBits_N(78+1),
        X => E6BEG5
    );

 -- switch matrix multiplexer E6BEG6 MUX-4
E6BEG6_input <= A_Q & W6END9 & WW4END9 & W1END1 after 80 ps;
inst_cus_mux41_buf_E6BEG6 : cus_mux41_buf
    Port map(
        A0 => E6BEG6_input(0),
        A1 => E6BEG6_input(1),
        A2 => E6BEG6_input(2),
        A3 => E6BEG6_input(3),
        S0 => ConfigBits(80+0),
        S0N => ConfigBits_N(80+0),
        S1 => ConfigBits(80+1),
        S1N => ConfigBits_N(80+1),
        X => E6BEG6
    );

 -- switch matrix multiplexer E6BEG7 MUX-4
E6BEG7_input <= B_Q & W6END8 & WW4END8 & W1END0 after 80 ps;
inst_cus_mux41_buf_E6BEG7 : cus_mux41_buf
    Port map(
        A0 => E6BEG7_input(0),
        A1 => E6BEG7_input(1),
        A2 => E6BEG7_input(2),
        A3 => E6BEG7_input(3),
        S0 => ConfigBits(82+0),
        S0N => ConfigBits_N(82+0),
        S1 => ConfigBits(82+1),
        S1N => ConfigBits_N(82+1),
        X => E6BEG7
    );

 -- switch matrix multiplexer E6BEG8 MUX-4
E6BEG8_input <= A_Q & W6END5 & WW4END13 & WW4END5 after 80 ps;
inst_cus_mux41_buf_E6BEG8 : cus_mux41_buf
    Port map(
        A0 => E6BEG8_input(0),
        A1 => E6BEG8_input(1),
        A2 => E6BEG8_input(2),
        A3 => E6BEG8_input(3),
        S0 => ConfigBits(84+0),
        S0N => ConfigBits_N(84+0),
        S1 => ConfigBits(84+1),
        S1N => ConfigBits_N(84+1),
        X => E6BEG8
    );

 -- switch matrix multiplexer E6BEG9 MUX-4
E6BEG9_input <= B_Q & W6END4 & WW4END12 & WW4END4 after 80 ps;
inst_cus_mux41_buf_E6BEG9 : cus_mux41_buf
    Port map(
        A0 => E6BEG9_input(0),
        A1 => E6BEG9_input(1),
        A2 => E6BEG9_input(2),
        A3 => E6BEG9_input(3),
        S0 => ConfigBits(86+0),
        S0N => ConfigBits_N(86+0),
        S1 => ConfigBits(86+1),
        S1N => ConfigBits_N(86+1),
        X => E6BEG9
    );

 -- switch matrix multiplexer E6BEG10 MUX-4
E6BEG10_input <= A_Q & W6END1 & WW4END1 & W1END1 after 80 ps;
inst_cus_mux41_buf_E6BEG10 : cus_mux41_buf
    Port map(
        A0 => E6BEG10_input(0),
        A1 => E6BEG10_input(1),
        A2 => E6BEG10_input(2),
        A3 => E6BEG10_input(3),
        S0 => ConfigBits(88+0),
        S0N => ConfigBits_N(88+0),
        S1 => ConfigBits(88+1),
        S1N => ConfigBits_N(88+1),
        X => E6BEG10
    );

 -- switch matrix multiplexer E6BEG11 MUX-4
E6BEG11_input <= B_Q & W6END0 & WW4END0 & W1END0 after 80 ps;
inst_cus_mux41_buf_E6BEG11 : cus_mux41_buf
    Port map(
        A0 => E6BEG11_input(0),
        A1 => E6BEG11_input(1),
        A2 => E6BEG11_input(2),
        A3 => E6BEG11_input(3),
        S0 => ConfigBits(90+0),
        S0N => ConfigBits_N(90+0),
        S1 => ConfigBits(90+1),
        S1N => ConfigBits_N(90+1),
        X => E6BEG11
    );

 -- switch matrix multiplexer A_I MUX-16
A_I_input <= W2END7 & W2END6 & W2END5 & W2END4 & W2END3 & W2END2 & W2END1 & W2END0 & W2MID7 & W2MID6 & W2MID5 & W2MID4 & W2MID3 & W2MID2 & W2MID1 & W2MID0 after 80 ps;
inst_cus_mux161_buf_A_I : cus_mux161_buf
    Port map(
        A0 => A_I_input(0),
        A1 => A_I_input(1),
        A2 => A_I_input(2),
        A3 => A_I_input(3),
        A4 => A_I_input(4),
        A5 => A_I_input(5),
        A6 => A_I_input(6),
        A7 => A_I_input(7),
        A8 => A_I_input(8),
        A9 => A_I_input(9),
        A10 => A_I_input(10),
        A11 => A_I_input(11),
        A12 => A_I_input(12),
        A13 => A_I_input(13),
        A14 => A_I_input(14),
        A15 => A_I_input(15),
        S0 => ConfigBits(92+0),
        S0N => ConfigBits_N(92+0),
        S1 => ConfigBits(92+1),
        S1N => ConfigBits_N(92+1),
        S2 => ConfigBits(92+2),
        S2N => ConfigBits_N(92+2),
        S3 => ConfigBits(92+3),
        S3N => ConfigBits_N(92+3),
        X => A_I
    );

 -- switch matrix multiplexer A_T MUX-8
A_T_input <= VCC0 & GND0 & W2END4 & W2END3 & W2END2 & W2END1 & W2END0 & W2MID7 after 80 ps;
inst_cus_mux81_buf_A_T : cus_mux81_buf
    Port map(
        A0 => A_T_input(0),
        A1 => A_T_input(1),
        A2 => A_T_input(2),
        A3 => A_T_input(3),
        A4 => A_T_input(4),
        A5 => A_T_input(5),
        A6 => A_T_input(6),
        A7 => A_T_input(7),
        S0 => ConfigBits(96+0),
        S0N => ConfigBits_N(96+0),
        S1 => ConfigBits(96+1),
        S1N => ConfigBits_N(96+1),
        S2 => ConfigBits(96+2),
        S2N => ConfigBits_N(96+2),
        X => A_T
    );

 -- switch matrix multiplexer B_I MUX-16
B_I_input <= W2END7 & W2END6 & W2END5 & W2END4 & W2END3 & W2END2 & W2END1 & W2END0 & W2MID7 & W2MID6 & W2MID5 & W2MID4 & W2MID3 & W2MID2 & W2MID1 & W2MID0 after 80 ps;
inst_cus_mux161_buf_B_I : cus_mux161_buf
    Port map(
        A0 => B_I_input(0),
        A1 => B_I_input(1),
        A2 => B_I_input(2),
        A3 => B_I_input(3),
        A4 => B_I_input(4),
        A5 => B_I_input(5),
        A6 => B_I_input(6),
        A7 => B_I_input(7),
        A8 => B_I_input(8),
        A9 => B_I_input(9),
        A10 => B_I_input(10),
        A11 => B_I_input(11),
        A12 => B_I_input(12),
        A13 => B_I_input(13),
        A14 => B_I_input(14),
        A15 => B_I_input(15),
        S0 => ConfigBits(99+0),
        S0N => ConfigBits_N(99+0),
        S1 => ConfigBits(99+1),
        S1N => ConfigBits_N(99+1),
        S2 => ConfigBits(99+2),
        S2N => ConfigBits_N(99+2),
        S3 => ConfigBits(99+3),
        S3N => ConfigBits_N(99+3),
        X => B_I
    );

 -- switch matrix multiplexer B_T MUX-8
B_T_input <= VCC0 & GND0 & W2END6 & W2END5 & W2END4 & W2END0 & W2MID7 & W2MID6 after 80 ps;
inst_cus_mux81_buf_B_T : cus_mux81_buf
    Port map(
        A0 => B_T_input(0),
        A1 => B_T_input(1),
        A2 => B_T_input(2),
        A3 => B_T_input(3),
        A4 => B_T_input(4),
        A5 => B_T_input(5),
        A6 => B_T_input(6),
        A7 => B_T_input(7),
        S0 => ConfigBits(103+0),
        S0N => ConfigBits_N(103+0),
        S1 => ConfigBits(103+1),
        S1N => ConfigBits_N(103+1),
        S2 => ConfigBits(103+2),
        S2N => ConfigBits_N(103+2),
        X => B_T
    );

end architecture Behavioral;