library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity N_term_RAM_IO is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32
    );
    Port (
 -- S
        N1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=N1END,IO=INPUT,XOffset=0,YOffset=-1,WireCount=4,Side=S)
        N2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2MID,IO=INPUT,XOffset=0,YOffset=-1,WireCount=8,Side=S)
        N2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2END,IO=INPUT,XOffset=0,YOffset=-1,WireCount=8,Side=S)
        N4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=N4END,IO=INPUT,XOffset=0,YOffset=-4,WireCount=4,Side=S)
        S1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=S1BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=4,Side=S)
        S2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        S2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2BEGb,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        S4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=S4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end entity N_term_RAM_IO;
architecture Behavioral of N_term_RAM_IO is
component N_term_RAM_IO_switch_matrix is
    Port (
        N1END0     : in STD_LOGIC;
        N1END1     : in STD_LOGIC;
        N1END2     : in STD_LOGIC;
        N1END3     : in STD_LOGIC;
        N2MID0     : in STD_LOGIC;
        N2MID1     : in STD_LOGIC;
        N2MID2     : in STD_LOGIC;
        N2MID3     : in STD_LOGIC;
        N2MID4     : in STD_LOGIC;
        N2MID5     : in STD_LOGIC;
        N2MID6     : in STD_LOGIC;
        N2MID7     : in STD_LOGIC;
        N2END0     : in STD_LOGIC;
        N2END1     : in STD_LOGIC;
        N2END2     : in STD_LOGIC;
        N2END3     : in STD_LOGIC;
        N2END4     : in STD_LOGIC;
        N2END5     : in STD_LOGIC;
        N2END6     : in STD_LOGIC;
        N2END7     : in STD_LOGIC;
        N4END0     : in STD_LOGIC;
        N4END1     : in STD_LOGIC;
        N4END2     : in STD_LOGIC;
        N4END3     : in STD_LOGIC;
        N4END4     : in STD_LOGIC;
        N4END5     : in STD_LOGIC;
        N4END6     : in STD_LOGIC;
        N4END7     : in STD_LOGIC;
        N4END8     : in STD_LOGIC;
        N4END9     : in STD_LOGIC;
        N4END10    : in STD_LOGIC;
        N4END11    : in STD_LOGIC;
        N4END12    : in STD_LOGIC;
        N4END13    : in STD_LOGIC;
        N4END14    : in STD_LOGIC;
        N4END15    : in STD_LOGIC;
        S1BEG0     : out STD_LOGIC;
        S1BEG1     : out STD_LOGIC;
        S1BEG2     : out STD_LOGIC;
        S1BEG3     : out STD_LOGIC;
        S2BEG0     : out STD_LOGIC;
        S2BEG1     : out STD_LOGIC;
        S2BEG2     : out STD_LOGIC;
        S2BEG3     : out STD_LOGIC;
        S2BEG4     : out STD_LOGIC;
        S2BEG5     : out STD_LOGIC;
        S2BEG6     : out STD_LOGIC;
        S2BEG7     : out STD_LOGIC;
        S2BEGb0    : out STD_LOGIC;
        S2BEGb1    : out STD_LOGIC;
        S2BEGb2    : out STD_LOGIC;
        S2BEGb3    : out STD_LOGIC;
        S2BEGb4    : out STD_LOGIC;
        S2BEGb5    : out STD_LOGIC;
        S2BEGb6    : out STD_LOGIC;
        S2BEGb7    : out STD_LOGIC;
        S4BEG0     : out STD_LOGIC;
        S4BEG1     : out STD_LOGIC;
        S4BEG2     : out STD_LOGIC;
        S4BEG3     : out STD_LOGIC;
        S4BEG4     : out STD_LOGIC;
        S4BEG5     : out STD_LOGIC;
        S4BEG6     : out STD_LOGIC;
        S4BEG7     : out STD_LOGIC;
        S4BEG8     : out STD_LOGIC;
        S4BEG9     : out STD_LOGIC;
        S4BEG10    : out STD_LOGIC;
        S4BEG11    : out STD_LOGIC;
        S4BEG12    : out STD_LOGIC;
        S4BEG13    : out STD_LOGIC;
        S4BEG14    : out STD_LOGIC;
        S4BEG15    : out STD_LOGIC
 -- global
);
end component N_term_RAM_IO_switch_matrix;

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


Inst_N_term_RAM_IO_switch_matrix : N_term_RAM_IO_switch_matrix
    Port map(
        N1END0 => N1END(0),
        N1END1 => N1END(1),
        N1END2 => N1END(2),
        N1END3 => N1END(3),
        N2MID0 => N2MID(0),
        N2MID1 => N2MID(1),
        N2MID2 => N2MID(2),
        N2MID3 => N2MID(3),
        N2MID4 => N2MID(4),
        N2MID5 => N2MID(5),
        N2MID6 => N2MID(6),
        N2MID7 => N2MID(7),
        N2END0 => N2END(0),
        N2END1 => N2END(1),
        N2END2 => N2END(2),
        N2END3 => N2END(3),
        N2END4 => N2END(4),
        N2END5 => N2END(5),
        N2END6 => N2END(6),
        N2END7 => N2END(7),
        N4END0 => N4END(0),
        N4END1 => N4END(1),
        N4END2 => N4END(2),
        N4END3 => N4END(3),
        N4END4 => N4END(4),
        N4END5 => N4END(5),
        N4END6 => N4END(6),
        N4END7 => N4END(7),
        N4END8 => N4END(8),
        N4END9 => N4END(9),
        N4END10 => N4END(10),
        N4END11 => N4END(11),
        N4END12 => N4END(12),
        N4END13 => N4END(13),
        N4END14 => N4END(14),
        N4END15 => N4END(15),
        S1BEG0 => S1BEG(0),
        S1BEG1 => S1BEG(1),
        S1BEG2 => S1BEG(2),
        S1BEG3 => S1BEG(3),
        S2BEG0 => S2BEG(0),
        S2BEG1 => S2BEG(1),
        S2BEG2 => S2BEG(2),
        S2BEG3 => S2BEG(3),
        S2BEG4 => S2BEG(4),
        S2BEG5 => S2BEG(5),
        S2BEG6 => S2BEG(6),
        S2BEG7 => S2BEG(7),
        S2BEGb0 => S2BEGb(0),
        S2BEGb1 => S2BEGb(1),
        S2BEGb2 => S2BEGb(2),
        S2BEGb3 => S2BEGb(3),
        S2BEGb4 => S2BEGb(4),
        S2BEGb5 => S2BEGb(5),
        S2BEGb6 => S2BEGb(6),
        S2BEGb7 => S2BEGb(7),
        S4BEG0 => S4BEG(0),
        S4BEG1 => S4BEG(1),
        S4BEG2 => S4BEG(2),
        S4BEG3 => S4BEG(3),
        S4BEG4 => S4BEG(4),
        S4BEG5 => S4BEG(5),
        S4BEG6 => S4BEG(6),
        S4BEG7 => S4BEG(7),
        S4BEG8 => S4BEG(8),
        S4BEG9 => S4BEG(9),
        S4BEG10 => S4BEG(10),
        S4BEG11 => S4BEG(11),
        S4BEG12 => S4BEG(12),
        S4BEG13 => S4BEG(13),
        S4BEG14 => S4BEG(14),
        S4BEG15 => S4BEG(15)
    );

end architecture Behavioral;