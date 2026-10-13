 -- NumberOfConfigBits: 0
package attr_pack_DSP_top_sm_switch_matrix is
 attribute keep : string;
end package;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity DSP_top_sm_switch_matrix is
    Port (
 -- SJUMP inputs from child tiles
        DSP_top_sm_top_A0 : in STD_LOGIC;
        DSP_top_sm_top_A1 : in STD_LOGIC;
        DSP_top_sm_top_A2 : in STD_LOGIC;
        DSP_top_sm_top_A3 : in STD_LOGIC;
        DSP_top_sm_top_B0 : in STD_LOGIC;
        DSP_top_sm_top_B1 : in STD_LOGIC;
        DSP_top_sm_top_B2 : in STD_LOGIC;
        DSP_top_sm_top_B3 : in STD_LOGIC;
        DSP_top_sm_top_C0 : in STD_LOGIC;
        DSP_top_sm_top_C1 : in STD_LOGIC;
        DSP_top_sm_top_C2 : in STD_LOGIC;
        DSP_top_sm_top_C3 : in STD_LOGIC;
        DSP_top_sm_top_C4 : in STD_LOGIC;
        DSP_top_sm_top_C5 : in STD_LOGIC;
        DSP_top_sm_top_C6 : in STD_LOGIC;
        DSP_top_sm_top_C7 : in STD_LOGIC;
        DSP_top_sm_top_C8 : in STD_LOGIC;
        DSP_top_sm_top_C9 : in STD_LOGIC;
        DSP_top_sm_bot_A0 : in STD_LOGIC;
        DSP_top_sm_bot_A1 : in STD_LOGIC;
        DSP_top_sm_bot_A2 : in STD_LOGIC;
        DSP_top_sm_bot_A3 : in STD_LOGIC;
        DSP_top_sm_bot_B0 : in STD_LOGIC;
        DSP_top_sm_bot_B1 : in STD_LOGIC;
        DSP_top_sm_bot_B2 : in STD_LOGIC;
        DSP_top_sm_bot_B3 : in STD_LOGIC;
        DSP_top_sm_bot_C0 : in STD_LOGIC;
        DSP_top_sm_bot_C1 : in STD_LOGIC;
        DSP_top_sm_bot_C2 : in STD_LOGIC;
        DSP_top_sm_bot_C3 : in STD_LOGIC;
        DSP_top_sm_bot_C4 : in STD_LOGIC;
        DSP_top_sm_bot_C5 : in STD_LOGIC;
        DSP_top_sm_bot_C6 : in STD_LOGIC;
        DSP_top_sm_bot_C7 : in STD_LOGIC;
        DSP_top_sm_bot_C8 : in STD_LOGIC;
        DSP_top_sm_bot_C9 : in STD_LOGIC;
        DSP_top_sm_bot_clr0 : in STD_LOGIC;
 -- BEL input ports (SM outputs)
        DSP_A0     : out STD_LOGIC;
        DSP_A1     : out STD_LOGIC;
        DSP_A2     : out STD_LOGIC;
        DSP_A3     : out STD_LOGIC;
        DSP_A4     : out STD_LOGIC;
        DSP_A5     : out STD_LOGIC;
        DSP_A6     : out STD_LOGIC;
        DSP_A7     : out STD_LOGIC;
        DSP_B0     : out STD_LOGIC;
        DSP_B1     : out STD_LOGIC;
        DSP_B2     : out STD_LOGIC;
        DSP_B3     : out STD_LOGIC;
        DSP_B4     : out STD_LOGIC;
        DSP_B5     : out STD_LOGIC;
        DSP_B6     : out STD_LOGIC;
        DSP_B7     : out STD_LOGIC;
        DSP_C0     : out STD_LOGIC;
        DSP_C1     : out STD_LOGIC;
        DSP_C2     : out STD_LOGIC;
        DSP_C3     : out STD_LOGIC;
        DSP_C4     : out STD_LOGIC;
        DSP_C5     : out STD_LOGIC;
        DSP_C6     : out STD_LOGIC;
        DSP_C7     : out STD_LOGIC;
        DSP_C8     : out STD_LOGIC;
        DSP_C9     : out STD_LOGIC;
        DSP_C10    : out STD_LOGIC;
        DSP_C11    : out STD_LOGIC;
        DSP_C12    : out STD_LOGIC;
        DSP_C13    : out STD_LOGIC;
        DSP_C14    : out STD_LOGIC;
        DSP_C15    : out STD_LOGIC;
        DSP_C16    : out STD_LOGIC;
        DSP_C17    : out STD_LOGIC;
        DSP_C18    : out STD_LOGIC;
        DSP_C19    : out STD_LOGIC;
        DSP_clr    : out STD_LOGIC;
 -- BEL output ports (SM inputs)
        DSP_Q0     : in STD_LOGIC;
        DSP_Q1     : in STD_LOGIC;
        DSP_Q2     : in STD_LOGIC;
        DSP_Q3     : in STD_LOGIC;
        DSP_Q4     : in STD_LOGIC;
        DSP_Q5     : in STD_LOGIC;
        DSP_Q6     : in STD_LOGIC;
        DSP_Q7     : in STD_LOGIC;
        DSP_Q8     : in STD_LOGIC;
        DSP_Q9     : in STD_LOGIC;
        DSP_Q10    : in STD_LOGIC;
        DSP_Q11    : in STD_LOGIC;
        DSP_Q12    : in STD_LOGIC;
        DSP_Q13    : in STD_LOGIC;
        DSP_Q14    : in STD_LOGIC;
        DSP_Q15    : in STD_LOGIC;
        DSP_Q16    : in STD_LOGIC;
        DSP_Q17    : in STD_LOGIC;
        DSP_Q18    : in STD_LOGIC;
        DSP_Q19    : in STD_LOGIC;
 -- Reverse SJUMP outputs (SM -> child tile)
        DSP_top_sm_top_Q0 : out STD_LOGIC;
        DSP_top_sm_top_Q1 : out STD_LOGIC;
        DSP_top_sm_top_Q2 : out STD_LOGIC;
        DSP_top_sm_top_Q3 : out STD_LOGIC;
        DSP_top_sm_top_Q4 : out STD_LOGIC;
        DSP_top_sm_top_Q5 : out STD_LOGIC;
        DSP_top_sm_top_Q6 : out STD_LOGIC;
        DSP_top_sm_top_Q7 : out STD_LOGIC;
        DSP_top_sm_top_Q8 : out STD_LOGIC;
        DSP_top_sm_top_Q9 : out STD_LOGIC;
        DSP_top_sm_bot_Q0 : out STD_LOGIC;
        DSP_top_sm_bot_Q1 : out STD_LOGIC;
        DSP_top_sm_bot_Q2 : out STD_LOGIC;
        DSP_top_sm_bot_Q3 : out STD_LOGIC;
        DSP_top_sm_bot_Q4 : out STD_LOGIC;
        DSP_top_sm_bot_Q5 : out STD_LOGIC;
        DSP_top_sm_bot_Q6 : out STD_LOGIC;
        DSP_top_sm_bot_Q7 : out STD_LOGIC;
        DSP_top_sm_bot_Q8 : out STD_LOGIC;
        DSP_top_sm_bot_Q9 : out STD_LOGIC
 -- global
);
end entity DSP_top_sm_switch_matrix;
architecture Behavioral of DSP_top_sm_switch_matrix is
constant GND0 : STD_LOGIC := '0';
constant GND : STD_LOGIC := '0';
constant VCC0 : STD_LOGIC := '1';
constant VCC : STD_LOGIC := '1';
constant VDD0 : STD_LOGIC := '1';
constant VDD : STD_LOGIC := '1';

 -- The configuration bits (if any) are just a long shift register
 -- This shift register is padded to an even number of flops/latches

begin

 -- switch matrix multiplexer DSP_A0 MUX-1
DSP_A0 <= DSP_top_sm_top_A0 after 80 ps;

 -- switch matrix multiplexer DSP_A1 MUX-1
DSP_A1 <= DSP_top_sm_top_A1 after 80 ps;

 -- switch matrix multiplexer DSP_A2 MUX-1
DSP_A2 <= DSP_top_sm_top_A2 after 80 ps;

 -- switch matrix multiplexer DSP_A3 MUX-1
DSP_A3 <= DSP_top_sm_top_A3 after 80 ps;

 -- switch matrix multiplexer DSP_A4 MUX-1
DSP_A4 <= DSP_top_sm_bot_A0 after 80 ps;

 -- switch matrix multiplexer DSP_A5 MUX-1
DSP_A5 <= DSP_top_sm_bot_A1 after 80 ps;

 -- switch matrix multiplexer DSP_A6 MUX-1
DSP_A6 <= DSP_top_sm_bot_A2 after 80 ps;

 -- switch matrix multiplexer DSP_A7 MUX-1
DSP_A7 <= DSP_top_sm_bot_A3 after 80 ps;

 -- switch matrix multiplexer DSP_B0 MUX-1
DSP_B0 <= DSP_top_sm_top_B0 after 80 ps;

 -- switch matrix multiplexer DSP_B1 MUX-1
DSP_B1 <= DSP_top_sm_top_B1 after 80 ps;

 -- switch matrix multiplexer DSP_B2 MUX-1
DSP_B2 <= DSP_top_sm_top_B2 after 80 ps;

 -- switch matrix multiplexer DSP_B3 MUX-1
DSP_B3 <= DSP_top_sm_top_B3 after 80 ps;

 -- switch matrix multiplexer DSP_B4 MUX-1
DSP_B4 <= DSP_top_sm_bot_B0 after 80 ps;

 -- switch matrix multiplexer DSP_B5 MUX-1
DSP_B5 <= DSP_top_sm_bot_B1 after 80 ps;

 -- switch matrix multiplexer DSP_B6 MUX-1
DSP_B6 <= DSP_top_sm_bot_B2 after 80 ps;

 -- switch matrix multiplexer DSP_B7 MUX-1
DSP_B7 <= DSP_top_sm_bot_B3 after 80 ps;

 -- switch matrix multiplexer DSP_C0 MUX-1
DSP_C0 <= DSP_top_sm_top_C0 after 80 ps;

 -- switch matrix multiplexer DSP_C1 MUX-1
DSP_C1 <= DSP_top_sm_top_C1 after 80 ps;

 -- switch matrix multiplexer DSP_C2 MUX-1
DSP_C2 <= DSP_top_sm_top_C2 after 80 ps;

 -- switch matrix multiplexer DSP_C3 MUX-1
DSP_C3 <= DSP_top_sm_top_C3 after 80 ps;

 -- switch matrix multiplexer DSP_C4 MUX-1
DSP_C4 <= DSP_top_sm_top_C4 after 80 ps;

 -- switch matrix multiplexer DSP_C5 MUX-1
DSP_C5 <= DSP_top_sm_top_C5 after 80 ps;

 -- switch matrix multiplexer DSP_C6 MUX-1
DSP_C6 <= DSP_top_sm_top_C6 after 80 ps;

 -- switch matrix multiplexer DSP_C7 MUX-1
DSP_C7 <= DSP_top_sm_top_C7 after 80 ps;

 -- switch matrix multiplexer DSP_C8 MUX-1
DSP_C8 <= DSP_top_sm_top_C8 after 80 ps;

 -- switch matrix multiplexer DSP_C9 MUX-1
DSP_C9 <= DSP_top_sm_top_C9 after 80 ps;

 -- switch matrix multiplexer DSP_C10 MUX-1
DSP_C10 <= DSP_top_sm_bot_C0 after 80 ps;

 -- switch matrix multiplexer DSP_C11 MUX-1
DSP_C11 <= DSP_top_sm_bot_C1 after 80 ps;

 -- switch matrix multiplexer DSP_C12 MUX-1
DSP_C12 <= DSP_top_sm_bot_C2 after 80 ps;

 -- switch matrix multiplexer DSP_C13 MUX-1
DSP_C13 <= DSP_top_sm_bot_C3 after 80 ps;

 -- switch matrix multiplexer DSP_C14 MUX-1
DSP_C14 <= DSP_top_sm_bot_C4 after 80 ps;

 -- switch matrix multiplexer DSP_C15 MUX-1
DSP_C15 <= DSP_top_sm_bot_C5 after 80 ps;

 -- switch matrix multiplexer DSP_C16 MUX-1
DSP_C16 <= DSP_top_sm_bot_C6 after 80 ps;

 -- switch matrix multiplexer DSP_C17 MUX-1
DSP_C17 <= DSP_top_sm_bot_C7 after 80 ps;

 -- switch matrix multiplexer DSP_C18 MUX-1
DSP_C18 <= DSP_top_sm_bot_C8 after 80 ps;

 -- switch matrix multiplexer DSP_C19 MUX-1
DSP_C19 <= DSP_top_sm_bot_C9 after 80 ps;

 -- switch matrix multiplexer DSP_clr MUX-1
DSP_clr <= DSP_top_sm_bot_clr0 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q0 MUX-1
DSP_top_sm_top_Q0 <= DSP_Q0 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q1 MUX-1
DSP_top_sm_top_Q1 <= DSP_Q1 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q2 MUX-1
DSP_top_sm_top_Q2 <= DSP_Q2 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q3 MUX-1
DSP_top_sm_top_Q3 <= DSP_Q3 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q4 MUX-1
DSP_top_sm_top_Q4 <= DSP_Q4 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q5 MUX-1
DSP_top_sm_top_Q5 <= DSP_Q5 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q6 MUX-1
DSP_top_sm_top_Q6 <= DSP_Q6 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q7 MUX-1
DSP_top_sm_top_Q7 <= DSP_Q7 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q8 MUX-1
DSP_top_sm_top_Q8 <= DSP_Q8 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_top_Q9 MUX-1
DSP_top_sm_top_Q9 <= DSP_Q9 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q0 MUX-1
DSP_top_sm_bot_Q0 <= DSP_Q10 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q1 MUX-1
DSP_top_sm_bot_Q1 <= DSP_Q11 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q2 MUX-1
DSP_top_sm_bot_Q2 <= DSP_Q12 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q3 MUX-1
DSP_top_sm_bot_Q3 <= DSP_Q13 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q4 MUX-1
DSP_top_sm_bot_Q4 <= DSP_Q14 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q5 MUX-1
DSP_top_sm_bot_Q5 <= DSP_Q15 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q6 MUX-1
DSP_top_sm_bot_Q6 <= DSP_Q16 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q7 MUX-1
DSP_top_sm_bot_Q7 <= DSP_Q17 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q8 MUX-1
DSP_top_sm_bot_Q8 <= DSP_Q18 after 80 ps;

 -- switch matrix multiplexer DSP_top_sm_bot_Q9 MUX-1
DSP_top_sm_bot_Q9 <= DSP_Q19 after 80 ps;

end architecture Behavioral;