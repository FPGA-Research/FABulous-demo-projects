 -- NumberOfConfigBits: 0
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity S_term_DSP_switch_matrix is
    Port (
        S1END0     : in STD_LOGIC;
        S1END1     : in STD_LOGIC;
        S1END2     : in STD_LOGIC;
        S1END3     : in STD_LOGIC;
        S2MID0     : in STD_LOGIC;
        S2MID1     : in STD_LOGIC;
        S2MID2     : in STD_LOGIC;
        S2MID3     : in STD_LOGIC;
        S2MID4     : in STD_LOGIC;
        S2MID5     : in STD_LOGIC;
        S2MID6     : in STD_LOGIC;
        S2MID7     : in STD_LOGIC;
        S2END0     : in STD_LOGIC;
        S2END1     : in STD_LOGIC;
        S2END2     : in STD_LOGIC;
        S2END3     : in STD_LOGIC;
        S2END4     : in STD_LOGIC;
        S2END5     : in STD_LOGIC;
        S2END6     : in STD_LOGIC;
        S2END7     : in STD_LOGIC;
        S4END0     : in STD_LOGIC;
        S4END1     : in STD_LOGIC;
        S4END2     : in STD_LOGIC;
        S4END3     : in STD_LOGIC;
        S4END4     : in STD_LOGIC;
        S4END5     : in STD_LOGIC;
        S4END6     : in STD_LOGIC;
        S4END7     : in STD_LOGIC;
        S4END8     : in STD_LOGIC;
        S4END9     : in STD_LOGIC;
        S4END10    : in STD_LOGIC;
        S4END11    : in STD_LOGIC;
        S4END12    : in STD_LOGIC;
        S4END13    : in STD_LOGIC;
        S4END14    : in STD_LOGIC;
        S4END15    : in STD_LOGIC;
        SS4END0    : in STD_LOGIC;
        SS4END1    : in STD_LOGIC;
        SS4END2    : in STD_LOGIC;
        SS4END3    : in STD_LOGIC;
        SS4END4    : in STD_LOGIC;
        SS4END5    : in STD_LOGIC;
        SS4END6    : in STD_LOGIC;
        SS4END7    : in STD_LOGIC;
        SS4END8    : in STD_LOGIC;
        SS4END9    : in STD_LOGIC;
        SS4END10   : in STD_LOGIC;
        SS4END11   : in STD_LOGIC;
        SS4END12   : in STD_LOGIC;
        SS4END13   : in STD_LOGIC;
        SS4END14   : in STD_LOGIC;
        SS4END15   : in STD_LOGIC;
        N1BEG0     : out STD_LOGIC;
        N1BEG1     : out STD_LOGIC;
        N1BEG2     : out STD_LOGIC;
        N1BEG3     : out STD_LOGIC;
        N2BEG0     : out STD_LOGIC;
        N2BEG1     : out STD_LOGIC;
        N2BEG2     : out STD_LOGIC;
        N2BEG3     : out STD_LOGIC;
        N2BEG4     : out STD_LOGIC;
        N2BEG5     : out STD_LOGIC;
        N2BEG6     : out STD_LOGIC;
        N2BEG7     : out STD_LOGIC;
        N2BEGb0    : out STD_LOGIC;
        N2BEGb1    : out STD_LOGIC;
        N2BEGb2    : out STD_LOGIC;
        N2BEGb3    : out STD_LOGIC;
        N2BEGb4    : out STD_LOGIC;
        N2BEGb5    : out STD_LOGIC;
        N2BEGb6    : out STD_LOGIC;
        N2BEGb7    : out STD_LOGIC;
        N4BEG0     : out STD_LOGIC;
        N4BEG1     : out STD_LOGIC;
        N4BEG2     : out STD_LOGIC;
        N4BEG3     : out STD_LOGIC;
        N4BEG4     : out STD_LOGIC;
        N4BEG5     : out STD_LOGIC;
        N4BEG6     : out STD_LOGIC;
        N4BEG7     : out STD_LOGIC;
        N4BEG8     : out STD_LOGIC;
        N4BEG9     : out STD_LOGIC;
        N4BEG10    : out STD_LOGIC;
        N4BEG11    : out STD_LOGIC;
        N4BEG12    : out STD_LOGIC;
        N4BEG13    : out STD_LOGIC;
        N4BEG14    : out STD_LOGIC;
        N4BEG15    : out STD_LOGIC;
        NN4BEG0    : out STD_LOGIC;
        NN4BEG1    : out STD_LOGIC;
        NN4BEG2    : out STD_LOGIC;
        NN4BEG3    : out STD_LOGIC;
        NN4BEG4    : out STD_LOGIC;
        NN4BEG5    : out STD_LOGIC;
        NN4BEG6    : out STD_LOGIC;
        NN4BEG7    : out STD_LOGIC;
        NN4BEG8    : out STD_LOGIC;
        NN4BEG9    : out STD_LOGIC;
        NN4BEG10   : out STD_LOGIC;
        NN4BEG11   : out STD_LOGIC;
        NN4BEG12   : out STD_LOGIC;
        NN4BEG13   : out STD_LOGIC;
        NN4BEG14   : out STD_LOGIC;
        NN4BEG15   : out STD_LOGIC
 -- global
);
end entity S_term_DSP_switch_matrix;
architecture Behavioral of S_term_DSP_switch_matrix is
constant GND0 : STD_LOGIC := '0';
constant GND : STD_LOGIC := '0';
constant VCC0 : STD_LOGIC := '1';
constant VCC : STD_LOGIC := '1';
constant VDD0 : STD_LOGIC := '1';
constant VDD : STD_LOGIC := '1';

 -- The configuration bits (if any) are just a long shift register
 -- This shift register is padded to an even number of flops/latches

begin

 -- switch matrix multiplexer N1BEG0 MUX-1
N1BEG0 <= S1END3 after 80 ps;

 -- switch matrix multiplexer N1BEG1 MUX-1
N1BEG1 <= S1END2 after 80 ps;

 -- switch matrix multiplexer N1BEG2 MUX-1
N1BEG2 <= S1END1 after 80 ps;

 -- switch matrix multiplexer N1BEG3 MUX-1
N1BEG3 <= S1END0 after 80 ps;

 -- switch matrix multiplexer N2BEG0 MUX-1
N2BEG0 <= S2MID7 after 80 ps;

 -- switch matrix multiplexer N2BEG1 MUX-1
N2BEG1 <= S2MID6 after 80 ps;

 -- switch matrix multiplexer N2BEG2 MUX-1
N2BEG2 <= S2MID5 after 80 ps;

 -- switch matrix multiplexer N2BEG3 MUX-1
N2BEG3 <= S2MID4 after 80 ps;

 -- switch matrix multiplexer N2BEG4 MUX-1
N2BEG4 <= S2MID3 after 80 ps;

 -- switch matrix multiplexer N2BEG5 MUX-1
N2BEG5 <= S2MID2 after 80 ps;

 -- switch matrix multiplexer N2BEG6 MUX-1
N2BEG6 <= S2MID1 after 80 ps;

 -- switch matrix multiplexer N2BEG7 MUX-1
N2BEG7 <= S2MID0 after 80 ps;

 -- switch matrix multiplexer N2BEGb0 MUX-1
N2BEGb0 <= S2END7 after 80 ps;

 -- switch matrix multiplexer N2BEGb1 MUX-1
N2BEGb1 <= S2END6 after 80 ps;

 -- switch matrix multiplexer N2BEGb2 MUX-1
N2BEGb2 <= S2END5 after 80 ps;

 -- switch matrix multiplexer N2BEGb3 MUX-1
N2BEGb3 <= S2END4 after 80 ps;

 -- switch matrix multiplexer N2BEGb4 MUX-1
N2BEGb4 <= S2END3 after 80 ps;

 -- switch matrix multiplexer N2BEGb5 MUX-1
N2BEGb5 <= S2END2 after 80 ps;

 -- switch matrix multiplexer N2BEGb6 MUX-1
N2BEGb6 <= S2END1 after 80 ps;

 -- switch matrix multiplexer N2BEGb7 MUX-1
N2BEGb7 <= S2END0 after 80 ps;

 -- switch matrix multiplexer N4BEG0 MUX-1
N4BEG0 <= S4END15 after 80 ps;

 -- switch matrix multiplexer N4BEG1 MUX-1
N4BEG1 <= S4END14 after 80 ps;

 -- switch matrix multiplexer N4BEG2 MUX-1
N4BEG2 <= S4END13 after 80 ps;

 -- switch matrix multiplexer N4BEG3 MUX-1
N4BEG3 <= S4END12 after 80 ps;

 -- switch matrix multiplexer N4BEG4 MUX-1
N4BEG4 <= S4END11 after 80 ps;

 -- switch matrix multiplexer N4BEG5 MUX-1
N4BEG5 <= S4END10 after 80 ps;

 -- switch matrix multiplexer N4BEG6 MUX-1
N4BEG6 <= S4END9 after 80 ps;

 -- switch matrix multiplexer N4BEG7 MUX-1
N4BEG7 <= S4END8 after 80 ps;

 -- switch matrix multiplexer N4BEG8 MUX-1
N4BEG8 <= S4END7 after 80 ps;

 -- switch matrix multiplexer N4BEG9 MUX-1
N4BEG9 <= S4END6 after 80 ps;

 -- switch matrix multiplexer N4BEG10 MUX-1
N4BEG10 <= S4END5 after 80 ps;

 -- switch matrix multiplexer N4BEG11 MUX-1
N4BEG11 <= S4END4 after 80 ps;

 -- switch matrix multiplexer N4BEG12 MUX-1
N4BEG12 <= S4END3 after 80 ps;

 -- switch matrix multiplexer N4BEG13 MUX-1
N4BEG13 <= S4END2 after 80 ps;

 -- switch matrix multiplexer N4BEG14 MUX-1
N4BEG14 <= S4END1 after 80 ps;

 -- switch matrix multiplexer N4BEG15 MUX-1
N4BEG15 <= S4END0 after 80 ps;

 -- switch matrix multiplexer NN4BEG0 MUX-1
NN4BEG0 <= SS4END15 after 80 ps;

 -- switch matrix multiplexer NN4BEG1 MUX-1
NN4BEG1 <= SS4END14 after 80 ps;

 -- switch matrix multiplexer NN4BEG2 MUX-1
NN4BEG2 <= SS4END13 after 80 ps;

 -- switch matrix multiplexer NN4BEG3 MUX-1
NN4BEG3 <= SS4END12 after 80 ps;

 -- switch matrix multiplexer NN4BEG4 MUX-1
NN4BEG4 <= SS4END11 after 80 ps;

 -- switch matrix multiplexer NN4BEG5 MUX-1
NN4BEG5 <= SS4END10 after 80 ps;

 -- switch matrix multiplexer NN4BEG6 MUX-1
NN4BEG6 <= SS4END9 after 80 ps;

 -- switch matrix multiplexer NN4BEG7 MUX-1
NN4BEG7 <= SS4END8 after 80 ps;

 -- switch matrix multiplexer NN4BEG8 MUX-1
NN4BEG8 <= SS4END7 after 80 ps;

 -- switch matrix multiplexer NN4BEG9 MUX-1
NN4BEG9 <= SS4END6 after 80 ps;

 -- switch matrix multiplexer NN4BEG10 MUX-1
NN4BEG10 <= SS4END5 after 80 ps;

 -- switch matrix multiplexer NN4BEG11 MUX-1
NN4BEG11 <= SS4END4 after 80 ps;

 -- switch matrix multiplexer NN4BEG12 MUX-1
NN4BEG12 <= SS4END3 after 80 ps;

 -- switch matrix multiplexer NN4BEG13 MUX-1
NN4BEG13 <= SS4END2 after 80 ps;

 -- switch matrix multiplexer NN4BEG14 MUX-1
NN4BEG14 <= SS4END1 after 80 ps;

 -- switch matrix multiplexer NN4BEG15 MUX-1
NN4BEG15 <= SS4END0 after 80 ps;

end architecture Behavioral;