library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity S_term_single2 is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32
    );
    Port (
 -- N
        N1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=N1BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=4,Side=N)
        N2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
        N2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2BEGb,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
        N4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=N4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
        NN4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=NN4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
        S1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=S1END,IO=INPUT,XOffset=0,YOffset=1,WireCount=4,Side=N)
        S2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2MID,IO=INPUT,XOffset=0,YOffset=1,WireCount=8,Side=N)
        S2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2END,IO=INPUT,XOffset=0,YOffset=1,WireCount=8,Side=N)
        S4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=S4END,IO=INPUT,XOffset=0,YOffset=4,WireCount=4,Side=N)
        SS4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=SS4END,IO=INPUT,XOffset=0,YOffset=4,WireCount=4,Side=N)
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end entity S_term_single2;
architecture Behavioral of S_term_single2 is
component S_term_single2_switch_matrix is
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
end component S_term_single2_switch_matrix;

 -- signal declarations
 -- BEL ports (e.g., slices)
 -- Jump wires
 -- internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)

 -- Connection for outgoing wires
signal FrameData_i : STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
signal FrameData_O_i : STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
signal FrameStrobe_i : STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 );
signal FrameStrobe_O_i : STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 );


begin

FrameData_O_i <= FrameData_i after 0 ps;

data_inbuf_0 : my_buf
    Port map(
        A => FrameData(0),
        X => FrameData_i(0)
    );

data_inbuf_1 : my_buf
    Port map(
        A => FrameData(1),
        X => FrameData_i(1)
    );

data_inbuf_2 : my_buf
    Port map(
        A => FrameData(2),
        X => FrameData_i(2)
    );

data_inbuf_3 : my_buf
    Port map(
        A => FrameData(3),
        X => FrameData_i(3)
    );

data_inbuf_4 : my_buf
    Port map(
        A => FrameData(4),
        X => FrameData_i(4)
    );

data_inbuf_5 : my_buf
    Port map(
        A => FrameData(5),
        X => FrameData_i(5)
    );

data_inbuf_6 : my_buf
    Port map(
        A => FrameData(6),
        X => FrameData_i(6)
    );

data_inbuf_7 : my_buf
    Port map(
        A => FrameData(7),
        X => FrameData_i(7)
    );

data_inbuf_8 : my_buf
    Port map(
        A => FrameData(8),
        X => FrameData_i(8)
    );

data_inbuf_9 : my_buf
    Port map(
        A => FrameData(9),
        X => FrameData_i(9)
    );

data_inbuf_10 : my_buf
    Port map(
        A => FrameData(10),
        X => FrameData_i(10)
    );

data_inbuf_11 : my_buf
    Port map(
        A => FrameData(11),
        X => FrameData_i(11)
    );

data_inbuf_12 : my_buf
    Port map(
        A => FrameData(12),
        X => FrameData_i(12)
    );

data_inbuf_13 : my_buf
    Port map(
        A => FrameData(13),
        X => FrameData_i(13)
    );

data_inbuf_14 : my_buf
    Port map(
        A => FrameData(14),
        X => FrameData_i(14)
    );

data_inbuf_15 : my_buf
    Port map(
        A => FrameData(15),
        X => FrameData_i(15)
    );

data_inbuf_16 : my_buf
    Port map(
        A => FrameData(16),
        X => FrameData_i(16)
    );

data_inbuf_17 : my_buf
    Port map(
        A => FrameData(17),
        X => FrameData_i(17)
    );

data_inbuf_18 : my_buf
    Port map(
        A => FrameData(18),
        X => FrameData_i(18)
    );

data_inbuf_19 : my_buf
    Port map(
        A => FrameData(19),
        X => FrameData_i(19)
    );

data_inbuf_20 : my_buf
    Port map(
        A => FrameData(20),
        X => FrameData_i(20)
    );

data_inbuf_21 : my_buf
    Port map(
        A => FrameData(21),
        X => FrameData_i(21)
    );

data_inbuf_22 : my_buf
    Port map(
        A => FrameData(22),
        X => FrameData_i(22)
    );

data_inbuf_23 : my_buf
    Port map(
        A => FrameData(23),
        X => FrameData_i(23)
    );

data_inbuf_24 : my_buf
    Port map(
        A => FrameData(24),
        X => FrameData_i(24)
    );

data_inbuf_25 : my_buf
    Port map(
        A => FrameData(25),
        X => FrameData_i(25)
    );

data_inbuf_26 : my_buf
    Port map(
        A => FrameData(26),
        X => FrameData_i(26)
    );

data_inbuf_27 : my_buf
    Port map(
        A => FrameData(27),
        X => FrameData_i(27)
    );

data_inbuf_28 : my_buf
    Port map(
        A => FrameData(28),
        X => FrameData_i(28)
    );

data_inbuf_29 : my_buf
    Port map(
        A => FrameData(29),
        X => FrameData_i(29)
    );

data_inbuf_30 : my_buf
    Port map(
        A => FrameData(30),
        X => FrameData_i(30)
    );

data_inbuf_31 : my_buf
    Port map(
        A => FrameData(31),
        X => FrameData_i(31)
    );

data_outbuf_0 : my_buf
    Port map(
        A => FrameData_O_i(0),
        X => FrameData_O(0)
    );

data_outbuf_1 : my_buf
    Port map(
        A => FrameData_O_i(1),
        X => FrameData_O(1)
    );

data_outbuf_2 : my_buf
    Port map(
        A => FrameData_O_i(2),
        X => FrameData_O(2)
    );

data_outbuf_3 : my_buf
    Port map(
        A => FrameData_O_i(3),
        X => FrameData_O(3)
    );

data_outbuf_4 : my_buf
    Port map(
        A => FrameData_O_i(4),
        X => FrameData_O(4)
    );

data_outbuf_5 : my_buf
    Port map(
        A => FrameData_O_i(5),
        X => FrameData_O(5)
    );

data_outbuf_6 : my_buf
    Port map(
        A => FrameData_O_i(6),
        X => FrameData_O(6)
    );

data_outbuf_7 : my_buf
    Port map(
        A => FrameData_O_i(7),
        X => FrameData_O(7)
    );

data_outbuf_8 : my_buf
    Port map(
        A => FrameData_O_i(8),
        X => FrameData_O(8)
    );

data_outbuf_9 : my_buf
    Port map(
        A => FrameData_O_i(9),
        X => FrameData_O(9)
    );

data_outbuf_10 : my_buf
    Port map(
        A => FrameData_O_i(10),
        X => FrameData_O(10)
    );

data_outbuf_11 : my_buf
    Port map(
        A => FrameData_O_i(11),
        X => FrameData_O(11)
    );

data_outbuf_12 : my_buf
    Port map(
        A => FrameData_O_i(12),
        X => FrameData_O(12)
    );

data_outbuf_13 : my_buf
    Port map(
        A => FrameData_O_i(13),
        X => FrameData_O(13)
    );

data_outbuf_14 : my_buf
    Port map(
        A => FrameData_O_i(14),
        X => FrameData_O(14)
    );

data_outbuf_15 : my_buf
    Port map(
        A => FrameData_O_i(15),
        X => FrameData_O(15)
    );

data_outbuf_16 : my_buf
    Port map(
        A => FrameData_O_i(16),
        X => FrameData_O(16)
    );

data_outbuf_17 : my_buf
    Port map(
        A => FrameData_O_i(17),
        X => FrameData_O(17)
    );

data_outbuf_18 : my_buf
    Port map(
        A => FrameData_O_i(18),
        X => FrameData_O(18)
    );

data_outbuf_19 : my_buf
    Port map(
        A => FrameData_O_i(19),
        X => FrameData_O(19)
    );

data_outbuf_20 : my_buf
    Port map(
        A => FrameData_O_i(20),
        X => FrameData_O(20)
    );

data_outbuf_21 : my_buf
    Port map(
        A => FrameData_O_i(21),
        X => FrameData_O(21)
    );

data_outbuf_22 : my_buf
    Port map(
        A => FrameData_O_i(22),
        X => FrameData_O(22)
    );

data_outbuf_23 : my_buf
    Port map(
        A => FrameData_O_i(23),
        X => FrameData_O(23)
    );

data_outbuf_24 : my_buf
    Port map(
        A => FrameData_O_i(24),
        X => FrameData_O(24)
    );

data_outbuf_25 : my_buf
    Port map(
        A => FrameData_O_i(25),
        X => FrameData_O(25)
    );

data_outbuf_26 : my_buf
    Port map(
        A => FrameData_O_i(26),
        X => FrameData_O(26)
    );

data_outbuf_27 : my_buf
    Port map(
        A => FrameData_O_i(27),
        X => FrameData_O(27)
    );

data_outbuf_28 : my_buf
    Port map(
        A => FrameData_O_i(28),
        X => FrameData_O(28)
    );

data_outbuf_29 : my_buf
    Port map(
        A => FrameData_O_i(29),
        X => FrameData_O(29)
    );

data_outbuf_30 : my_buf
    Port map(
        A => FrameData_O_i(30),
        X => FrameData_O(30)
    );

data_outbuf_31 : my_buf
    Port map(
        A => FrameData_O_i(31),
        X => FrameData_O(31)
    );

FrameStrobe_O_i <= FrameStrobe_i after 0 ps;

strobe_inbuf_0 : my_buf
    Port map(
        A => FrameStrobe(0),
        X => FrameStrobe_i(0)
    );

strobe_inbuf_1 : my_buf
    Port map(
        A => FrameStrobe(1),
        X => FrameStrobe_i(1)
    );

strobe_inbuf_2 : my_buf
    Port map(
        A => FrameStrobe(2),
        X => FrameStrobe_i(2)
    );

strobe_inbuf_3 : my_buf
    Port map(
        A => FrameStrobe(3),
        X => FrameStrobe_i(3)
    );

strobe_inbuf_4 : my_buf
    Port map(
        A => FrameStrobe(4),
        X => FrameStrobe_i(4)
    );

strobe_inbuf_5 : my_buf
    Port map(
        A => FrameStrobe(5),
        X => FrameStrobe_i(5)
    );

strobe_inbuf_6 : my_buf
    Port map(
        A => FrameStrobe(6),
        X => FrameStrobe_i(6)
    );

strobe_inbuf_7 : my_buf
    Port map(
        A => FrameStrobe(7),
        X => FrameStrobe_i(7)
    );

strobe_inbuf_8 : my_buf
    Port map(
        A => FrameStrobe(8),
        X => FrameStrobe_i(8)
    );

strobe_inbuf_9 : my_buf
    Port map(
        A => FrameStrobe(9),
        X => FrameStrobe_i(9)
    );

strobe_inbuf_10 : my_buf
    Port map(
        A => FrameStrobe(10),
        X => FrameStrobe_i(10)
    );

strobe_inbuf_11 : my_buf
    Port map(
        A => FrameStrobe(11),
        X => FrameStrobe_i(11)
    );

strobe_inbuf_12 : my_buf
    Port map(
        A => FrameStrobe(12),
        X => FrameStrobe_i(12)
    );

strobe_inbuf_13 : my_buf
    Port map(
        A => FrameStrobe(13),
        X => FrameStrobe_i(13)
    );

strobe_inbuf_14 : my_buf
    Port map(
        A => FrameStrobe(14),
        X => FrameStrobe_i(14)
    );

strobe_inbuf_15 : my_buf
    Port map(
        A => FrameStrobe(15),
        X => FrameStrobe_i(15)
    );

strobe_inbuf_16 : my_buf
    Port map(
        A => FrameStrobe(16),
        X => FrameStrobe_i(16)
    );

strobe_inbuf_17 : my_buf
    Port map(
        A => FrameStrobe(17),
        X => FrameStrobe_i(17)
    );

strobe_inbuf_18 : my_buf
    Port map(
        A => FrameStrobe(18),
        X => FrameStrobe_i(18)
    );

strobe_inbuf_19 : my_buf
    Port map(
        A => FrameStrobe(19),
        X => FrameStrobe_i(19)
    );

strobe_outbuf_0 : my_buf
    Port map(
        A => FrameStrobe_O_i(0),
        X => FrameStrobe_O(0)
    );

strobe_outbuf_1 : my_buf
    Port map(
        A => FrameStrobe_O_i(1),
        X => FrameStrobe_O(1)
    );

strobe_outbuf_2 : my_buf
    Port map(
        A => FrameStrobe_O_i(2),
        X => FrameStrobe_O(2)
    );

strobe_outbuf_3 : my_buf
    Port map(
        A => FrameStrobe_O_i(3),
        X => FrameStrobe_O(3)
    );

strobe_outbuf_4 : my_buf
    Port map(
        A => FrameStrobe_O_i(4),
        X => FrameStrobe_O(4)
    );

strobe_outbuf_5 : my_buf
    Port map(
        A => FrameStrobe_O_i(5),
        X => FrameStrobe_O(5)
    );

strobe_outbuf_6 : my_buf
    Port map(
        A => FrameStrobe_O_i(6),
        X => FrameStrobe_O(6)
    );

strobe_outbuf_7 : my_buf
    Port map(
        A => FrameStrobe_O_i(7),
        X => FrameStrobe_O(7)
    );

strobe_outbuf_8 : my_buf
    Port map(
        A => FrameStrobe_O_i(8),
        X => FrameStrobe_O(8)
    );

strobe_outbuf_9 : my_buf
    Port map(
        A => FrameStrobe_O_i(9),
        X => FrameStrobe_O(9)
    );

strobe_outbuf_10 : my_buf
    Port map(
        A => FrameStrobe_O_i(10),
        X => FrameStrobe_O(10)
    );

strobe_outbuf_11 : my_buf
    Port map(
        A => FrameStrobe_O_i(11),
        X => FrameStrobe_O(11)
    );

strobe_outbuf_12 : my_buf
    Port map(
        A => FrameStrobe_O_i(12),
        X => FrameStrobe_O(12)
    );

strobe_outbuf_13 : my_buf
    Port map(
        A => FrameStrobe_O_i(13),
        X => FrameStrobe_O(13)
    );

strobe_outbuf_14 : my_buf
    Port map(
        A => FrameStrobe_O_i(14),
        X => FrameStrobe_O(14)
    );

strobe_outbuf_15 : my_buf
    Port map(
        A => FrameStrobe_O_i(15),
        X => FrameStrobe_O(15)
    );

strobe_outbuf_16 : my_buf
    Port map(
        A => FrameStrobe_O_i(16),
        X => FrameStrobe_O(16)
    );

strobe_outbuf_17 : my_buf
    Port map(
        A => FrameStrobe_O_i(17),
        X => FrameStrobe_O(17)
    );

strobe_outbuf_18 : my_buf
    Port map(
        A => FrameStrobe_O_i(18),
        X => FrameStrobe_O(18)
    );

strobe_outbuf_19 : my_buf
    Port map(
        A => FrameStrobe_O_i(19),
        X => FrameStrobe_O(19)
    );

inst_clk_buf : clk_buf
    Port map(
        A => UserCLK,
        X => UserCLKo
    );


Inst_S_term_single2_switch_matrix : S_term_single2_switch_matrix
    Port map(
        S1END0 => S1END(0),
        S1END1 => S1END(1),
        S1END2 => S1END(2),
        S1END3 => S1END(3),
        S2MID0 => S2MID(0),
        S2MID1 => S2MID(1),
        S2MID2 => S2MID(2),
        S2MID3 => S2MID(3),
        S2MID4 => S2MID(4),
        S2MID5 => S2MID(5),
        S2MID6 => S2MID(6),
        S2MID7 => S2MID(7),
        S2END0 => S2END(0),
        S2END1 => S2END(1),
        S2END2 => S2END(2),
        S2END3 => S2END(3),
        S2END4 => S2END(4),
        S2END5 => S2END(5),
        S2END6 => S2END(6),
        S2END7 => S2END(7),
        S4END0 => S4END(0),
        S4END1 => S4END(1),
        S4END2 => S4END(2),
        S4END3 => S4END(3),
        S4END4 => S4END(4),
        S4END5 => S4END(5),
        S4END6 => S4END(6),
        S4END7 => S4END(7),
        S4END8 => S4END(8),
        S4END9 => S4END(9),
        S4END10 => S4END(10),
        S4END11 => S4END(11),
        S4END12 => S4END(12),
        S4END13 => S4END(13),
        S4END14 => S4END(14),
        S4END15 => S4END(15),
        SS4END0 => SS4END(0),
        SS4END1 => SS4END(1),
        SS4END2 => SS4END(2),
        SS4END3 => SS4END(3),
        SS4END4 => SS4END(4),
        SS4END5 => SS4END(5),
        SS4END6 => SS4END(6),
        SS4END7 => SS4END(7),
        SS4END8 => SS4END(8),
        SS4END9 => SS4END(9),
        SS4END10 => SS4END(10),
        SS4END11 => SS4END(11),
        SS4END12 => SS4END(12),
        SS4END13 => SS4END(13),
        SS4END14 => SS4END(14),
        SS4END15 => SS4END(15),
        N1BEG0 => N1BEG(0),
        N1BEG1 => N1BEG(1),
        N1BEG2 => N1BEG(2),
        N1BEG3 => N1BEG(3),
        N2BEG0 => N2BEG(0),
        N2BEG1 => N2BEG(1),
        N2BEG2 => N2BEG(2),
        N2BEG3 => N2BEG(3),
        N2BEG4 => N2BEG(4),
        N2BEG5 => N2BEG(5),
        N2BEG6 => N2BEG(6),
        N2BEG7 => N2BEG(7),
        N2BEGb0 => N2BEGb(0),
        N2BEGb1 => N2BEGb(1),
        N2BEGb2 => N2BEGb(2),
        N2BEGb3 => N2BEGb(3),
        N2BEGb4 => N2BEGb(4),
        N2BEGb5 => N2BEGb(5),
        N2BEGb6 => N2BEGb(6),
        N2BEGb7 => N2BEGb(7),
        N4BEG0 => N4BEG(0),
        N4BEG1 => N4BEG(1),
        N4BEG2 => N4BEG(2),
        N4BEG3 => N4BEG(3),
        N4BEG4 => N4BEG(4),
        N4BEG5 => N4BEG(5),
        N4BEG6 => N4BEG(6),
        N4BEG7 => N4BEG(7),
        N4BEG8 => N4BEG(8),
        N4BEG9 => N4BEG(9),
        N4BEG10 => N4BEG(10),
        N4BEG11 => N4BEG(11),
        N4BEG12 => N4BEG(12),
        N4BEG13 => N4BEG(13),
        N4BEG14 => N4BEG(14),
        N4BEG15 => N4BEG(15),
        NN4BEG0 => NN4BEG(0),
        NN4BEG1 => NN4BEG(1),
        NN4BEG2 => NN4BEG(2),
        NN4BEG3 => NN4BEG(3),
        NN4BEG4 => NN4BEG(4),
        NN4BEG5 => NN4BEG(5),
        NN4BEG6 => NN4BEG(6),
        NN4BEG7 => NN4BEG(7),
        NN4BEG8 => NN4BEG(8),
        NN4BEG9 => NN4BEG(9),
        NN4BEG10 => NN4BEG(10),
        NN4BEG11 => NN4BEG(11),
        NN4BEG12 => NN4BEG(12),
        NN4BEG13 => NN4BEG(13),
        NN4BEG14 => NN4BEG(14),
        NN4BEG15 => NN4BEG(15)
    );

end architecture Behavioral;