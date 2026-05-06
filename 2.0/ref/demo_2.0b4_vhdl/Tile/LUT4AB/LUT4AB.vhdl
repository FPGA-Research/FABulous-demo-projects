library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity LUT4AB is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 616
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
        Co         : out STD_LOGIC_VECTOR( 0 downto 0 );        -- Port(Name=Co,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=1,Side=N)
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
        NN4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=NN4END,IO=INPUT,XOffset=0,YOffset=-4,WireCount=4,Side=S)
        S1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- Port(Name=S1BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=4,Side=S)
        S2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        S2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- Port(Name=S2BEGb,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        S4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=S4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
        SS4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- Port(Name=SS4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
        Ci         : in STD_LOGIC_VECTOR( 0 downto 0 );        -- Port(Name=Ci,IO=INPUT,XOffset=0,YOffset=-1,WireCount=1,Side=S)
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end entity LUT4AB;
architecture Behavioral of LUT4AB is
component LUT4c_frame_config_dffesr is
  generic (NoConfigBits : integer := 19); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (-- IMPORTANT: this has to be in a dedicated line
    I  : in std_logic_vector(3 downto 0); -- LUT inputs
    O  : out std_logic; -- LUT output (combinatorial or FF)
    Ci : in std_logic; -- carry chain input
    Co : out std_logic; -- carry chain output
    SR : in std_logic; -- (* FABulous, SHARED_RESET *)
    EN : in std_logic; -- (* FABulous, SHARED_ENABLE *)
    -- ## the EXTERNAL keyword will send this sisgnal all the way to top and the --SHARED Allows multiple BELs using the same port (e.g. for exporting a clock to the top)
    UserCLK : in std_logic; -- (* FABulous, EXTERNAL, SHARED_PORT *)
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    ConfigBits : in std_logic_vector(NoConfigBits - 1 downto 0)
  );

end component LUT4c_frame_config_dffesr;

component MUX8LUT_frame_config_mux is
  generic (NoConfigBits : integer := 2); -- has to be adjusted manually (we don't use an arithmetic parser for the value)
  port (-- IMPORTANT: this has to be in a dedicated line
    A    : in std_logic; -- MUX inputs
    B    : in std_logic;
    C    : in std_logic;
    D    : in std_logic;
    E    : in std_logic;
    F    : in std_logic;
    G    : in std_logic;
    H    : in std_logic;
    S    : in std_logic_vector(3 downto 0); -- MUX select lines
    M_AB : out std_logic;
    M_AD : out std_logic;
    M_AH : out std_logic;
    M_EF : out std_logic;
    -- GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
    ConfigBits : in std_logic_vector(NoConfigBits - 1 downto 0) -- (* FABulous, GLOBAL *)

  );
end component MUX8LUT_frame_config_mux;

component LUT4AB_switch_matrix is
    Generic(
        NoConfigBits : integer := 462
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
        NN4END0    : in STD_LOGIC;
        NN4END1    : in STD_LOGIC;
        NN4END2    : in STD_LOGIC;
        NN4END3    : in STD_LOGIC;
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
        E6END0     : in STD_LOGIC;
        E6END1     : in STD_LOGIC;
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
        SS4END0    : in STD_LOGIC;
        SS4END1    : in STD_LOGIC;
        SS4END2    : in STD_LOGIC;
        SS4END3    : in STD_LOGIC;
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
        W6END0     : in STD_LOGIC;
        W6END1     : in STD_LOGIC;
        Ci0        : in STD_LOGIC;
        LA_O       : in STD_LOGIC;
        LA_Co      : in STD_LOGIC;
        LB_O       : in STD_LOGIC;
        LB_Co      : in STD_LOGIC;
        LC_O       : in STD_LOGIC;
        LC_Co      : in STD_LOGIC;
        LD_O       : in STD_LOGIC;
        LD_Co      : in STD_LOGIC;
        LE_O       : in STD_LOGIC;
        LE_Co      : in STD_LOGIC;
        LF_O       : in STD_LOGIC;
        LF_Co      : in STD_LOGIC;
        LG_O       : in STD_LOGIC;
        LG_Co      : in STD_LOGIC;
        LH_O       : in STD_LOGIC;
        LH_Co      : in STD_LOGIC;
        M_AB       : in STD_LOGIC;
        M_AD       : in STD_LOGIC;
        M_AH       : in STD_LOGIC;
        M_EF       : in STD_LOGIC;
        J2MID_ABa_END0 : in STD_LOGIC;
        J2MID_ABa_END1 : in STD_LOGIC;
        J2MID_ABa_END2 : in STD_LOGIC;
        J2MID_ABa_END3 : in STD_LOGIC;
        J2MID_CDa_END0 : in STD_LOGIC;
        J2MID_CDa_END1 : in STD_LOGIC;
        J2MID_CDa_END2 : in STD_LOGIC;
        J2MID_CDa_END3 : in STD_LOGIC;
        J2MID_EFa_END0 : in STD_LOGIC;
        J2MID_EFa_END1 : in STD_LOGIC;
        J2MID_EFa_END2 : in STD_LOGIC;
        J2MID_EFa_END3 : in STD_LOGIC;
        J2MID_GHa_END0 : in STD_LOGIC;
        J2MID_GHa_END1 : in STD_LOGIC;
        J2MID_GHa_END2 : in STD_LOGIC;
        J2MID_GHa_END3 : in STD_LOGIC;
        J2MID_ABb_END0 : in STD_LOGIC;
        J2MID_ABb_END1 : in STD_LOGIC;
        J2MID_ABb_END2 : in STD_LOGIC;
        J2MID_ABb_END3 : in STD_LOGIC;
        J2MID_CDb_END0 : in STD_LOGIC;
        J2MID_CDb_END1 : in STD_LOGIC;
        J2MID_CDb_END2 : in STD_LOGIC;
        J2MID_CDb_END3 : in STD_LOGIC;
        J2MID_EFb_END0 : in STD_LOGIC;
        J2MID_EFb_END1 : in STD_LOGIC;
        J2MID_EFb_END2 : in STD_LOGIC;
        J2MID_EFb_END3 : in STD_LOGIC;
        J2MID_GHb_END0 : in STD_LOGIC;
        J2MID_GHb_END1 : in STD_LOGIC;
        J2MID_GHb_END2 : in STD_LOGIC;
        J2MID_GHb_END3 : in STD_LOGIC;
        J2END_AB_END0 : in STD_LOGIC;
        J2END_AB_END1 : in STD_LOGIC;
        J2END_AB_END2 : in STD_LOGIC;
        J2END_AB_END3 : in STD_LOGIC;
        J2END_CD_END0 : in STD_LOGIC;
        J2END_CD_END1 : in STD_LOGIC;
        J2END_CD_END2 : in STD_LOGIC;
        J2END_CD_END3 : in STD_LOGIC;
        J2END_EF_END0 : in STD_LOGIC;
        J2END_EF_END1 : in STD_LOGIC;
        J2END_EF_END2 : in STD_LOGIC;
        J2END_EF_END3 : in STD_LOGIC;
        J2END_GH_END0 : in STD_LOGIC;
        J2END_GH_END1 : in STD_LOGIC;
        J2END_GH_END2 : in STD_LOGIC;
        J2END_GH_END3 : in STD_LOGIC;
        JN2END0    : in STD_LOGIC;
        JN2END1    : in STD_LOGIC;
        JN2END2    : in STD_LOGIC;
        JN2END3    : in STD_LOGIC;
        JN2END4    : in STD_LOGIC;
        JN2END5    : in STD_LOGIC;
        JN2END6    : in STD_LOGIC;
        JN2END7    : in STD_LOGIC;
        JE2END0    : in STD_LOGIC;
        JE2END1    : in STD_LOGIC;
        JE2END2    : in STD_LOGIC;
        JE2END3    : in STD_LOGIC;
        JE2END4    : in STD_LOGIC;
        JE2END5    : in STD_LOGIC;
        JE2END6    : in STD_LOGIC;
        JE2END7    : in STD_LOGIC;
        JS2END0    : in STD_LOGIC;
        JS2END1    : in STD_LOGIC;
        JS2END2    : in STD_LOGIC;
        JS2END3    : in STD_LOGIC;
        JS2END4    : in STD_LOGIC;
        JS2END5    : in STD_LOGIC;
        JS2END6    : in STD_LOGIC;
        JS2END7    : in STD_LOGIC;
        JW2END0    : in STD_LOGIC;
        JW2END1    : in STD_LOGIC;
        JW2END2    : in STD_LOGIC;
        JW2END3    : in STD_LOGIC;
        JW2END4    : in STD_LOGIC;
        JW2END5    : in STD_LOGIC;
        JW2END6    : in STD_LOGIC;
        JW2END7    : in STD_LOGIC;
        J_l_AB_END0 : in STD_LOGIC;
        J_l_AB_END1 : in STD_LOGIC;
        J_l_AB_END2 : in STD_LOGIC;
        J_l_AB_END3 : in STD_LOGIC;
        J_l_CD_END0 : in STD_LOGIC;
        J_l_CD_END1 : in STD_LOGIC;
        J_l_CD_END2 : in STD_LOGIC;
        J_l_CD_END3 : in STD_LOGIC;
        J_l_EF_END0 : in STD_LOGIC;
        J_l_EF_END1 : in STD_LOGIC;
        J_l_EF_END2 : in STD_LOGIC;
        J_l_EF_END3 : in STD_LOGIC;
        J_l_GH_END0 : in STD_LOGIC;
        J_l_GH_END1 : in STD_LOGIC;
        J_l_GH_END2 : in STD_LOGIC;
        J_l_GH_END3 : in STD_LOGIC;
        J_SR_END0  : in STD_LOGIC;
        J_EN_END0  : in STD_LOGIC;
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
        NN4BEG0    : out STD_LOGIC;
        NN4BEG1    : out STD_LOGIC;
        NN4BEG2    : out STD_LOGIC;
        NN4BEG3    : out STD_LOGIC;
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
        E6BEG0     : out STD_LOGIC;
        E6BEG1     : out STD_LOGIC;
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
        SS4BEG0    : out STD_LOGIC;
        SS4BEG1    : out STD_LOGIC;
        SS4BEG2    : out STD_LOGIC;
        SS4BEG3    : out STD_LOGIC;
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
        W6BEG0     : out STD_LOGIC;
        W6BEG1     : out STD_LOGIC;
        Co0        : out STD_LOGIC;
        LA_I0      : out STD_LOGIC;
        LA_I1      : out STD_LOGIC;
        LA_I2      : out STD_LOGIC;
        LA_I3      : out STD_LOGIC;
        LA_Ci      : out STD_LOGIC;
        LA_SR      : out STD_LOGIC;
        LA_EN      : out STD_LOGIC;
        LB_I0      : out STD_LOGIC;
        LB_I1      : out STD_LOGIC;
        LB_I2      : out STD_LOGIC;
        LB_I3      : out STD_LOGIC;
        LB_Ci      : out STD_LOGIC;
        LB_SR      : out STD_LOGIC;
        LB_EN      : out STD_LOGIC;
        LC_I0      : out STD_LOGIC;
        LC_I1      : out STD_LOGIC;
        LC_I2      : out STD_LOGIC;
        LC_I3      : out STD_LOGIC;
        LC_Ci      : out STD_LOGIC;
        LC_SR      : out STD_LOGIC;
        LC_EN      : out STD_LOGIC;
        LD_I0      : out STD_LOGIC;
        LD_I1      : out STD_LOGIC;
        LD_I2      : out STD_LOGIC;
        LD_I3      : out STD_LOGIC;
        LD_Ci      : out STD_LOGIC;
        LD_SR      : out STD_LOGIC;
        LD_EN      : out STD_LOGIC;
        LE_I0      : out STD_LOGIC;
        LE_I1      : out STD_LOGIC;
        LE_I2      : out STD_LOGIC;
        LE_I3      : out STD_LOGIC;
        LE_Ci      : out STD_LOGIC;
        LE_SR      : out STD_LOGIC;
        LE_EN      : out STD_LOGIC;
        LF_I0      : out STD_LOGIC;
        LF_I1      : out STD_LOGIC;
        LF_I2      : out STD_LOGIC;
        LF_I3      : out STD_LOGIC;
        LF_Ci      : out STD_LOGIC;
        LF_SR      : out STD_LOGIC;
        LF_EN      : out STD_LOGIC;
        LG_I0      : out STD_LOGIC;
        LG_I1      : out STD_LOGIC;
        LG_I2      : out STD_LOGIC;
        LG_I3      : out STD_LOGIC;
        LG_Ci      : out STD_LOGIC;
        LG_SR      : out STD_LOGIC;
        LG_EN      : out STD_LOGIC;
        LH_I0      : out STD_LOGIC;
        LH_I1      : out STD_LOGIC;
        LH_I2      : out STD_LOGIC;
        LH_I3      : out STD_LOGIC;
        LH_Ci      : out STD_LOGIC;
        LH_SR      : out STD_LOGIC;
        LH_EN      : out STD_LOGIC;
        A          : out STD_LOGIC;
        B          : out STD_LOGIC;
        C          : out STD_LOGIC;
        D          : out STD_LOGIC;
        E          : out STD_LOGIC;
        F          : out STD_LOGIC;
        G          : out STD_LOGIC;
        H          : out STD_LOGIC;
        S0         : out STD_LOGIC;
        S1         : out STD_LOGIC;
        S2         : out STD_LOGIC;
        S3         : out STD_LOGIC;
        J2MID_ABa_BEG0 : out STD_LOGIC;
        J2MID_ABa_BEG1 : out STD_LOGIC;
        J2MID_ABa_BEG2 : out STD_LOGIC;
        J2MID_ABa_BEG3 : out STD_LOGIC;
        J2MID_CDa_BEG0 : out STD_LOGIC;
        J2MID_CDa_BEG1 : out STD_LOGIC;
        J2MID_CDa_BEG2 : out STD_LOGIC;
        J2MID_CDa_BEG3 : out STD_LOGIC;
        J2MID_EFa_BEG0 : out STD_LOGIC;
        J2MID_EFa_BEG1 : out STD_LOGIC;
        J2MID_EFa_BEG2 : out STD_LOGIC;
        J2MID_EFa_BEG3 : out STD_LOGIC;
        J2MID_GHa_BEG0 : out STD_LOGIC;
        J2MID_GHa_BEG1 : out STD_LOGIC;
        J2MID_GHa_BEG2 : out STD_LOGIC;
        J2MID_GHa_BEG3 : out STD_LOGIC;
        J2MID_ABb_BEG0 : out STD_LOGIC;
        J2MID_ABb_BEG1 : out STD_LOGIC;
        J2MID_ABb_BEG2 : out STD_LOGIC;
        J2MID_ABb_BEG3 : out STD_LOGIC;
        J2MID_CDb_BEG0 : out STD_LOGIC;
        J2MID_CDb_BEG1 : out STD_LOGIC;
        J2MID_CDb_BEG2 : out STD_LOGIC;
        J2MID_CDb_BEG3 : out STD_LOGIC;
        J2MID_EFb_BEG0 : out STD_LOGIC;
        J2MID_EFb_BEG1 : out STD_LOGIC;
        J2MID_EFb_BEG2 : out STD_LOGIC;
        J2MID_EFb_BEG3 : out STD_LOGIC;
        J2MID_GHb_BEG0 : out STD_LOGIC;
        J2MID_GHb_BEG1 : out STD_LOGIC;
        J2MID_GHb_BEG2 : out STD_LOGIC;
        J2MID_GHb_BEG3 : out STD_LOGIC;
        J2END_AB_BEG0 : out STD_LOGIC;
        J2END_AB_BEG1 : out STD_LOGIC;
        J2END_AB_BEG2 : out STD_LOGIC;
        J2END_AB_BEG3 : out STD_LOGIC;
        J2END_CD_BEG0 : out STD_LOGIC;
        J2END_CD_BEG1 : out STD_LOGIC;
        J2END_CD_BEG2 : out STD_LOGIC;
        J2END_CD_BEG3 : out STD_LOGIC;
        J2END_EF_BEG0 : out STD_LOGIC;
        J2END_EF_BEG1 : out STD_LOGIC;
        J2END_EF_BEG2 : out STD_LOGIC;
        J2END_EF_BEG3 : out STD_LOGIC;
        J2END_GH_BEG0 : out STD_LOGIC;
        J2END_GH_BEG1 : out STD_LOGIC;
        J2END_GH_BEG2 : out STD_LOGIC;
        J2END_GH_BEG3 : out STD_LOGIC;
        JN2BEG0    : out STD_LOGIC;
        JN2BEG1    : out STD_LOGIC;
        JN2BEG2    : out STD_LOGIC;
        JN2BEG3    : out STD_LOGIC;
        JN2BEG4    : out STD_LOGIC;
        JN2BEG5    : out STD_LOGIC;
        JN2BEG6    : out STD_LOGIC;
        JN2BEG7    : out STD_LOGIC;
        JE2BEG0    : out STD_LOGIC;
        JE2BEG1    : out STD_LOGIC;
        JE2BEG2    : out STD_LOGIC;
        JE2BEG3    : out STD_LOGIC;
        JE2BEG4    : out STD_LOGIC;
        JE2BEG5    : out STD_LOGIC;
        JE2BEG6    : out STD_LOGIC;
        JE2BEG7    : out STD_LOGIC;
        JS2BEG0    : out STD_LOGIC;
        JS2BEG1    : out STD_LOGIC;
        JS2BEG2    : out STD_LOGIC;
        JS2BEG3    : out STD_LOGIC;
        JS2BEG4    : out STD_LOGIC;
        JS2BEG5    : out STD_LOGIC;
        JS2BEG6    : out STD_LOGIC;
        JS2BEG7    : out STD_LOGIC;
        JW2BEG0    : out STD_LOGIC;
        JW2BEG1    : out STD_LOGIC;
        JW2BEG2    : out STD_LOGIC;
        JW2BEG3    : out STD_LOGIC;
        JW2BEG4    : out STD_LOGIC;
        JW2BEG5    : out STD_LOGIC;
        JW2BEG6    : out STD_LOGIC;
        JW2BEG7    : out STD_LOGIC;
        J_l_AB_BEG0 : out STD_LOGIC;
        J_l_AB_BEG1 : out STD_LOGIC;
        J_l_AB_BEG2 : out STD_LOGIC;
        J_l_AB_BEG3 : out STD_LOGIC;
        J_l_CD_BEG0 : out STD_LOGIC;
        J_l_CD_BEG1 : out STD_LOGIC;
        J_l_CD_BEG2 : out STD_LOGIC;
        J_l_CD_BEG3 : out STD_LOGIC;
        J_l_EF_BEG0 : out STD_LOGIC;
        J_l_EF_BEG1 : out STD_LOGIC;
        J_l_EF_BEG2 : out STD_LOGIC;
        J_l_EF_BEG3 : out STD_LOGIC;
        J_l_GH_BEG0 : out STD_LOGIC;
        J_l_GH_BEG1 : out STD_LOGIC;
        J_l_GH_BEG2 : out STD_LOGIC;
        J_l_GH_BEG3 : out STD_LOGIC;
        J_SR_BEG0  : out STD_LOGIC;
        J_EN_BEG0  : out STD_LOGIC;
 -- global
        ConfigBits : in STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 );
        ConfigBits_N : in STD_LOGIC_VECTOR( NoConfigBits-1 downto 0 )
);
end component LUT4AB_switch_matrix;

component LUT4AB_ConfigMem is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 616
    );
    Port (
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow - 1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol - 1 downto 0 );
        ConfigBits : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 );
        ConfigBits_N : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 )
    );
end component LUT4AB_ConfigMem;

 -- signal declarations
 -- BEL ports (e.g., slices)
signal LA_I0 : STD_LOGIC;
signal LA_I1 : STD_LOGIC;
signal LA_I2 : STD_LOGIC;
signal LA_I3 : STD_LOGIC;
signal LA_Ci : STD_LOGIC;
signal LA_SR : STD_LOGIC;
signal LA_EN : STD_LOGIC;
signal LA_O : STD_LOGIC;
signal LA_Co : STD_LOGIC;
signal LB_I0 : STD_LOGIC;
signal LB_I1 : STD_LOGIC;
signal LB_I2 : STD_LOGIC;
signal LB_I3 : STD_LOGIC;
signal LB_Ci : STD_LOGIC;
signal LB_SR : STD_LOGIC;
signal LB_EN : STD_LOGIC;
signal LB_O : STD_LOGIC;
signal LB_Co : STD_LOGIC;
signal LC_I0 : STD_LOGIC;
signal LC_I1 : STD_LOGIC;
signal LC_I2 : STD_LOGIC;
signal LC_I3 : STD_LOGIC;
signal LC_Ci : STD_LOGIC;
signal LC_SR : STD_LOGIC;
signal LC_EN : STD_LOGIC;
signal LC_O : STD_LOGIC;
signal LC_Co : STD_LOGIC;
signal LD_I0 : STD_LOGIC;
signal LD_I1 : STD_LOGIC;
signal LD_I2 : STD_LOGIC;
signal LD_I3 : STD_LOGIC;
signal LD_Ci : STD_LOGIC;
signal LD_SR : STD_LOGIC;
signal LD_EN : STD_LOGIC;
signal LD_O : STD_LOGIC;
signal LD_Co : STD_LOGIC;
signal LE_I0 : STD_LOGIC;
signal LE_I1 : STD_LOGIC;
signal LE_I2 : STD_LOGIC;
signal LE_I3 : STD_LOGIC;
signal LE_Ci : STD_LOGIC;
signal LE_SR : STD_LOGIC;
signal LE_EN : STD_LOGIC;
signal LE_O : STD_LOGIC;
signal LE_Co : STD_LOGIC;
signal LF_I0 : STD_LOGIC;
signal LF_I1 : STD_LOGIC;
signal LF_I2 : STD_LOGIC;
signal LF_I3 : STD_LOGIC;
signal LF_Ci : STD_LOGIC;
signal LF_SR : STD_LOGIC;
signal LF_EN : STD_LOGIC;
signal LF_O : STD_LOGIC;
signal LF_Co : STD_LOGIC;
signal LG_I0 : STD_LOGIC;
signal LG_I1 : STD_LOGIC;
signal LG_I2 : STD_LOGIC;
signal LG_I3 : STD_LOGIC;
signal LG_Ci : STD_LOGIC;
signal LG_SR : STD_LOGIC;
signal LG_EN : STD_LOGIC;
signal LG_O : STD_LOGIC;
signal LG_Co : STD_LOGIC;
signal LH_I0 : STD_LOGIC;
signal LH_I1 : STD_LOGIC;
signal LH_I2 : STD_LOGIC;
signal LH_I3 : STD_LOGIC;
signal LH_Ci : STD_LOGIC;
signal LH_SR : STD_LOGIC;
signal LH_EN : STD_LOGIC;
signal LH_O : STD_LOGIC;
signal LH_Co : STD_LOGIC;
signal A : STD_LOGIC;
signal B : STD_LOGIC;
signal C : STD_LOGIC;
signal D : STD_LOGIC;
signal E : STD_LOGIC;
signal F : STD_LOGIC;
signal G : STD_LOGIC;
signal H : STD_LOGIC;
signal S0 : STD_LOGIC;
signal S1 : STD_LOGIC;
signal S2 : STD_LOGIC;
signal S3 : STD_LOGIC;
signal M_AB : STD_LOGIC;
signal M_AD : STD_LOGIC;
signal M_AH : STD_LOGIC;
signal M_EF : STD_LOGIC;
 -- Jump wires
signal J2MID_ABa_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_CDa_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_EFa_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_GHa_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_ABb_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_CDb_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_EFb_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2MID_GHb_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2END_AB_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2END_CD_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2END_EF_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J2END_GH_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal JN2BEG : STD_LOGIC_VECTOR( 8-1 downto 0 );
signal JE2BEG : STD_LOGIC_VECTOR( 8-1 downto 0 );
signal JS2BEG : STD_LOGIC_VECTOR( 8-1 downto 0 );
signal JW2BEG : STD_LOGIC_VECTOR( 8-1 downto 0 );
signal J_l_AB_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J_l_CD_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J_l_EF_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J_l_GH_BEG : STD_LOGIC_VECTOR( 4-1 downto 0 );
signal J_SR_BEG : STD_LOGIC_VECTOR( 1-1 downto 0 );
signal J_EN_BEG : STD_LOGIC_VECTOR( 1-1 downto 0 );
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
signal NN4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal NN4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal EE4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal EE4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal E6END_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal E6BEG_i : STD_LOGIC_VECTOR( 9 downto 0 );
signal S4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal S4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal SS4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal SS4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal WW4END_i : STD_LOGIC_VECTOR( 15 downto 0 );
signal WW4BEG_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal W6END_i : STD_LOGIC_VECTOR( 11 downto 0 );
signal W6BEG_i : STD_LOGIC_VECTOR( 9 downto 0 );


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

NN4BEG_i(15-4 downto 0) <= NN4END_i(15 downto 4) after 0 ps;

NN4END_inbuf_0 : my_buf
    Port map(
        A => NN4END(4),
        X => NN4END_i(4)
    );

NN4END_inbuf_1 : my_buf
    Port map(
        A => NN4END(5),
        X => NN4END_i(5)
    );

NN4END_inbuf_2 : my_buf
    Port map(
        A => NN4END(6),
        X => NN4END_i(6)
    );

NN4END_inbuf_3 : my_buf
    Port map(
        A => NN4END(7),
        X => NN4END_i(7)
    );

NN4END_inbuf_4 : my_buf
    Port map(
        A => NN4END(8),
        X => NN4END_i(8)
    );

NN4END_inbuf_5 : my_buf
    Port map(
        A => NN4END(9),
        X => NN4END_i(9)
    );

NN4END_inbuf_6 : my_buf
    Port map(
        A => NN4END(10),
        X => NN4END_i(10)
    );

NN4END_inbuf_7 : my_buf
    Port map(
        A => NN4END(11),
        X => NN4END_i(11)
    );

NN4END_inbuf_8 : my_buf
    Port map(
        A => NN4END(12),
        X => NN4END_i(12)
    );

NN4END_inbuf_9 : my_buf
    Port map(
        A => NN4END(13),
        X => NN4END_i(13)
    );

NN4END_inbuf_10 : my_buf
    Port map(
        A => NN4END(14),
        X => NN4END_i(14)
    );

NN4END_inbuf_11 : my_buf
    Port map(
        A => NN4END(15),
        X => NN4END_i(15)
    );

NN4BEG_outbuf_0 : my_buf
    Port map(
        A => NN4BEG_i(0),
        X => NN4BEG(0)
    );

NN4BEG_outbuf_1 : my_buf
    Port map(
        A => NN4BEG_i(1),
        X => NN4BEG(1)
    );

NN4BEG_outbuf_2 : my_buf
    Port map(
        A => NN4BEG_i(2),
        X => NN4BEG(2)
    );

NN4BEG_outbuf_3 : my_buf
    Port map(
        A => NN4BEG_i(3),
        X => NN4BEG(3)
    );

NN4BEG_outbuf_4 : my_buf
    Port map(
        A => NN4BEG_i(4),
        X => NN4BEG(4)
    );

NN4BEG_outbuf_5 : my_buf
    Port map(
        A => NN4BEG_i(5),
        X => NN4BEG(5)
    );

NN4BEG_outbuf_6 : my_buf
    Port map(
        A => NN4BEG_i(6),
        X => NN4BEG(6)
    );

NN4BEG_outbuf_7 : my_buf
    Port map(
        A => NN4BEG_i(7),
        X => NN4BEG(7)
    );

NN4BEG_outbuf_8 : my_buf
    Port map(
        A => NN4BEG_i(8),
        X => NN4BEG(8)
    );

NN4BEG_outbuf_9 : my_buf
    Port map(
        A => NN4BEG_i(9),
        X => NN4BEG(9)
    );

NN4BEG_outbuf_10 : my_buf
    Port map(
        A => NN4BEG_i(10),
        X => NN4BEG(10)
    );

NN4BEG_outbuf_11 : my_buf
    Port map(
        A => NN4BEG_i(11),
        X => NN4BEG(11)
    );

EE4BEG_i(15-4 downto 0) <= EE4END_i(15 downto 4) after 0 ps;

EE4END_inbuf_0 : my_buf
    Port map(
        A => EE4END(4),
        X => EE4END_i(4)
    );

EE4END_inbuf_1 : my_buf
    Port map(
        A => EE4END(5),
        X => EE4END_i(5)
    );

EE4END_inbuf_2 : my_buf
    Port map(
        A => EE4END(6),
        X => EE4END_i(6)
    );

EE4END_inbuf_3 : my_buf
    Port map(
        A => EE4END(7),
        X => EE4END_i(7)
    );

EE4END_inbuf_4 : my_buf
    Port map(
        A => EE4END(8),
        X => EE4END_i(8)
    );

EE4END_inbuf_5 : my_buf
    Port map(
        A => EE4END(9),
        X => EE4END_i(9)
    );

EE4END_inbuf_6 : my_buf
    Port map(
        A => EE4END(10),
        X => EE4END_i(10)
    );

EE4END_inbuf_7 : my_buf
    Port map(
        A => EE4END(11),
        X => EE4END_i(11)
    );

EE4END_inbuf_8 : my_buf
    Port map(
        A => EE4END(12),
        X => EE4END_i(12)
    );

EE4END_inbuf_9 : my_buf
    Port map(
        A => EE4END(13),
        X => EE4END_i(13)
    );

EE4END_inbuf_10 : my_buf
    Port map(
        A => EE4END(14),
        X => EE4END_i(14)
    );

EE4END_inbuf_11 : my_buf
    Port map(
        A => EE4END(15),
        X => EE4END_i(15)
    );

EE4BEG_outbuf_0 : my_buf
    Port map(
        A => EE4BEG_i(0),
        X => EE4BEG(0)
    );

EE4BEG_outbuf_1 : my_buf
    Port map(
        A => EE4BEG_i(1),
        X => EE4BEG(1)
    );

EE4BEG_outbuf_2 : my_buf
    Port map(
        A => EE4BEG_i(2),
        X => EE4BEG(2)
    );

EE4BEG_outbuf_3 : my_buf
    Port map(
        A => EE4BEG_i(3),
        X => EE4BEG(3)
    );

EE4BEG_outbuf_4 : my_buf
    Port map(
        A => EE4BEG_i(4),
        X => EE4BEG(4)
    );

EE4BEG_outbuf_5 : my_buf
    Port map(
        A => EE4BEG_i(5),
        X => EE4BEG(5)
    );

EE4BEG_outbuf_6 : my_buf
    Port map(
        A => EE4BEG_i(6),
        X => EE4BEG(6)
    );

EE4BEG_outbuf_7 : my_buf
    Port map(
        A => EE4BEG_i(7),
        X => EE4BEG(7)
    );

EE4BEG_outbuf_8 : my_buf
    Port map(
        A => EE4BEG_i(8),
        X => EE4BEG(8)
    );

EE4BEG_outbuf_9 : my_buf
    Port map(
        A => EE4BEG_i(9),
        X => EE4BEG(9)
    );

EE4BEG_outbuf_10 : my_buf
    Port map(
        A => EE4BEG_i(10),
        X => EE4BEG(10)
    );

EE4BEG_outbuf_11 : my_buf
    Port map(
        A => EE4BEG_i(11),
        X => EE4BEG(11)
    );

E6BEG_i(11-2 downto 0) <= E6END_i(11 downto 2) after 0 ps;

E6END_inbuf_0 : my_buf
    Port map(
        A => E6END(2),
        X => E6END_i(2)
    );

E6END_inbuf_1 : my_buf
    Port map(
        A => E6END(3),
        X => E6END_i(3)
    );

E6END_inbuf_2 : my_buf
    Port map(
        A => E6END(4),
        X => E6END_i(4)
    );

E6END_inbuf_3 : my_buf
    Port map(
        A => E6END(5),
        X => E6END_i(5)
    );

E6END_inbuf_4 : my_buf
    Port map(
        A => E6END(6),
        X => E6END_i(6)
    );

E6END_inbuf_5 : my_buf
    Port map(
        A => E6END(7),
        X => E6END_i(7)
    );

E6END_inbuf_6 : my_buf
    Port map(
        A => E6END(8),
        X => E6END_i(8)
    );

E6END_inbuf_7 : my_buf
    Port map(
        A => E6END(9),
        X => E6END_i(9)
    );

E6END_inbuf_8 : my_buf
    Port map(
        A => E6END(10),
        X => E6END_i(10)
    );

E6END_inbuf_9 : my_buf
    Port map(
        A => E6END(11),
        X => E6END_i(11)
    );

E6BEG_outbuf_0 : my_buf
    Port map(
        A => E6BEG_i(0),
        X => E6BEG(0)
    );

E6BEG_outbuf_1 : my_buf
    Port map(
        A => E6BEG_i(1),
        X => E6BEG(1)
    );

E6BEG_outbuf_2 : my_buf
    Port map(
        A => E6BEG_i(2),
        X => E6BEG(2)
    );

E6BEG_outbuf_3 : my_buf
    Port map(
        A => E6BEG_i(3),
        X => E6BEG(3)
    );

E6BEG_outbuf_4 : my_buf
    Port map(
        A => E6BEG_i(4),
        X => E6BEG(4)
    );

E6BEG_outbuf_5 : my_buf
    Port map(
        A => E6BEG_i(5),
        X => E6BEG(5)
    );

E6BEG_outbuf_6 : my_buf
    Port map(
        A => E6BEG_i(6),
        X => E6BEG(6)
    );

E6BEG_outbuf_7 : my_buf
    Port map(
        A => E6BEG_i(7),
        X => E6BEG(7)
    );

E6BEG_outbuf_8 : my_buf
    Port map(
        A => E6BEG_i(8),
        X => E6BEG(8)
    );

E6BEG_outbuf_9 : my_buf
    Port map(
        A => E6BEG_i(9),
        X => E6BEG(9)
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

SS4BEG_i(15-4 downto 0) <= SS4END_i(15 downto 4) after 0 ps;

SS4END_inbuf_0 : my_buf
    Port map(
        A => SS4END(4),
        X => SS4END_i(4)
    );

SS4END_inbuf_1 : my_buf
    Port map(
        A => SS4END(5),
        X => SS4END_i(5)
    );

SS4END_inbuf_2 : my_buf
    Port map(
        A => SS4END(6),
        X => SS4END_i(6)
    );

SS4END_inbuf_3 : my_buf
    Port map(
        A => SS4END(7),
        X => SS4END_i(7)
    );

SS4END_inbuf_4 : my_buf
    Port map(
        A => SS4END(8),
        X => SS4END_i(8)
    );

SS4END_inbuf_5 : my_buf
    Port map(
        A => SS4END(9),
        X => SS4END_i(9)
    );

SS4END_inbuf_6 : my_buf
    Port map(
        A => SS4END(10),
        X => SS4END_i(10)
    );

SS4END_inbuf_7 : my_buf
    Port map(
        A => SS4END(11),
        X => SS4END_i(11)
    );

SS4END_inbuf_8 : my_buf
    Port map(
        A => SS4END(12),
        X => SS4END_i(12)
    );

SS4END_inbuf_9 : my_buf
    Port map(
        A => SS4END(13),
        X => SS4END_i(13)
    );

SS4END_inbuf_10 : my_buf
    Port map(
        A => SS4END(14),
        X => SS4END_i(14)
    );

SS4END_inbuf_11 : my_buf
    Port map(
        A => SS4END(15),
        X => SS4END_i(15)
    );

SS4BEG_outbuf_0 : my_buf
    Port map(
        A => SS4BEG_i(0),
        X => SS4BEG(0)
    );

SS4BEG_outbuf_1 : my_buf
    Port map(
        A => SS4BEG_i(1),
        X => SS4BEG(1)
    );

SS4BEG_outbuf_2 : my_buf
    Port map(
        A => SS4BEG_i(2),
        X => SS4BEG(2)
    );

SS4BEG_outbuf_3 : my_buf
    Port map(
        A => SS4BEG_i(3),
        X => SS4BEG(3)
    );

SS4BEG_outbuf_4 : my_buf
    Port map(
        A => SS4BEG_i(4),
        X => SS4BEG(4)
    );

SS4BEG_outbuf_5 : my_buf
    Port map(
        A => SS4BEG_i(5),
        X => SS4BEG(5)
    );

SS4BEG_outbuf_6 : my_buf
    Port map(
        A => SS4BEG_i(6),
        X => SS4BEG(6)
    );

SS4BEG_outbuf_7 : my_buf
    Port map(
        A => SS4BEG_i(7),
        X => SS4BEG(7)
    );

SS4BEG_outbuf_8 : my_buf
    Port map(
        A => SS4BEG_i(8),
        X => SS4BEG(8)
    );

SS4BEG_outbuf_9 : my_buf
    Port map(
        A => SS4BEG_i(9),
        X => SS4BEG(9)
    );

SS4BEG_outbuf_10 : my_buf
    Port map(
        A => SS4BEG_i(10),
        X => SS4BEG(10)
    );

SS4BEG_outbuf_11 : my_buf
    Port map(
        A => SS4BEG_i(11),
        X => SS4BEG(11)
    );

WW4BEG_i(15-4 downto 0) <= WW4END_i(15 downto 4) after 0 ps;

WW4END_inbuf_0 : my_buf
    Port map(
        A => WW4END(4),
        X => WW4END_i(4)
    );

WW4END_inbuf_1 : my_buf
    Port map(
        A => WW4END(5),
        X => WW4END_i(5)
    );

WW4END_inbuf_2 : my_buf
    Port map(
        A => WW4END(6),
        X => WW4END_i(6)
    );

WW4END_inbuf_3 : my_buf
    Port map(
        A => WW4END(7),
        X => WW4END_i(7)
    );

WW4END_inbuf_4 : my_buf
    Port map(
        A => WW4END(8),
        X => WW4END_i(8)
    );

WW4END_inbuf_5 : my_buf
    Port map(
        A => WW4END(9),
        X => WW4END_i(9)
    );

WW4END_inbuf_6 : my_buf
    Port map(
        A => WW4END(10),
        X => WW4END_i(10)
    );

WW4END_inbuf_7 : my_buf
    Port map(
        A => WW4END(11),
        X => WW4END_i(11)
    );

WW4END_inbuf_8 : my_buf
    Port map(
        A => WW4END(12),
        X => WW4END_i(12)
    );

WW4END_inbuf_9 : my_buf
    Port map(
        A => WW4END(13),
        X => WW4END_i(13)
    );

WW4END_inbuf_10 : my_buf
    Port map(
        A => WW4END(14),
        X => WW4END_i(14)
    );

WW4END_inbuf_11 : my_buf
    Port map(
        A => WW4END(15),
        X => WW4END_i(15)
    );

WW4BEG_outbuf_0 : my_buf
    Port map(
        A => WW4BEG_i(0),
        X => WW4BEG(0)
    );

WW4BEG_outbuf_1 : my_buf
    Port map(
        A => WW4BEG_i(1),
        X => WW4BEG(1)
    );

WW4BEG_outbuf_2 : my_buf
    Port map(
        A => WW4BEG_i(2),
        X => WW4BEG(2)
    );

WW4BEG_outbuf_3 : my_buf
    Port map(
        A => WW4BEG_i(3),
        X => WW4BEG(3)
    );

WW4BEG_outbuf_4 : my_buf
    Port map(
        A => WW4BEG_i(4),
        X => WW4BEG(4)
    );

WW4BEG_outbuf_5 : my_buf
    Port map(
        A => WW4BEG_i(5),
        X => WW4BEG(5)
    );

WW4BEG_outbuf_6 : my_buf
    Port map(
        A => WW4BEG_i(6),
        X => WW4BEG(6)
    );

WW4BEG_outbuf_7 : my_buf
    Port map(
        A => WW4BEG_i(7),
        X => WW4BEG(7)
    );

WW4BEG_outbuf_8 : my_buf
    Port map(
        A => WW4BEG_i(8),
        X => WW4BEG(8)
    );

WW4BEG_outbuf_9 : my_buf
    Port map(
        A => WW4BEG_i(9),
        X => WW4BEG(9)
    );

WW4BEG_outbuf_10 : my_buf
    Port map(
        A => WW4BEG_i(10),
        X => WW4BEG(10)
    );

WW4BEG_outbuf_11 : my_buf
    Port map(
        A => WW4BEG_i(11),
        X => WW4BEG(11)
    );

W6BEG_i(11-2 downto 0) <= W6END_i(11 downto 2) after 0 ps;

W6END_inbuf_0 : my_buf
    Port map(
        A => W6END(2),
        X => W6END_i(2)
    );

W6END_inbuf_1 : my_buf
    Port map(
        A => W6END(3),
        X => W6END_i(3)
    );

W6END_inbuf_2 : my_buf
    Port map(
        A => W6END(4),
        X => W6END_i(4)
    );

W6END_inbuf_3 : my_buf
    Port map(
        A => W6END(5),
        X => W6END_i(5)
    );

W6END_inbuf_4 : my_buf
    Port map(
        A => W6END(6),
        X => W6END_i(6)
    );

W6END_inbuf_5 : my_buf
    Port map(
        A => W6END(7),
        X => W6END_i(7)
    );

W6END_inbuf_6 : my_buf
    Port map(
        A => W6END(8),
        X => W6END_i(8)
    );

W6END_inbuf_7 : my_buf
    Port map(
        A => W6END(9),
        X => W6END_i(9)
    );

W6END_inbuf_8 : my_buf
    Port map(
        A => W6END(10),
        X => W6END_i(10)
    );

W6END_inbuf_9 : my_buf
    Port map(
        A => W6END(11),
        X => W6END_i(11)
    );

W6BEG_outbuf_0 : my_buf
    Port map(
        A => W6BEG_i(0),
        X => W6BEG(0)
    );

W6BEG_outbuf_1 : my_buf
    Port map(
        A => W6BEG_i(1),
        X => W6BEG(1)
    );

W6BEG_outbuf_2 : my_buf
    Port map(
        A => W6BEG_i(2),
        X => W6BEG(2)
    );

W6BEG_outbuf_3 : my_buf
    Port map(
        A => W6BEG_i(3),
        X => W6BEG(3)
    );

W6BEG_outbuf_4 : my_buf
    Port map(
        A => W6BEG_i(4),
        X => W6BEG(4)
    );

W6BEG_outbuf_5 : my_buf
    Port map(
        A => W6BEG_i(5),
        X => W6BEG(5)
    );

W6BEG_outbuf_6 : my_buf
    Port map(
        A => W6BEG_i(6),
        X => W6BEG(6)
    );

W6BEG_outbuf_7 : my_buf
    Port map(
        A => W6BEG_i(7),
        X => W6BEG(7)
    );

W6BEG_outbuf_8 : my_buf
    Port map(
        A => W6BEG_i(8),
        X => W6BEG(8)
    );

W6BEG_outbuf_9 : my_buf
    Port map(
        A => W6BEG_i(9),
        X => W6BEG(9)
    );

inst_clk_buf : clk_buf
    Port map(
        A => UserCLK,
        X => UserCLKo
    );


 -- configuration storage latches
Inst_LUT4AB_ConfigMem : LUT4AB_ConfigMem
    Port map(
        FrameData => FrameData,
        FrameStrobe => FrameStrobe,
        ConfigBits => ConfigBits,
        ConfigBits_N => ConfigBits_N
    );


 -- BEL component instantiations
Inst_LA_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LA_I3,
        I(2) =>  LA_I2,
        I(1) =>  LA_I1,
        I(0) =>  LA_I0,
        O => LA_O,
        Ci => LA_Ci,
        Co => LA_Co,
        SR => LA_SR,
        EN => LA_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(19-1 downto 0)
    );

Inst_LB_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LB_I3,
        I(2) =>  LB_I2,
        I(1) =>  LB_I1,
        I(0) =>  LB_I0,
        O => LB_O,
        Ci => LB_Ci,
        Co => LB_Co,
        SR => LB_SR,
        EN => LB_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(38-1 downto 19)
    );

Inst_LC_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LC_I3,
        I(2) =>  LC_I2,
        I(1) =>  LC_I1,
        I(0) =>  LC_I0,
        O => LC_O,
        Ci => LC_Ci,
        Co => LC_Co,
        SR => LC_SR,
        EN => LC_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(57-1 downto 38)
    );

Inst_LD_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LD_I3,
        I(2) =>  LD_I2,
        I(1) =>  LD_I1,
        I(0) =>  LD_I0,
        O => LD_O,
        Ci => LD_Ci,
        Co => LD_Co,
        SR => LD_SR,
        EN => LD_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(76-1 downto 57)
    );

Inst_LE_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LE_I3,
        I(2) =>  LE_I2,
        I(1) =>  LE_I1,
        I(0) =>  LE_I0,
        O => LE_O,
        Ci => LE_Ci,
        Co => LE_Co,
        SR => LE_SR,
        EN => LE_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(95-1 downto 76)
    );

Inst_LF_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LF_I3,
        I(2) =>  LF_I2,
        I(1) =>  LF_I1,
        I(0) =>  LF_I0,
        O => LF_O,
        Ci => LF_Ci,
        Co => LF_Co,
        SR => LF_SR,
        EN => LF_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(114-1 downto 95)
    );

Inst_LG_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LG_I3,
        I(2) =>  LG_I2,
        I(1) =>  LG_I1,
        I(0) =>  LG_I0,
        O => LG_O,
        Ci => LG_Ci,
        Co => LG_Co,
        SR => LG_SR,
        EN => LG_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(133-1 downto 114)
    );

Inst_LH_LUT4c_frame_config_dffesr : LUT4c_frame_config_dffesr
    Port map(
        I(3) => LH_I3,
        I(2) =>  LH_I2,
        I(1) =>  LH_I1,
        I(0) =>  LH_I0,
        O => LH_O,
        Ci => LH_Ci,
        Co => LH_Co,
        SR => LH_SR,
        EN => LH_EN,
        UserCLK => UserCLK,
        ConfigBits => ConfigBits(152-1 downto 133)
    );

Inst_MUX8LUT_frame_config_mux : MUX8LUT_frame_config_mux
    Port map(
        A => A,
        B => B,
        C => C,
        D => D,
        E => E,
        F => F,
        G => G,
        H => H,
        S(3) => S3,
        S(2) =>  S2,
        S(1) =>  S1,
        S(0) =>  S0,
        M_AB => M_AB,
        M_AD => M_AD,
        M_AH => M_AH,
        M_EF => M_EF,
        ConfigBits => ConfigBits(154-1 downto 152)
    );

Inst_LUT4AB_switch_matrix : LUT4AB_switch_matrix
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
        NN4END0 => NN4END(0),
        NN4END1 => NN4END(1),
        NN4END2 => NN4END(2),
        NN4END3 => NN4END(3),
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
        E6END0 => E6END(0),
        E6END1 => E6END(1),
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
        SS4END0 => SS4END(0),
        SS4END1 => SS4END(1),
        SS4END2 => SS4END(2),
        SS4END3 => SS4END(3),
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
        W6END0 => W6END(0),
        W6END1 => W6END(1),
        Ci0 => Ci(0),
        LA_O => LA_O,
        LA_Co => LA_Co,
        LB_O => LB_O,
        LB_Co => LB_Co,
        LC_O => LC_O,
        LC_Co => LC_Co,
        LD_O => LD_O,
        LD_Co => LD_Co,
        LE_O => LE_O,
        LE_Co => LE_Co,
        LF_O => LF_O,
        LF_Co => LF_Co,
        LG_O => LG_O,
        LG_Co => LG_Co,
        LH_O => LH_O,
        LH_Co => LH_Co,
        M_AB => M_AB,
        M_AD => M_AD,
        M_AH => M_AH,
        M_EF => M_EF,
        J2MID_ABa_END0 => J2MID_ABa_BEG(0),
        J2MID_ABa_END1 => J2MID_ABa_BEG(1),
        J2MID_ABa_END2 => J2MID_ABa_BEG(2),
        J2MID_ABa_END3 => J2MID_ABa_BEG(3),
        J2MID_CDa_END0 => J2MID_CDa_BEG(0),
        J2MID_CDa_END1 => J2MID_CDa_BEG(1),
        J2MID_CDa_END2 => J2MID_CDa_BEG(2),
        J2MID_CDa_END3 => J2MID_CDa_BEG(3),
        J2MID_EFa_END0 => J2MID_EFa_BEG(0),
        J2MID_EFa_END1 => J2MID_EFa_BEG(1),
        J2MID_EFa_END2 => J2MID_EFa_BEG(2),
        J2MID_EFa_END3 => J2MID_EFa_BEG(3),
        J2MID_GHa_END0 => J2MID_GHa_BEG(0),
        J2MID_GHa_END1 => J2MID_GHa_BEG(1),
        J2MID_GHa_END2 => J2MID_GHa_BEG(2),
        J2MID_GHa_END3 => J2MID_GHa_BEG(3),
        J2MID_ABb_END0 => J2MID_ABb_BEG(0),
        J2MID_ABb_END1 => J2MID_ABb_BEG(1),
        J2MID_ABb_END2 => J2MID_ABb_BEG(2),
        J2MID_ABb_END3 => J2MID_ABb_BEG(3),
        J2MID_CDb_END0 => J2MID_CDb_BEG(0),
        J2MID_CDb_END1 => J2MID_CDb_BEG(1),
        J2MID_CDb_END2 => J2MID_CDb_BEG(2),
        J2MID_CDb_END3 => J2MID_CDb_BEG(3),
        J2MID_EFb_END0 => J2MID_EFb_BEG(0),
        J2MID_EFb_END1 => J2MID_EFb_BEG(1),
        J2MID_EFb_END2 => J2MID_EFb_BEG(2),
        J2MID_EFb_END3 => J2MID_EFb_BEG(3),
        J2MID_GHb_END0 => J2MID_GHb_BEG(0),
        J2MID_GHb_END1 => J2MID_GHb_BEG(1),
        J2MID_GHb_END2 => J2MID_GHb_BEG(2),
        J2MID_GHb_END3 => J2MID_GHb_BEG(3),
        J2END_AB_END0 => J2END_AB_BEG(0),
        J2END_AB_END1 => J2END_AB_BEG(1),
        J2END_AB_END2 => J2END_AB_BEG(2),
        J2END_AB_END3 => J2END_AB_BEG(3),
        J2END_CD_END0 => J2END_CD_BEG(0),
        J2END_CD_END1 => J2END_CD_BEG(1),
        J2END_CD_END2 => J2END_CD_BEG(2),
        J2END_CD_END3 => J2END_CD_BEG(3),
        J2END_EF_END0 => J2END_EF_BEG(0),
        J2END_EF_END1 => J2END_EF_BEG(1),
        J2END_EF_END2 => J2END_EF_BEG(2),
        J2END_EF_END3 => J2END_EF_BEG(3),
        J2END_GH_END0 => J2END_GH_BEG(0),
        J2END_GH_END1 => J2END_GH_BEG(1),
        J2END_GH_END2 => J2END_GH_BEG(2),
        J2END_GH_END3 => J2END_GH_BEG(3),
        JN2END0 => JN2BEG(0),
        JN2END1 => JN2BEG(1),
        JN2END2 => JN2BEG(2),
        JN2END3 => JN2BEG(3),
        JN2END4 => JN2BEG(4),
        JN2END5 => JN2BEG(5),
        JN2END6 => JN2BEG(6),
        JN2END7 => JN2BEG(7),
        JE2END0 => JE2BEG(0),
        JE2END1 => JE2BEG(1),
        JE2END2 => JE2BEG(2),
        JE2END3 => JE2BEG(3),
        JE2END4 => JE2BEG(4),
        JE2END5 => JE2BEG(5),
        JE2END6 => JE2BEG(6),
        JE2END7 => JE2BEG(7),
        JS2END0 => JS2BEG(0),
        JS2END1 => JS2BEG(1),
        JS2END2 => JS2BEG(2),
        JS2END3 => JS2BEG(3),
        JS2END4 => JS2BEG(4),
        JS2END5 => JS2BEG(5),
        JS2END6 => JS2BEG(6),
        JS2END7 => JS2BEG(7),
        JW2END0 => JW2BEG(0),
        JW2END1 => JW2BEG(1),
        JW2END2 => JW2BEG(2),
        JW2END3 => JW2BEG(3),
        JW2END4 => JW2BEG(4),
        JW2END5 => JW2BEG(5),
        JW2END6 => JW2BEG(6),
        JW2END7 => JW2BEG(7),
        J_l_AB_END0 => J_l_AB_BEG(0),
        J_l_AB_END1 => J_l_AB_BEG(1),
        J_l_AB_END2 => J_l_AB_BEG(2),
        J_l_AB_END3 => J_l_AB_BEG(3),
        J_l_CD_END0 => J_l_CD_BEG(0),
        J_l_CD_END1 => J_l_CD_BEG(1),
        J_l_CD_END2 => J_l_CD_BEG(2),
        J_l_CD_END3 => J_l_CD_BEG(3),
        J_l_EF_END0 => J_l_EF_BEG(0),
        J_l_EF_END1 => J_l_EF_BEG(1),
        J_l_EF_END2 => J_l_EF_BEG(2),
        J_l_EF_END3 => J_l_EF_BEG(3),
        J_l_GH_END0 => J_l_GH_BEG(0),
        J_l_GH_END1 => J_l_GH_BEG(1),
        J_l_GH_END2 => J_l_GH_BEG(2),
        J_l_GH_END3 => J_l_GH_BEG(3),
        J_SR_END0 => J_SR_BEG(0),
        J_EN_END0 => J_EN_BEG(0),
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
        NN4BEG0 => NN4BEG(12),
        NN4BEG1 => NN4BEG(13),
        NN4BEG2 => NN4BEG(14),
        NN4BEG3 => NN4BEG(15),
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
        EE4BEG0 => EE4BEG(12),
        EE4BEG1 => EE4BEG(13),
        EE4BEG2 => EE4BEG(14),
        EE4BEG3 => EE4BEG(15),
        E6BEG0 => E6BEG(10),
        E6BEG1 => E6BEG(11),
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
        SS4BEG0 => SS4BEG(12),
        SS4BEG1 => SS4BEG(13),
        SS4BEG2 => SS4BEG(14),
        SS4BEG3 => SS4BEG(15),
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
        WW4BEG0 => WW4BEG(12),
        WW4BEG1 => WW4BEG(13),
        WW4BEG2 => WW4BEG(14),
        WW4BEG3 => WW4BEG(15),
        W6BEG0 => W6BEG(10),
        W6BEG1 => W6BEG(11),
        Co0 => Co(0),
        LA_I0 => LA_I0,
        LA_I1 => LA_I1,
        LA_I2 => LA_I2,
        LA_I3 => LA_I3,
        LA_Ci => LA_Ci,
        LA_SR => LA_SR,
        LA_EN => LA_EN,
        LB_I0 => LB_I0,
        LB_I1 => LB_I1,
        LB_I2 => LB_I2,
        LB_I3 => LB_I3,
        LB_Ci => LB_Ci,
        LB_SR => LB_SR,
        LB_EN => LB_EN,
        LC_I0 => LC_I0,
        LC_I1 => LC_I1,
        LC_I2 => LC_I2,
        LC_I3 => LC_I3,
        LC_Ci => LC_Ci,
        LC_SR => LC_SR,
        LC_EN => LC_EN,
        LD_I0 => LD_I0,
        LD_I1 => LD_I1,
        LD_I2 => LD_I2,
        LD_I3 => LD_I3,
        LD_Ci => LD_Ci,
        LD_SR => LD_SR,
        LD_EN => LD_EN,
        LE_I0 => LE_I0,
        LE_I1 => LE_I1,
        LE_I2 => LE_I2,
        LE_I3 => LE_I3,
        LE_Ci => LE_Ci,
        LE_SR => LE_SR,
        LE_EN => LE_EN,
        LF_I0 => LF_I0,
        LF_I1 => LF_I1,
        LF_I2 => LF_I2,
        LF_I3 => LF_I3,
        LF_Ci => LF_Ci,
        LF_SR => LF_SR,
        LF_EN => LF_EN,
        LG_I0 => LG_I0,
        LG_I1 => LG_I1,
        LG_I2 => LG_I2,
        LG_I3 => LG_I3,
        LG_Ci => LG_Ci,
        LG_SR => LG_SR,
        LG_EN => LG_EN,
        LH_I0 => LH_I0,
        LH_I1 => LH_I1,
        LH_I2 => LH_I2,
        LH_I3 => LH_I3,
        LH_Ci => LH_Ci,
        LH_SR => LH_SR,
        LH_EN => LH_EN,
        A => A,
        B => B,
        C => C,
        D => D,
        E => E,
        F => F,
        G => G,
        H => H,
        S0 => S0,
        S1 => S1,
        S2 => S2,
        S3 => S3,
        J2MID_ABa_BEG0 => J2MID_ABa_BEG(0),
        J2MID_ABa_BEG1 => J2MID_ABa_BEG(1),
        J2MID_ABa_BEG2 => J2MID_ABa_BEG(2),
        J2MID_ABa_BEG3 => J2MID_ABa_BEG(3),
        J2MID_CDa_BEG0 => J2MID_CDa_BEG(0),
        J2MID_CDa_BEG1 => J2MID_CDa_BEG(1),
        J2MID_CDa_BEG2 => J2MID_CDa_BEG(2),
        J2MID_CDa_BEG3 => J2MID_CDa_BEG(3),
        J2MID_EFa_BEG0 => J2MID_EFa_BEG(0),
        J2MID_EFa_BEG1 => J2MID_EFa_BEG(1),
        J2MID_EFa_BEG2 => J2MID_EFa_BEG(2),
        J2MID_EFa_BEG3 => J2MID_EFa_BEG(3),
        J2MID_GHa_BEG0 => J2MID_GHa_BEG(0),
        J2MID_GHa_BEG1 => J2MID_GHa_BEG(1),
        J2MID_GHa_BEG2 => J2MID_GHa_BEG(2),
        J2MID_GHa_BEG3 => J2MID_GHa_BEG(3),
        J2MID_ABb_BEG0 => J2MID_ABb_BEG(0),
        J2MID_ABb_BEG1 => J2MID_ABb_BEG(1),
        J2MID_ABb_BEG2 => J2MID_ABb_BEG(2),
        J2MID_ABb_BEG3 => J2MID_ABb_BEG(3),
        J2MID_CDb_BEG0 => J2MID_CDb_BEG(0),
        J2MID_CDb_BEG1 => J2MID_CDb_BEG(1),
        J2MID_CDb_BEG2 => J2MID_CDb_BEG(2),
        J2MID_CDb_BEG3 => J2MID_CDb_BEG(3),
        J2MID_EFb_BEG0 => J2MID_EFb_BEG(0),
        J2MID_EFb_BEG1 => J2MID_EFb_BEG(1),
        J2MID_EFb_BEG2 => J2MID_EFb_BEG(2),
        J2MID_EFb_BEG3 => J2MID_EFb_BEG(3),
        J2MID_GHb_BEG0 => J2MID_GHb_BEG(0),
        J2MID_GHb_BEG1 => J2MID_GHb_BEG(1),
        J2MID_GHb_BEG2 => J2MID_GHb_BEG(2),
        J2MID_GHb_BEG3 => J2MID_GHb_BEG(3),
        J2END_AB_BEG0 => J2END_AB_BEG(0),
        J2END_AB_BEG1 => J2END_AB_BEG(1),
        J2END_AB_BEG2 => J2END_AB_BEG(2),
        J2END_AB_BEG3 => J2END_AB_BEG(3),
        J2END_CD_BEG0 => J2END_CD_BEG(0),
        J2END_CD_BEG1 => J2END_CD_BEG(1),
        J2END_CD_BEG2 => J2END_CD_BEG(2),
        J2END_CD_BEG3 => J2END_CD_BEG(3),
        J2END_EF_BEG0 => J2END_EF_BEG(0),
        J2END_EF_BEG1 => J2END_EF_BEG(1),
        J2END_EF_BEG2 => J2END_EF_BEG(2),
        J2END_EF_BEG3 => J2END_EF_BEG(3),
        J2END_GH_BEG0 => J2END_GH_BEG(0),
        J2END_GH_BEG1 => J2END_GH_BEG(1),
        J2END_GH_BEG2 => J2END_GH_BEG(2),
        J2END_GH_BEG3 => J2END_GH_BEG(3),
        JN2BEG0 => JN2BEG(0),
        JN2BEG1 => JN2BEG(1),
        JN2BEG2 => JN2BEG(2),
        JN2BEG3 => JN2BEG(3),
        JN2BEG4 => JN2BEG(4),
        JN2BEG5 => JN2BEG(5),
        JN2BEG6 => JN2BEG(6),
        JN2BEG7 => JN2BEG(7),
        JE2BEG0 => JE2BEG(0),
        JE2BEG1 => JE2BEG(1),
        JE2BEG2 => JE2BEG(2),
        JE2BEG3 => JE2BEG(3),
        JE2BEG4 => JE2BEG(4),
        JE2BEG5 => JE2BEG(5),
        JE2BEG6 => JE2BEG(6),
        JE2BEG7 => JE2BEG(7),
        JS2BEG0 => JS2BEG(0),
        JS2BEG1 => JS2BEG(1),
        JS2BEG2 => JS2BEG(2),
        JS2BEG3 => JS2BEG(3),
        JS2BEG4 => JS2BEG(4),
        JS2BEG5 => JS2BEG(5),
        JS2BEG6 => JS2BEG(6),
        JS2BEG7 => JS2BEG(7),
        JW2BEG0 => JW2BEG(0),
        JW2BEG1 => JW2BEG(1),
        JW2BEG2 => JW2BEG(2),
        JW2BEG3 => JW2BEG(3),
        JW2BEG4 => JW2BEG(4),
        JW2BEG5 => JW2BEG(5),
        JW2BEG6 => JW2BEG(6),
        JW2BEG7 => JW2BEG(7),
        J_l_AB_BEG0 => J_l_AB_BEG(0),
        J_l_AB_BEG1 => J_l_AB_BEG(1),
        J_l_AB_BEG2 => J_l_AB_BEG(2),
        J_l_AB_BEG3 => J_l_AB_BEG(3),
        J_l_CD_BEG0 => J_l_CD_BEG(0),
        J_l_CD_BEG1 => J_l_CD_BEG(1),
        J_l_CD_BEG2 => J_l_CD_BEG(2),
        J_l_CD_BEG3 => J_l_CD_BEG(3),
        J_l_EF_BEG0 => J_l_EF_BEG(0),
        J_l_EF_BEG1 => J_l_EF_BEG(1),
        J_l_EF_BEG2 => J_l_EF_BEG(2),
        J_l_EF_BEG3 => J_l_EF_BEG(3),
        J_l_GH_BEG0 => J_l_GH_BEG(0),
        J_l_GH_BEG1 => J_l_GH_BEG(1),
        J_l_GH_BEG2 => J_l_GH_BEG(2),
        J_l_GH_BEG3 => J_l_GH_BEG(3),
        J_SR_BEG0 => J_SR_BEG(0),
        J_EN_BEG0 => J_EN_BEG(0),
        ConfigBits => ConfigBits(616-1 downto 154),
        ConfigBits_N => ConfigBits_N(616-1 downto 154)
    );

end architecture Behavioral;