library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity RAM_IO is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 328
    );
    Port (
 -- N
        N1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=N1BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=4,Side=N)
        N2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
        N2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2BEGb,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
        N4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=N4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
        S1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=S1END,IO=INPUT,XOffset=0,YOffset=1,WireCount=4,Side=N)
        S2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2MID,IO=INPUT,XOffset=0,YOffset=1,WireCount=8,Side=N)
        S2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2END,IO=INPUT,XOffset=0,YOffset=1,WireCount=8,Side=N)
        S4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=S4END,IO=INPUT,XOffset=0,YOffset=4,WireCount=4,Side=N)
 -- W
        E1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=E1END,IO=INPUT,XOffset=1,YOffset=0,WireCount=4,Side=W)
        E2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=E2MID,IO=INPUT,XOffset=1,YOffset=0,WireCount=8,Side=W)
        E2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=E2END,IO=INPUT,XOffset=1,YOffset=0,WireCount=8,Side=W)
        EE4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=EE4END,IO=INPUT,XOffset=4,YOffset=0,WireCount=4,Side=W)
        E6END      : in STD_LOGIC_VECTOR( 11 downto 0 );        -- Port(Name=E6END,IO=INPUT,XOffset=6,YOffset=0,WireCount=2,Side=W)
        W1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=W1BEG,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=4,Side=W)
        W2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=W2BEG,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=8,Side=W)
        W2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=W2BEGb,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=8,Side=W)
        WW4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=WW4BEG,IO=OUTPUT,XOffset=-4,YOffset=0,WireCount=4,Side=W)
        W6BEG      : out STD_LOGIC_VECTOR( 11 downto 0 );        -- Port(Name=W6BEG,IO=OUTPUT,XOffset=-6,YOffset=0,WireCount=2,Side=W)
 -- S
        N1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=N1END,IO=INPUT,XOffset=0,YOffset=-1,WireCount=4,Side=S)
        N2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2MID,IO=INPUT,XOffset=0,YOffset=-1,WireCount=8,Side=S)
        N2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=N2END,IO=INPUT,XOffset=0,YOffset=-1,WireCount=8,Side=S)
        N4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=N4END,IO=INPUT,XOffset=0,YOffset=-4,WireCount=4,Side=S)
        S1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=S1BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=4,Side=S)
        S2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        S2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2BEGb,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        S4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=S4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
        RAM2FAB_D0_I0 : in STD_LOGIC;
        RAM2FAB_D0_I1 : in STD_LOGIC;
        RAM2FAB_D0_I2 : in STD_LOGIC;
        RAM2FAB_D0_I3 : in STD_LOGIC;
        RAM2FAB_D1_I0 : in STD_LOGIC;
        RAM2FAB_D1_I1 : in STD_LOGIC;
        RAM2FAB_D1_I2 : in STD_LOGIC;
        RAM2FAB_D1_I3 : in STD_LOGIC;
        RAM2FAB_D2_I0 : in STD_LOGIC;
        RAM2FAB_D2_I1 : in STD_LOGIC;
        RAM2FAB_D2_I2 : in STD_LOGIC;
        RAM2FAB_D2_I3 : in STD_LOGIC;
        RAM2FAB_D3_I0 : in STD_LOGIC;
        RAM2FAB_D3_I1 : in STD_LOGIC;
        RAM2FAB_D3_I2 : in STD_LOGIC;
        RAM2FAB_D3_I3 : in STD_LOGIC;
        FAB2RAM_D0_O0 : out STD_LOGIC;
        FAB2RAM_D0_O1 : out STD_LOGIC;
        FAB2RAM_D0_O2 : out STD_LOGIC;
        FAB2RAM_D0_O3 : out STD_LOGIC;
        FAB2RAM_D1_O0 : out STD_LOGIC;
        FAB2RAM_D1_O1 : out STD_LOGIC;
        FAB2RAM_D1_O2 : out STD_LOGIC;
        FAB2RAM_D1_O3 : out STD_LOGIC;
        FAB2RAM_D2_O0 : out STD_LOGIC;
        FAB2RAM_D2_O1 : out STD_LOGIC;
        FAB2RAM_D2_O2 : out STD_LOGIC;
        FAB2RAM_D2_O3 : out STD_LOGIC;
        FAB2RAM_D3_O0 : out STD_LOGIC;
        FAB2RAM_D3_O1 : out STD_LOGIC;
        FAB2RAM_D3_O2 : out STD_LOGIC;
        FAB2RAM_D3_O3 : out STD_LOGIC;
        FAB2RAM_A0_O0 : out STD_LOGIC;
        FAB2RAM_A0_O1 : out STD_LOGIC;
        FAB2RAM_A0_O2 : out STD_LOGIC;
        FAB2RAM_A0_O3 : out STD_LOGIC;
        FAB2RAM_A1_O0 : out STD_LOGIC;
        FAB2RAM_A1_O1 : out STD_LOGIC;
        FAB2RAM_A1_O2 : out STD_LOGIC;
        FAB2RAM_A1_O3 : out STD_LOGIC;
        FAB2RAM_C_O0 : out STD_LOGIC;
        FAB2RAM_C_O1 : out STD_LOGIC;
        FAB2RAM_C_O2 : out STD_LOGIC;
        FAB2RAM_C_O3 : out STD_LOGIC;
        Config_accessC0 : out STD_LOGIC;
        Config_accessC1 : out STD_LOGIC;
        Config_accessC2 : out STD_LOGIC;
        Config_accessC3 : out STD_LOGIC;
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end entity RAM_IO;
architecture Behavioral of RAM_IO is
component InPass4_frame_config_mux is
  generic (NoConfigBits : integer := 4); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (
    -- Pin0
    I : in std_logic_vector(3 downto 0); -- (* FABulous, EXTERNAL *)
    O : out std_logic_vector(3 downto 0);
    -- Tile IO ports from BELs
    UserCLK : in std_logic; -- (* FABulous, EXTERNAL, SHARED_PORT *)
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    ConfigBits : in std_logic_vector(NoConfigBits - 1 downto 0) -- (* FABulous, GLOBAL *)
  );

end component InPass4_frame_config_mux;

component OutPass4_frame_config_mux is
  generic (NoConfigBits : integer := 4); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (
    -- Pin0
    I : in std_logic_vector(3 downto 0);
    O : out std_logic_vector(3 downto 0); -- (* FABulous, EXTERNAL *)
    -- Tile IO ports from BELs
    UserCLK : in std_logic; -- (* FABulous, EXTERNAL, SHARED_PORT *)
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    ConfigBits : in std_logic_vector(NoConfigBits - 1 downto 0) -- (* FABulous, GLOBAL *)
  );

end component OutPass4_frame_config_mux;

component Config_access is
  generic (NoConfigBits : integer := 4); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (
    -- Pin0
    C : out std_logic_vector(3 downto 0); -- (* FABulous, EXTERNAL *)
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    ConfigBits : in std_logic_vector(NoConfigBits - 1 downto 0) -- (* FABulous, GLOBAL *)
  );
end component Config_access;

component RAM_IO_switch_matrix is
    Generic(
        NoConfigBits : integer := 280
    );
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
        E1END0     : in STD_LOGIC;
        E1END1     : in STD_LOGIC;
        E1END2     : in STD_LOGIC;
        E1END3     : in STD_LOGIC;
        E2MID0     : in STD_LOGIC;
        E2MID1     : in STD_LOGIC;
        E2MID2     : in STD_LOGIC;
        E2MID3     : in STD_LOGIC;
        E2MID4     : in STD_LOGIC;
        E2MID5     : in STD_LOGIC;
        E2MID6     : in STD_LOGIC;
        E2MID7     : in STD_LOGIC;
        E2END0     : in STD_LOGIC;
        E2END1     : in STD_LOGIC;
        E2END2     : in STD_LOGIC;
        E2END3     : in STD_LOGIC;
        E2END4     : in STD_LOGIC;
        E2END5     : in STD_LOGIC;
        E2END6     : in STD_LOGIC;
        E2END7     : in STD_LOGIC;
        EE4END0    : in STD_LOGIC;
        EE4END1    : in STD_LOGIC;
        EE4END2    : in STD_LOGIC;
        EE4END3    : in STD_LOGIC;
        EE4END4    : in STD_LOGIC;
        EE4END5    : in STD_LOGIC;
        EE4END6    : in STD_LOGIC;
        EE4END7    : in STD_LOGIC;
        EE4END8    : in STD_LOGIC;
        EE4END9    : in STD_LOGIC;
        EE4END10   : in STD_LOGIC;
        EE4END11   : in STD_LOGIC;
        EE4END12   : in STD_LOGIC;
        EE4END13   : in STD_LOGIC;
        EE4END14   : in STD_LOGIC;
        EE4END15   : in STD_LOGIC;
        E6END0     : in STD_LOGIC;
        E6END1     : in STD_LOGIC;
        E6END2     : in STD_LOGIC;
        E6END3     : in STD_LOGIC;
        E6END4     : in STD_LOGIC;
        E6END5     : in STD_LOGIC;
        E6END6     : in STD_LOGIC;
        E6END7     : in STD_LOGIC;
        E6END8     : in STD_LOGIC;
        E6END9     : in STD_LOGIC;
        E6END10    : in STD_LOGIC;
        E6END11    : in STD_LOGIC;
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
        RAM2FAB_D0_O0 : in STD_LOGIC;
        RAM2FAB_D0_O1 : in STD_LOGIC;
        RAM2FAB_D0_O2 : in STD_LOGIC;
        RAM2FAB_D0_O3 : in STD_LOGIC;
        RAM2FAB_D1_O0 : in STD_LOGIC;
        RAM2FAB_D1_O1 : in STD_LOGIC;
        RAM2FAB_D1_O2 : in STD_LOGIC;
        RAM2FAB_D1_O3 : in STD_LOGIC;
        RAM2FAB_D2_O0 : in STD_LOGIC;
        RAM2FAB_D2_O1 : in STD_LOGIC;
        RAM2FAB_D2_O2 : in STD_LOGIC;
        RAM2FAB_D2_O3 : in STD_LOGIC;
        RAM2FAB_D3_O0 : in STD_LOGIC;
        RAM2FAB_D3_O1 : in STD_LOGIC;
        RAM2FAB_D3_O2 : in STD_LOGIC;
        RAM2FAB_D3_O3 : in STD_LOGIC;
        J_NS4_END0 : in STD_LOGIC;
        J_NS4_END1 : in STD_LOGIC;
        J_NS4_END2 : in STD_LOGIC;
        J_NS4_END3 : in STD_LOGIC;
        J_NS4_END4 : in STD_LOGIC;
        J_NS4_END5 : in STD_LOGIC;
        J_NS4_END6 : in STD_LOGIC;
        J_NS4_END7 : in STD_LOGIC;
        J_NS4_END8 : in STD_LOGIC;
        J_NS4_END9 : in STD_LOGIC;
        J_NS4_END10 : in STD_LOGIC;
        J_NS4_END11 : in STD_LOGIC;
        J_NS4_END12 : in STD_LOGIC;
        J_NS4_END13 : in STD_LOGIC;
        J_NS4_END14 : in STD_LOGIC;
        J_NS4_END15 : in STD_LOGIC;
        J_NS2_END0 : in STD_LOGIC;
        J_NS2_END1 : in STD_LOGIC;
        J_NS2_END2 : in STD_LOGIC;
        J_NS2_END3 : in STD_LOGIC;
        J_NS2_END4 : in STD_LOGIC;
        J_NS2_END5 : in STD_LOGIC;
        J_NS2_END6 : in STD_LOGIC;
        J_NS2_END7 : in STD_LOGIC;
        J_NS1_END0 : in STD_LOGIC;
        J_NS1_END1 : in STD_LOGIC;
        J_NS1_END2 : in STD_LOGIC;
        J_NS1_END3 : in STD_LOGIC;
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
        W1BEG0     : out STD_LOGIC;
        W1BEG1     : out STD_LOGIC;
        W1BEG2     : out STD_LOGIC;
        W1BEG3     : out STD_LOGIC;
        W2BEG0     : out STD_LOGIC;
        W2BEG1     : out STD_LOGIC;
        W2BEG2     : out STD_LOGIC;
        W2BEG3     : out STD_LOGIC;
        W2BEG4     : out STD_LOGIC;
        W2BEG5     : out STD_LOGIC;
        W2BEG6     : out STD_LOGIC;
        W2BEG7     : out STD_LOGIC;
        W2BEGb0    : out STD_LOGIC;
        W2BEGb1    : out STD_LOGIC;
        W2BEGb2    : out STD_LOGIC;
        W2BEGb3    : out STD_LOGIC;
        W2BEGb4    : out STD_LOGIC;
        W2BEGb5    : out STD_LOGIC;
        W2BEGb6    : out STD_LOGIC;
        W2BEGb7    : out STD_LOGIC;
        WW4BEG0    : out STD_LOGIC;
        WW4BEG1    : out STD_LOGIC;
        WW4BEG2    : out STD_LOGIC;
        WW4BEG3    : out STD_LOGIC;
        WW4BEG4    : out STD_LOGIC;
        WW4BEG5    : out STD_LOGIC;
        WW4BEG6    : out STD_LOGIC;
        WW4BEG7    : out STD_LOGIC;
        WW4BEG8    : out STD_LOGIC;
        WW4BEG9    : out STD_LOGIC;
        WW4BEG10   : out STD_LOGIC;
        WW4BEG11   : out STD_LOGIC;
        WW4BEG12   : out STD_LOGIC;
        WW4BEG13   : out STD_LOGIC;
        WW4BEG14   : out STD_LOGIC;
        WW4BEG15   : out STD_LOGIC;
        W6BEG0     : out STD_LOGIC;
        W6BEG1     : out STD_LOGIC;
        W6BEG2     : out STD_LOGIC;
        W6BEG3     : out STD_LOGIC;
        W6BEG4     : out STD_LOGIC;
        W6BEG5     : out STD_LOGIC;
        W6BEG6     : out STD_LOGIC;
        W6BEG7     : out STD_LOGIC;
        W6BEG8     : out STD_LOGIC;
        W6BEG9     : out STD_LOGIC;
        W6BEG10    : out STD_LOGIC;
        W6BEG11    : out STD_LOGIC;
        FAB2RAM_D0_I0 : out STD_LOGIC;
        FAB2RAM_D0_I1 : out STD_LOGIC;
        FAB2RAM_D0_I2 : out STD_LOGIC;
        FAB2RAM_D0_I3 : out STD_LOGIC;
        FAB2RAM_D1_I0 : out STD_LOGIC;
        FAB2RAM_D1_I1 : out STD_LOGIC;
        FAB2RAM_D1_I2 : out STD_LOGIC;
        FAB2RAM_D1_I3 : out STD_LOGIC;
        FAB2RAM_D2_I0 : out STD_LOGIC;
        FAB2RAM_D2_I1 : out STD_LOGIC;
        FAB2RAM_D2_I2 : out STD_LOGIC;
        FAB2RAM_D2_I3 : out STD_LOGIC;
        FAB2RAM_D3_I0 : out STD_LOGIC;
        FAB2RAM_D3_I1 : out STD_LOGIC;
        FAB2RAM_D3_I2 : out STD_LOGIC;
        FAB2RAM_D3_I3 : out STD_LOGIC;
        FAB2RAM_A0_I0 : out STD_LOGIC;
        FAB2RAM_A0_I1 : out STD_LOGIC;
        FAB2RAM_A0_I2 : out STD_LOGIC;
        FAB2RAM_A0_I3 : out STD_LOGIC;
        FAB2RAM_A1_I0 : out STD_LOGIC;
        FAB2RAM_A1_I1 : out STD_LOGIC;
        FAB2RAM_A1_I2 : out STD_LOGIC;
        FAB2RAM_A1_I3 : out STD_LOGIC;
        FAB2RAM_C_I0 : out STD_LOGIC;
        FAB2RAM_C_I1 : out STD_LOGIC;
        FAB2RAM_C_I2 : out STD_LOGIC;
        FAB2RAM_C_I3 : out STD_LOGIC;
        J_NS4_BEG0 : out STD_LOGIC;
        J_NS4_BEG1 : out STD_LOGIC;
        J_NS4_BEG2 : out STD_LOGIC;
        J_NS4_BEG3 : out STD_LOGIC;
        J_NS4_BEG4 : out STD_LOGIC;
        J_NS4_BEG5 : out STD_LOGIC;
        J_NS4_BEG6 : out STD_LOGIC;
        J_NS4_BEG7 : out STD_LOGIC;
        J_NS4_BEG8 : out STD_LOGIC;
        J_NS4_BEG9 : out STD_LOGIC;
        J_NS4_BEG10 : out STD_LOGIC;
        J_NS4_BEG11 : out STD_LOGIC;
        J_NS4_BEG12 : out STD_LOGIC;
        J_NS4_BEG13 : out STD_LOGIC;
        J_NS4_BEG14 : out STD_LOGIC;
        J_NS4_BEG15 : out STD_LOGIC;
        J_NS2_BEG0 : out STD_LOGIC;
        J_NS2_BEG1 : out STD_LOGIC;
        J_NS2_BEG2 : out STD_LOGIC;
        J_NS2_BEG3 : out STD_LOGIC;
        J_NS2_BEG4 : out STD_LOGIC;
        J_NS2_BEG5 : out STD_LOGIC;
        J_NS2_BEG6 : out STD_LOGIC;
        J_NS2_BEG7 : out STD_LOGIC;
        J_NS1_BEG0 : out STD_LOGIC;
        J_NS1_BEG1 : out STD_LOGIC;
        J_NS1_BEG2 : out STD_LOGIC;
        J_NS1_BEG3 : out STD_LOGIC;
 -- global
        ConfigBits : in STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );
        ConfigBits_N : in STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 )
);
end component RAM_IO_switch_matrix;

component RAM_IO_ConfigMem is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 328
    );
    Port (
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow - 1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol - 1 downto 0 );
        ConfigBits : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 );
        ConfigBits_N : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 )
    );
end component RAM_IO_ConfigMem;

 -- signal declarations
 -- BEL ports (e.g., slices)
signal RAM2FAB_D0_O0 : STD_LOGIC;
signal RAM2FAB_D0_O1 : STD_LOGIC;
signal RAM2FAB_D0_O2 : STD_LOGIC;
signal RAM2FAB_D0_O3 : STD_LOGIC;
signal RAM2FAB_D1_O0 : STD_LOGIC;
signal RAM2FAB_D1_O1 : STD_LOGIC;
signal RAM2FAB_D1_O2 : STD_LOGIC;
signal RAM2FAB_D1_O3 : STD_LOGIC;
signal RAM2FAB_D2_O0 : STD_LOGIC;
signal RAM2FAB_D2_O1 : STD_LOGIC;
signal RAM2FAB_D2_O2 : STD_LOGIC;
signal RAM2FAB_D2_O3 : STD_LOGIC;
signal RAM2FAB_D3_O0 : STD_LOGIC;
signal RAM2FAB_D3_O1 : STD_LOGIC;
signal RAM2FAB_D3_O2 : STD_LOGIC;
signal RAM2FAB_D3_O3 : STD_LOGIC;
signal FAB2RAM_D0_I0 : STD_LOGIC;
signal FAB2RAM_D0_I1 : STD_LOGIC;
signal FAB2RAM_D0_I2 : STD_LOGIC;
signal FAB2RAM_D0_I3 : STD_LOGIC;
signal FAB2RAM_D1_I0 : STD_LOGIC;
signal FAB2RAM_D1_I1 : STD_LOGIC;
signal FAB2RAM_D1_I2 : STD_LOGIC;
signal FAB2RAM_D1_I3 : STD_LOGIC;
signal FAB2RAM_D2_I0 : STD_LOGIC;
signal FAB2RAM_D2_I1 : STD_LOGIC;
signal FAB2RAM_D2_I2 : STD_LOGIC;
signal FAB2RAM_D2_I3 : STD_LOGIC;
signal FAB2RAM_D3_I0 : STD_LOGIC;
signal FAB2RAM_D3_I1 : STD_LOGIC;
signal FAB2RAM_D3_I2 : STD_LOGIC;
signal FAB2RAM_D3_I3 : STD_LOGIC;
signal FAB2RAM_A0_I0 : STD_LOGIC;
signal FAB2RAM_A0_I1 : STD_LOGIC;
signal FAB2RAM_A0_I2 : STD_LOGIC;
signal FAB2RAM_A0_I3 : STD_LOGIC;
signal FAB2RAM_A1_I0 : STD_LOGIC;
signal FAB2RAM_A1_I1 : STD_LOGIC;
signal FAB2RAM_A1_I2 : STD_LOGIC;
signal FAB2RAM_A1_I3 : STD_LOGIC;
signal FAB2RAM_C_I0 : STD_LOGIC;
signal FAB2RAM_C_I1 : STD_LOGIC;
signal FAB2RAM_C_I2 : STD_LOGIC;
signal FAB2RAM_C_I3 : STD_LOGIC;
 -- Jump wires
signal J_NS4_BEG : STD_LOGIC_VECTOR( 16-1 downto 0 );
signal J_NS2_BEG : STD_LOGIC_VECTOR( 8-1 downto 0 );
signal J_NS1_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
 -- internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
signal ConfigBits : STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );
signal ConfigBits_N : STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );

 -- Connection for outgoing wires
signal FrameData_i : STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
signal FrameData_O_i : STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
signal FrameStrobe_i : STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 );
signal FrameStrobe_O_i : STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 );
signal N4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal N4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal S4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal S4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );


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

N4BEG_i(15-4 downto 0) <= N4END_i(15 downto 4) after 0 ps;

N4END_inbuf_0 : my_buf
    Port map(
        A => N4END(4),
        X => N4END_i(4)
    );

N4END_inbuf_1 : my_buf
    Port map(
        A => N4END(5),
        X => N4END_i(5)
    );

N4END_inbuf_2 : my_buf
    Port map(
        A => N4END(6),
        X => N4END_i(6)
    );

N4END_inbuf_3 : my_buf
    Port map(
        A => N4END(7),
        X => N4END_i(7)
    );

N4END_inbuf_4 : my_buf
    Port map(
        A => N4END(8),
        X => N4END_i(8)
    );

N4END_inbuf_5 : my_buf
    Port map(
        A => N4END(9),
        X => N4END_i(9)
    );

N4END_inbuf_6 : my_buf
    Port map(
        A => N4END(10),
        X => N4END_i(10)
    );

N4END_inbuf_7 : my_buf
    Port map(
        A => N4END(11),
        X => N4END_i(11)
    );

N4END_inbuf_8 : my_buf
    Port map(
        A => N4END(12),
        X => N4END_i(12)
    );

N4END_inbuf_9 : my_buf
    Port map(
        A => N4END(13),
        X => N4END_i(13)
    );

N4END_inbuf_10 : my_buf
    Port map(
        A => N4END(14),
        X => N4END_i(14)
    );

N4END_inbuf_11 : my_buf
    Port map(
        A => N4END(15),
        X => N4END_i(15)
    );

N4BEG_outbuf_0 : my_buf
    Port map(
        A => N4BEG_i(0),
        X => N4BEG(0)
    );

N4BEG_outbuf_1 : my_buf
    Port map(
        A => N4BEG_i(1),
        X => N4BEG(1)
    );

N4BEG_outbuf_2 : my_buf
    Port map(
        A => N4BEG_i(2),
        X => N4BEG(2)
    );

N4BEG_outbuf_3 : my_buf
    Port map(
        A => N4BEG_i(3),
        X => N4BEG(3)
    );

N4BEG_outbuf_4 : my_buf
    Port map(
        A => N4BEG_i(4),
        X => N4BEG(4)
    );

N4BEG_outbuf_5 : my_buf
    Port map(
        A => N4BEG_i(5),
        X => N4BEG(5)
    );

N4BEG_outbuf_6 : my_buf
    Port map(
        A => N4BEG_i(6),
        X => N4BEG(6)
    );

N4BEG_outbuf_7 : my_buf
    Port map(
        A => N4BEG_i(7),
        X => N4BEG(7)
    );

N4BEG_outbuf_8 : my_buf
    Port map(
        A => N4BEG_i(8),
        X => N4BEG(8)
    );

N4BEG_outbuf_9 : my_buf
    Port map(
        A => N4BEG_i(9),
        X => N4BEG(9)
    );

N4BEG_outbuf_10 : my_buf
    Port map(
        A => N4BEG_i(10),
        X => N4BEG(10)
    );

N4BEG_outbuf_11 : my_buf
    Port map(
        A => N4BEG_i(11),
        X => N4BEG(11)
    );

S4BEG_i(15-4 downto 0) <= S4END_i(15 downto 4) after 0 ps;

S4END_inbuf_0 : my_buf
    Port map(
        A => S4END(4),
        X => S4END_i(4)
    );

S4END_inbuf_1 : my_buf
    Port map(
        A => S4END(5),
        X => S4END_i(5)
    );

S4END_inbuf_2 : my_buf
    Port map(
        A => S4END(6),
        X => S4END_i(6)
    );

S4END_inbuf_3 : my_buf
    Port map(
        A => S4END(7),
        X => S4END_i(7)
    );

S4END_inbuf_4 : my_buf
    Port map(
        A => S4END(8),
        X => S4END_i(8)
    );

S4END_inbuf_5 : my_buf
    Port map(
        A => S4END(9),
        X => S4END_i(9)
    );

S4END_inbuf_6 : my_buf
    Port map(
        A => S4END(10),
        X => S4END_i(10)
    );

S4END_inbuf_7 : my_buf
    Port map(
        A => S4END(11),
        X => S4END_i(11)
    );

S4END_inbuf_8 : my_buf
    Port map(
        A => S4END(12),
        X => S4END_i(12)
    );

S4END_inbuf_9 : my_buf
    Port map(
        A => S4END(13),
        X => S4END_i(13)
    );

S4END_inbuf_10 : my_buf
    Port map(
        A => S4END(14),
        X => S4END_i(14)
    );

S4END_inbuf_11 : my_buf
    Port map(
        A => S4END(15),
        X => S4END_i(15)
    );

S4BEG_outbuf_0 : my_buf
    Port map(
        A => S4BEG_i(0),
        X => S4BEG(0)
    );

S4BEG_outbuf_1 : my_buf
    Port map(
        A => S4BEG_i(1),
        X => S4BEG(1)
    );

S4BEG_outbuf_2 : my_buf
    Port map(
        A => S4BEG_i(2),
        X => S4BEG(2)
    );

S4BEG_outbuf_3 : my_buf
    Port map(
        A => S4BEG_i(3),
        X => S4BEG(3)
    );

S4BEG_outbuf_4 : my_buf
    Port map(
        A => S4BEG_i(4),
        X => S4BEG(4)
    );

S4BEG_outbuf_5 : my_buf
    Port map(
        A => S4BEG_i(5),
        X => S4BEG(5)
    );

S4BEG_outbuf_6 : my_buf
    Port map(
        A => S4BEG_i(6),
        X => S4BEG(6)
    );

S4BEG_outbuf_7 : my_buf
    Port map(
        A => S4BEG_i(7),
        X => S4BEG(7)
    );

S4BEG_outbuf_8 : my_buf
    Port map(
        A => S4BEG_i(8),
        X => S4BEG(8)
    );

S4BEG_outbuf_9 : my_buf
    Port map(
        A => S4BEG_i(9),
        X => S4BEG(9)
    );

S4BEG_outbuf_10 : my_buf
    Port map(
        A => S4BEG_i(10),
        X => S4BEG(10)
    );

S4BEG_outbuf_11 : my_buf
    Port map(
        A => S4BEG_i(11),
        X => S4BEG(11)
    );

inst_clk_buf : clk_buf
    Port map(
        A => UserCLK,
        X => UserCLKo
    );


 -- configuration storage latches
Inst_RAM_IO_ConfigMem : RAM_IO_ConfigMem
    Port map(
        FrameData => FrameData,
        FrameStrobe => FrameStrobe,
        ConfigBits => ConfigBits,
        ConfigBits_N => ConfigBits_N
    );


 -- BEL component instantiations
Inst_RAM2FAB_D0_InPass4_frame_config_mux : InPass4_frame_config_mux
    Port map(
        O(3) => RAM2FAB_D0_O3,
        O(2) =>  RAM2FAB_D0_O2,
        O(1) =>  RAM2FAB_D0_O1,
        O(0) =>  RAM2FAB_D0_O0,
        I(3) => RAM2FAB_D0_I3,
        I(2) =>  RAM2FAB_D0_I2,
        I(1) =>  RAM2FAB_D0_I1,
        I(0) =>  RAM2FAB_D0_I0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(4-1 downto 0)
    );

Inst_RAM2FAB_D1_InPass4_frame_config_mux : InPass4_frame_config_mux
    Port map(
        O(3) => RAM2FAB_D1_O3,
        O(2) =>  RAM2FAB_D1_O2,
        O(1) =>  RAM2FAB_D1_O1,
        O(0) =>  RAM2FAB_D1_O0,
        I(3) => RAM2FAB_D1_I3,
        I(2) =>  RAM2FAB_D1_I2,
        I(1) =>  RAM2FAB_D1_I1,
        I(0) =>  RAM2FAB_D1_I0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(8-1 downto 4)
    );

Inst_RAM2FAB_D2_InPass4_frame_config_mux : InPass4_frame_config_mux
    Port map(
        O(3) => RAM2FAB_D2_O3,
        O(2) =>  RAM2FAB_D2_O2,
        O(1) =>  RAM2FAB_D2_O1,
        O(0) =>  RAM2FAB_D2_O0,
        I(3) => RAM2FAB_D2_I3,
        I(2) =>  RAM2FAB_D2_I2,
        I(1) =>  RAM2FAB_D2_I1,
        I(0) =>  RAM2FAB_D2_I0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(12-1 downto 8)
    );

Inst_RAM2FAB_D3_InPass4_frame_config_mux : InPass4_frame_config_mux
    Port map(
        O(3) => RAM2FAB_D3_O3,
        O(2) =>  RAM2FAB_D3_O2,
        O(1) =>  RAM2FAB_D3_O1,
        O(0) =>  RAM2FAB_D3_O0,
        I(3) => RAM2FAB_D3_I3,
        I(2) =>  RAM2FAB_D3_I2,
        I(1) =>  RAM2FAB_D3_I1,
        I(0) =>  RAM2FAB_D3_I0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(16-1 downto 12)
    );

Inst_FAB2RAM_D0_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_D0_I3,
        I(2) =>  FAB2RAM_D0_I2,
        I(1) =>  FAB2RAM_D0_I1,
        I(0) =>  FAB2RAM_D0_I0,
        O(3) => FAB2RAM_D0_O3,
        O(2) =>  FAB2RAM_D0_O2,
        O(1) =>  FAB2RAM_D0_O1,
        O(0) =>  FAB2RAM_D0_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(20-1 downto 16)
    );

Inst_FAB2RAM_D1_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_D1_I3,
        I(2) =>  FAB2RAM_D1_I2,
        I(1) =>  FAB2RAM_D1_I1,
        I(0) =>  FAB2RAM_D1_I0,
        O(3) => FAB2RAM_D1_O3,
        O(2) =>  FAB2RAM_D1_O2,
        O(1) =>  FAB2RAM_D1_O1,
        O(0) =>  FAB2RAM_D1_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(24-1 downto 20)
    );

Inst_FAB2RAM_D2_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_D2_I3,
        I(2) =>  FAB2RAM_D2_I2,
        I(1) =>  FAB2RAM_D2_I1,
        I(0) =>  FAB2RAM_D2_I0,
        O(3) => FAB2RAM_D2_O3,
        O(2) =>  FAB2RAM_D2_O2,
        O(1) =>  FAB2RAM_D2_O1,
        O(0) =>  FAB2RAM_D2_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(28-1 downto 24)
    );

Inst_FAB2RAM_D3_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_D3_I3,
        I(2) =>  FAB2RAM_D3_I2,
        I(1) =>  FAB2RAM_D3_I1,
        I(0) =>  FAB2RAM_D3_I0,
        O(3) => FAB2RAM_D3_O3,
        O(2) =>  FAB2RAM_D3_O2,
        O(1) =>  FAB2RAM_D3_O1,
        O(0) =>  FAB2RAM_D3_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(32-1 downto 28)
    );

Inst_FAB2RAM_A0_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_A0_I3,
        I(2) =>  FAB2RAM_A0_I2,
        I(1) =>  FAB2RAM_A0_I1,
        I(0) =>  FAB2RAM_A0_I0,
        O(3) => FAB2RAM_A0_O3,
        O(2) =>  FAB2RAM_A0_O2,
        O(1) =>  FAB2RAM_A0_O1,
        O(0) =>  FAB2RAM_A0_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(36-1 downto 32)
    );

Inst_FAB2RAM_A1_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_A1_I3,
        I(2) =>  FAB2RAM_A1_I2,
        I(1) =>  FAB2RAM_A1_I1,
        I(0) =>  FAB2RAM_A1_I0,
        O(3) => FAB2RAM_A1_O3,
        O(2) =>  FAB2RAM_A1_O2,
        O(1) =>  FAB2RAM_A1_O1,
        O(0) =>  FAB2RAM_A1_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(40-1 downto 36)
    );

Inst_FAB2RAM_C_OutPass4_frame_config_mux : OutPass4_frame_config_mux
    Port map(
        I(3) => FAB2RAM_C_I3,
        I(2) =>  FAB2RAM_C_I2,
        I(1) =>  FAB2RAM_C_I1,
        I(0) =>  FAB2RAM_C_I0,
        O(3) => FAB2RAM_C_O3,
        O(2) =>  FAB2RAM_C_O2,
        O(1) =>  FAB2RAM_C_O1,
        O(0) =>  FAB2RAM_C_O0,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(44-1 downto 40)
    );

Inst_Config_accessConfig_access : Config_access
    Port map(
        C(3) => Config_accessC3,
        C(2) =>  Config_accessC2,
        C(1) =>  Config_accessC1,
        C(0) =>  Config_accessC0,
        ConfigBits => ConfigBits(48-1 downto 44)
    );

Inst_RAM_IO_switch_matrix : RAM_IO_switch_matrix
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
        E1END0 => E1END(0),
        E1END1 => E1END(1),
        E1END2 => E1END(2),
        E1END3 => E1END(3),
        E2MID0 => E2MID(0),
        E2MID1 => E2MID(1),
        E2MID2 => E2MID(2),
        E2MID3 => E2MID(3),
        E2MID4 => E2MID(4),
        E2MID5 => E2MID(5),
        E2MID6 => E2MID(6),
        E2MID7 => E2MID(7),
        E2END0 => E2END(0),
        E2END1 => E2END(1),
        E2END2 => E2END(2),
        E2END3 => E2END(3),
        E2END4 => E2END(4),
        E2END5 => E2END(5),
        E2END6 => E2END(6),
        E2END7 => E2END(7),
        EE4END0 => EE4END(0),
        EE4END1 => EE4END(1),
        EE4END2 => EE4END(2),
        EE4END3 => EE4END(3),
        EE4END4 => EE4END(4),
        EE4END5 => EE4END(5),
        EE4END6 => EE4END(6),
        EE4END7 => EE4END(7),
        EE4END8 => EE4END(8),
        EE4END9 => EE4END(9),
        EE4END10 => EE4END(10),
        EE4END11 => EE4END(11),
        EE4END12 => EE4END(12),
        EE4END13 => EE4END(13),
        EE4END14 => EE4END(14),
        EE4END15 => EE4END(15),
        E6END0 => E6END(0),
        E6END1 => E6END(1),
        E6END2 => E6END(2),
        E6END3 => E6END(3),
        E6END4 => E6END(4),
        E6END5 => E6END(5),
        E6END6 => E6END(6),
        E6END7 => E6END(7),
        E6END8 => E6END(8),
        E6END9 => E6END(9),
        E6END10 => E6END(10),
        E6END11 => E6END(11),
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
        RAM2FAB_D0_O0 => RAM2FAB_D0_O0,
        RAM2FAB_D0_O1 => RAM2FAB_D0_O1,
        RAM2FAB_D0_O2 => RAM2FAB_D0_O2,
        RAM2FAB_D0_O3 => RAM2FAB_D0_O3,
        RAM2FAB_D1_O0 => RAM2FAB_D1_O0,
        RAM2FAB_D1_O1 => RAM2FAB_D1_O1,
        RAM2FAB_D1_O2 => RAM2FAB_D1_O2,
        RAM2FAB_D1_O3 => RAM2FAB_D1_O3,
        RAM2FAB_D2_O0 => RAM2FAB_D2_O0,
        RAM2FAB_D2_O1 => RAM2FAB_D2_O1,
        RAM2FAB_D2_O2 => RAM2FAB_D2_O2,
        RAM2FAB_D2_O3 => RAM2FAB_D2_O3,
        RAM2FAB_D3_O0 => RAM2FAB_D3_O0,
        RAM2FAB_D3_O1 => RAM2FAB_D3_O1,
        RAM2FAB_D3_O2 => RAM2FAB_D3_O2,
        RAM2FAB_D3_O3 => RAM2FAB_D3_O3,
        J_NS4_END0 => J_NS4_BEG(0),
        J_NS4_END1 => J_NS4_BEG(1),
        J_NS4_END2 => J_NS4_BEG(2),
        J_NS4_END3 => J_NS4_BEG(3),
        J_NS4_END4 => J_NS4_BEG(4),
        J_NS4_END5 => J_NS4_BEG(5),
        J_NS4_END6 => J_NS4_BEG(6),
        J_NS4_END7 => J_NS4_BEG(7),
        J_NS4_END8 => J_NS4_BEG(8),
        J_NS4_END9 => J_NS4_BEG(9),
        J_NS4_END10 => J_NS4_BEG(10),
        J_NS4_END11 => J_NS4_BEG(11),
        J_NS4_END12 => J_NS4_BEG(12),
        J_NS4_END13 => J_NS4_BEG(13),
        J_NS4_END14 => J_NS4_BEG(14),
        J_NS4_END15 => J_NS4_BEG(15),
        J_NS2_END0 => J_NS2_BEG(0),
        J_NS2_END1 => J_NS2_BEG(1),
        J_NS2_END2 => J_NS2_BEG(2),
        J_NS2_END3 => J_NS2_BEG(3),
        J_NS2_END4 => J_NS2_BEG(4),
        J_NS2_END5 => J_NS2_BEG(5),
        J_NS2_END6 => J_NS2_BEG(6),
        J_NS2_END7 => J_NS2_BEG(7),
        J_NS1_END0 => J_NS1_BEG(0),
        J_NS1_END1 => J_NS1_BEG(1),
        J_NS1_END2 => J_NS1_BEG(2),
        J_NS1_END3 => J_NS1_BEG(3),
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
        N4BEG0 => N4BEG(12),
        N4BEG1 => N4BEG(13),
        N4BEG2 => N4BEG(14),
        N4BEG3 => N4BEG(15),
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
        S4BEG0 => S4BEG(12),
        S4BEG1 => S4BEG(13),
        S4BEG2 => S4BEG(14),
        S4BEG3 => S4BEG(15),
        W1BEG0 => W1BEG(0),
        W1BEG1 => W1BEG(1),
        W1BEG2 => W1BEG(2),
        W1BEG3 => W1BEG(3),
        W2BEG0 => W2BEG(0),
        W2BEG1 => W2BEG(1),
        W2BEG2 => W2BEG(2),
        W2BEG3 => W2BEG(3),
        W2BEG4 => W2BEG(4),
        W2BEG5 => W2BEG(5),
        W2BEG6 => W2BEG(6),
        W2BEG7 => W2BEG(7),
        W2BEGb0 => W2BEGb(0),
        W2BEGb1 => W2BEGb(1),
        W2BEGb2 => W2BEGb(2),
        W2BEGb3 => W2BEGb(3),
        W2BEGb4 => W2BEGb(4),
        W2BEGb5 => W2BEGb(5),
        W2BEGb6 => W2BEGb(6),
        W2BEGb7 => W2BEGb(7),
        WW4BEG0 => WW4BEG(0),
        WW4BEG1 => WW4BEG(1),
        WW4BEG2 => WW4BEG(2),
        WW4BEG3 => WW4BEG(3),
        WW4BEG4 => WW4BEG(4),
        WW4BEG5 => WW4BEG(5),
        WW4BEG6 => WW4BEG(6),
        WW4BEG7 => WW4BEG(7),
        WW4BEG8 => WW4BEG(8),
        WW4BEG9 => WW4BEG(9),
        WW4BEG10 => WW4BEG(10),
        WW4BEG11 => WW4BEG(11),
        WW4BEG12 => WW4BEG(12),
        WW4BEG13 => WW4BEG(13),
        WW4BEG14 => WW4BEG(14),
        WW4BEG15 => WW4BEG(15),
        W6BEG0 => W6BEG(0),
        W6BEG1 => W6BEG(1),
        W6BEG2 => W6BEG(2),
        W6BEG3 => W6BEG(3),
        W6BEG4 => W6BEG(4),
        W6BEG5 => W6BEG(5),
        W6BEG6 => W6BEG(6),
        W6BEG7 => W6BEG(7),
        W6BEG8 => W6BEG(8),
        W6BEG9 => W6BEG(9),
        W6BEG10 => W6BEG(10),
        W6BEG11 => W6BEG(11),
        FAB2RAM_D0_I0 => FAB2RAM_D0_I0,
        FAB2RAM_D0_I1 => FAB2RAM_D0_I1,
        FAB2RAM_D0_I2 => FAB2RAM_D0_I2,
        FAB2RAM_D0_I3 => FAB2RAM_D0_I3,
        FAB2RAM_D1_I0 => FAB2RAM_D1_I0,
        FAB2RAM_D1_I1 => FAB2RAM_D1_I1,
        FAB2RAM_D1_I2 => FAB2RAM_D1_I2,
        FAB2RAM_D1_I3 => FAB2RAM_D1_I3,
        FAB2RAM_D2_I0 => FAB2RAM_D2_I0,
        FAB2RAM_D2_I1 => FAB2RAM_D2_I1,
        FAB2RAM_D2_I2 => FAB2RAM_D2_I2,
        FAB2RAM_D2_I3 => FAB2RAM_D2_I3,
        FAB2RAM_D3_I0 => FAB2RAM_D3_I0,
        FAB2RAM_D3_I1 => FAB2RAM_D3_I1,
        FAB2RAM_D3_I2 => FAB2RAM_D3_I2,
        FAB2RAM_D3_I3 => FAB2RAM_D3_I3,
        FAB2RAM_A0_I0 => FAB2RAM_A0_I0,
        FAB2RAM_A0_I1 => FAB2RAM_A0_I1,
        FAB2RAM_A0_I2 => FAB2RAM_A0_I2,
        FAB2RAM_A0_I3 => FAB2RAM_A0_I3,
        FAB2RAM_A1_I0 => FAB2RAM_A1_I0,
        FAB2RAM_A1_I1 => FAB2RAM_A1_I1,
        FAB2RAM_A1_I2 => FAB2RAM_A1_I2,
        FAB2RAM_A1_I3 => FAB2RAM_A1_I3,
        FAB2RAM_C_I0 => FAB2RAM_C_I0,
        FAB2RAM_C_I1 => FAB2RAM_C_I1,
        FAB2RAM_C_I2 => FAB2RAM_C_I2,
        FAB2RAM_C_I3 => FAB2RAM_C_I3,
        J_NS4_BEG0 => J_NS4_BEG(0),
        J_NS4_BEG1 => J_NS4_BEG(1),
        J_NS4_BEG2 => J_NS4_BEG(2),
        J_NS4_BEG3 => J_NS4_BEG(3),
        J_NS4_BEG4 => J_NS4_BEG(4),
        J_NS4_BEG5 => J_NS4_BEG(5),
        J_NS4_BEG6 => J_NS4_BEG(6),
        J_NS4_BEG7 => J_NS4_BEG(7),
        J_NS4_BEG8 => J_NS4_BEG(8),
        J_NS4_BEG9 => J_NS4_BEG(9),
        J_NS4_BEG10 => J_NS4_BEG(10),
        J_NS4_BEG11 => J_NS4_BEG(11),
        J_NS4_BEG12 => J_NS4_BEG(12),
        J_NS4_BEG13 => J_NS4_BEG(13),
        J_NS4_BEG14 => J_NS4_BEG(14),
        J_NS4_BEG15 => J_NS4_BEG(15),
        J_NS2_BEG0 => J_NS2_BEG(0),
        J_NS2_BEG1 => J_NS2_BEG(1),
        J_NS2_BEG2 => J_NS2_BEG(2),
        J_NS2_BEG3 => J_NS2_BEG(3),
        J_NS2_BEG4 => J_NS2_BEG(4),
        J_NS2_BEG5 => J_NS2_BEG(5),
        J_NS2_BEG6 => J_NS2_BEG(6),
        J_NS2_BEG7 => J_NS2_BEG(7),
        J_NS1_BEG0 => J_NS1_BEG(0),
        J_NS1_BEG1 => J_NS1_BEG(1),
        J_NS1_BEG2 => J_NS1_BEG(2),
        J_NS1_BEG3 => J_NS1_BEG(3),
        ConfigBits => ConfigBits(328-1 downto 48),
        ConfigBits_N => ConfigBits_N(328-1 downto 48)
    );

end architecture Behavioral;