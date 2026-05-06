library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity W_IO is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 114
    );
    Port (
 -- E
        E1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=E1BEG,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=4,Side=E)
        E2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=E2BEG,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=8,Side=E)
        E2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=E2BEGb,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=8,Side=E)
        EE4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=EE4BEG,IO=OUTPUT,XOffset=4,YOffset=0,WireCount=4,Side=E)
        E6BEG      : out STD_LOGIC_VECTOR( 11 downto 0 );        -- Port(Name=E6BEG,IO=OUTPUT,XOffset=6,YOffset=0,WireCount=2,Side=E)
        W1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=W1END,IO=INPUT,XOffset=-1,YOffset=0,WireCount=4,Side=E)
        W2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=W2MID,IO=INPUT,XOffset=-1,YOffset=0,WireCount=8,Side=E)
        W2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=W2END,IO=INPUT,XOffset=-1,YOffset=0,WireCount=8,Side=E)
        WW4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=WW4END,IO=INPUT,XOffset=-4,YOffset=0,WireCount=4,Side=E)
        W6END      : in STD_LOGIC_VECTOR( 11 downto 0 );        -- Port(Name=W6END,IO=INPUT,XOffset=-6,YOffset=0,WireCount=2,Side=E)
        A_O_top    : in STD_LOGIC;
        A_I_top    : out STD_LOGIC;
        A_T_top    : out STD_LOGIC;
        B_O_top    : in STD_LOGIC;
        B_I_top    : out STD_LOGIC;
        B_T_top    : out STD_LOGIC;
        A_config_C0 : out STD_LOGIC;
        A_config_C1 : out STD_LOGIC;
        A_config_C2 : out STD_LOGIC;
        A_config_C3 : out STD_LOGIC;
        B_config_C0 : out STD_LOGIC;
        B_config_C1 : out STD_LOGIC;
        B_config_C2 : out STD_LOGIC;
        B_config_C3 : out STD_LOGIC;
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end entity W_IO;
architecture Behavioral of W_IO is
component IO_1_bidirectional_frame_config_pass is
  -- Generic ( NoConfigBits : integer := 0 ); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (
    -- Pin0
    I     : in std_logic; -- from fabric to external pin
    T     : in std_logic; -- tristate control
    O     : out std_logic; -- from external pin to fabric
    Q     : out std_logic; -- from external pin to fabric (registered)
    I_top : out std_logic; -- (* FABulous, EXTERNAL *) has to ge to top-level component not the switch matrix
    T_top : out std_logic; -- (* FABulous, EXTERNAL *) has to ge to top-level component not the switch matrix
    O_top : in std_logic; -- (* FABulous, EXTERNAL *) has to ge to top-level component not the switch matrix
    -- Tile IO ports from BELs
    UserCLK : in std_logic -- (* FABulous, EXTERNAL, SHARED_PORT *) -- ## the EXTERNAL keyword will send this signal all the way to top and the --SHARED Allows multiple BELs using the same port (e.g. for exporting a clock to the top)
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    -- ConfigBits : in   STD_LOGIC_VECTOR( NoConfigBits -1 downto 0 )
  );
end component IO_1_bidirectional_frame_config_pass;

component Config_access is
  generic (NoConfigBits : integer := 4); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (
    -- Pin0
    C : out std_logic_vector(3 downto 0); -- (* FABulous, EXTERNAL *)
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    ConfigBits : in std_logic_vector(NoConfigBits - 1 downto 0) -- (* FABulous, GLOBAL *)
  );
end component Config_access;

component W_IO_switch_matrix is
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
end component W_IO_switch_matrix;

component W_IO_ConfigMem is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 114
    );
    Port (
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow - 1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol - 1 downto 0 );
        ConfigBits : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 );
        ConfigBits_N : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 )
    );
end component W_IO_ConfigMem;

 -- signal declarations
 -- BEL ports (e.g., slices)
signal A_I : STD_LOGIC;
signal A_T : STD_LOGIC;
signal A_O : STD_LOGIC;
signal A_Q : STD_LOGIC;
signal B_I : STD_LOGIC;
signal B_T : STD_LOGIC;
signal B_O : STD_LOGIC;
signal B_Q : STD_LOGIC;
 -- Jump wires
 -- internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
signal ConfigBits : STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );
signal ConfigBits_N : STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );

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


 -- configuration storage latches
Inst_W_IO_ConfigMem : W_IO_ConfigMem
    Port map(
        FrameData => FrameData,
        FrameStrobe => FrameStrobe,
        ConfigBits => ConfigBits,
        ConfigBits_N => ConfigBits_N
    );


 -- BEL component instantiations
Inst_A_IO_1_bidirectional_frame_config_pass : IO_1_bidirectional_frame_config_pass
    Port map(
        I => A_I,
        T => A_T,
        O => A_O,
        Q => A_Q,
        I_top => A_I_top,
        T_top => A_T_top,
        O_top => A_O_top,
        UserCLK => UserCLK
    );

Inst_B_IO_1_bidirectional_frame_config_pass : IO_1_bidirectional_frame_config_pass
    Port map(
        I => B_I,
        T => B_T,
        O => B_O,
        Q => B_Q,
        I_top => B_I_top,
        T_top => B_T_top,
        O_top => B_O_top,
        UserCLK => UserCLK
    );

Inst_A_config_Config_access : Config_access
    Port map(
        C(3) => A_config_C3,
        C(2) =>  A_config_C2,
        C(1) =>  A_config_C1,
        C(0) =>  A_config_C0,
        ConfigBits => ConfigBits(4-1 downto 0)
    );

Inst_B_config_Config_access : Config_access
    Port map(
        C(3) => B_config_C3,
        C(2) =>  B_config_C2,
        C(1) =>  B_config_C1,
        C(0) =>  B_config_C0,
        ConfigBits => ConfigBits(8-1 downto 4)
    );

Inst_W_IO_switch_matrix : W_IO_switch_matrix
    Port map(
        W1END0 => W1END(0),
        W1END1 => W1END(1),
        W1END2 => W1END(2),
        W1END3 => W1END(3),
        W2MID0 => W2MID(0),
        W2MID1 => W2MID(1),
        W2MID2 => W2MID(2),
        W2MID3 => W2MID(3),
        W2MID4 => W2MID(4),
        W2MID5 => W2MID(5),
        W2MID6 => W2MID(6),
        W2MID7 => W2MID(7),
        W2END0 => W2END(0),
        W2END1 => W2END(1),
        W2END2 => W2END(2),
        W2END3 => W2END(3),
        W2END4 => W2END(4),
        W2END5 => W2END(5),
        W2END6 => W2END(6),
        W2END7 => W2END(7),
        WW4END0 => WW4END(0),
        WW4END1 => WW4END(1),
        WW4END2 => WW4END(2),
        WW4END3 => WW4END(3),
        WW4END4 => WW4END(4),
        WW4END5 => WW4END(5),
        WW4END6 => WW4END(6),
        WW4END7 => WW4END(7),
        WW4END8 => WW4END(8),
        WW4END9 => WW4END(9),
        WW4END10 => WW4END(10),
        WW4END11 => WW4END(11),
        WW4END12 => WW4END(12),
        WW4END13 => WW4END(13),
        WW4END14 => WW4END(14),
        WW4END15 => WW4END(15),
        W6END0 => W6END(0),
        W6END1 => W6END(1),
        W6END2 => W6END(2),
        W6END3 => W6END(3),
        W6END4 => W6END(4),
        W6END5 => W6END(5),
        W6END6 => W6END(6),
        W6END7 => W6END(7),
        W6END8 => W6END(8),
        W6END9 => W6END(9),
        W6END10 => W6END(10),
        W6END11 => W6END(11),
        A_O => A_O,
        A_Q => A_Q,
        B_O => B_O,
        B_Q => B_Q,
        E1BEG0 => E1BEG(0),
        E1BEG1 => E1BEG(1),
        E1BEG2 => E1BEG(2),
        E1BEG3 => E1BEG(3),
        E2BEG0 => E2BEG(0),
        E2BEG1 => E2BEG(1),
        E2BEG2 => E2BEG(2),
        E2BEG3 => E2BEG(3),
        E2BEG4 => E2BEG(4),
        E2BEG5 => E2BEG(5),
        E2BEG6 => E2BEG(6),
        E2BEG7 => E2BEG(7),
        E2BEGb0 => E2BEGb(0),
        E2BEGb1 => E2BEGb(1),
        E2BEGb2 => E2BEGb(2),
        E2BEGb3 => E2BEGb(3),
        E2BEGb4 => E2BEGb(4),
        E2BEGb5 => E2BEGb(5),
        E2BEGb6 => E2BEGb(6),
        E2BEGb7 => E2BEGb(7),
        EE4BEG0 => EE4BEG(0),
        EE4BEG1 => EE4BEG(1),
        EE4BEG2 => EE4BEG(2),
        EE4BEG3 => EE4BEG(3),
        EE4BEG4 => EE4BEG(4),
        EE4BEG5 => EE4BEG(5),
        EE4BEG6 => EE4BEG(6),
        EE4BEG7 => EE4BEG(7),
        EE4BEG8 => EE4BEG(8),
        EE4BEG9 => EE4BEG(9),
        EE4BEG10 => EE4BEG(10),
        EE4BEG11 => EE4BEG(11),
        EE4BEG12 => EE4BEG(12),
        EE4BEG13 => EE4BEG(13),
        EE4BEG14 => EE4BEG(14),
        EE4BEG15 => EE4BEG(15),
        E6BEG0 => E6BEG(0),
        E6BEG1 => E6BEG(1),
        E6BEG2 => E6BEG(2),
        E6BEG3 => E6BEG(3),
        E6BEG4 => E6BEG(4),
        E6BEG5 => E6BEG(5),
        E6BEG6 => E6BEG(6),
        E6BEG7 => E6BEG(7),
        E6BEG8 => E6BEG(8),
        E6BEG9 => E6BEG(9),
        E6BEG10 => E6BEG(10),
        E6BEG11 => E6BEG(11),
        A_I => A_I,
        A_T => A_T,
        B_I => B_I,
        B_T => B_T,
        ConfigBits => ConfigBits(114-1 downto 8),
        ConfigBits_N => ConfigBits_N(114-1 downto 8)
    );

end architecture Behavioral;