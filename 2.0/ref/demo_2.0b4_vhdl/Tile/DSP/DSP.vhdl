library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity DSP is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32
    );
    Port (
    -- Tile_X0Y0_Direction.NORTH
        Tile_X0Y0_N1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=N1BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=4,Side=N)
        Tile_X0Y0_N2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=N2BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
        Tile_X0Y0_N2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=N2BEGb,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
        Tile_X0Y0_N4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=N4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
        Tile_X0Y0_NN4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=NN4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
        Tile_X0Y0_S1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=S1END,IO=INPUT,XOffset=0,YOffset=1,WireCount=4,Side=N)
        Tile_X0Y0_S2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=S2MID,IO=INPUT,XOffset=0,YOffset=1,WireCount=8,Side=N)
        Tile_X0Y0_S2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=S2END,IO=INPUT,XOffset=0,YOffset=1,WireCount=8,Side=N)
        Tile_X0Y0_S4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=S4END,IO=INPUT,XOffset=0,YOffset=4,WireCount=4,Side=N)
        Tile_X0Y0_SS4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=SS4END,IO=INPUT,XOffset=0,YOffset=4,WireCount=4,Side=N)
    -- Tile_X0Y0_Direction.EAST
        Tile_X0Y0_E1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=E1BEG,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y0_E2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2BEG,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y0_E2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2BEGb,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y0_EE4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=EE4BEG,IO=OUTPUT,XOffset=4,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y0_E6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=E6BEG,IO=OUTPUT,XOffset=6,YOffset=0,WireCount=2,Side=E)
        Tile_X0Y0_W1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=W1END,IO=INPUT,XOffset=-1,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y0_W2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2MID,IO=INPUT,XOffset=-1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y0_W2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2END,IO=INPUT,XOffset=-1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y0_WW4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=WW4END,IO=INPUT,XOffset=-4,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y0_W6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=W6END,IO=INPUT,XOffset=-6,YOffset=0,WireCount=2,Side=E)
    -- Tile_X0Y0_Direction.EAST
        Tile_X0Y0_E1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=E1END,IO=INPUT,XOffset=1,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y0_E2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2MID,IO=INPUT,XOffset=1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y0_E2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2END,IO=INPUT,XOffset=1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y0_EE4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=EE4END,IO=INPUT,XOffset=4,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y0_E6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=E6END,IO=INPUT,XOffset=6,YOffset=0,WireCount=2,Side=W)
        Tile_X0Y0_W1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=W1BEG,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y0_W2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2BEG,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y0_W2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2BEGb,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y0_WW4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=WW4BEG,IO=OUTPUT,XOffset=-4,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y0_W6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=W6BEG,IO=OUTPUT,XOffset=-6,YOffset=0,WireCount=2,Side=W)
    -- Tile_X0Y1_Direction.EAST
        Tile_X0Y1_E1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=E1BEG,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y1_E2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2BEG,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y1_E2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2BEGb,IO=OUTPUT,XOffset=1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y1_EE4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=EE4BEG,IO=OUTPUT,XOffset=4,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y1_E6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=E6BEG,IO=OUTPUT,XOffset=6,YOffset=0,WireCount=2,Side=E)
        Tile_X0Y1_W1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=W1END,IO=INPUT,XOffset=-1,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y1_W2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2MID,IO=INPUT,XOffset=-1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y1_W2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2END,IO=INPUT,XOffset=-1,YOffset=0,WireCount=8,Side=E)
        Tile_X0Y1_WW4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=WW4END,IO=INPUT,XOffset=-4,YOffset=0,WireCount=4,Side=E)
        Tile_X0Y1_W6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=W6END,IO=INPUT,XOffset=-6,YOffset=0,WireCount=2,Side=E)
    -- Tile_X0Y1_Direction.NORTH
        Tile_X0Y1_N1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=N1END,IO=INPUT,XOffset=0,YOffset=-1,WireCount=4,Side=S)
        Tile_X0Y1_N2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=N2MID,IO=INPUT,XOffset=0,YOffset=-1,WireCount=8,Side=S)
        Tile_X0Y1_N2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=N2END,IO=INPUT,XOffset=0,YOffset=-1,WireCount=8,Side=S)
        Tile_X0Y1_N4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=N4END,IO=INPUT,XOffset=0,YOffset=-4,WireCount=4,Side=S)
        Tile_X0Y1_NN4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=NN4END,IO=INPUT,XOffset=0,YOffset=-4,WireCount=4,Side=S)
        Tile_X0Y1_S1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=S1BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=4,Side=S)
        Tile_X0Y1_S2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=S2BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        Tile_X0Y1_S2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=S2BEGb,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
        Tile_X0Y1_S4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=S4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
        Tile_X0Y1_SS4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=SS4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
    -- Tile_X0Y1_Direction.EAST
        Tile_X0Y1_E1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=E1END,IO=INPUT,XOffset=1,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y1_E2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2MID,IO=INPUT,XOffset=1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y1_E2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=E2END,IO=INPUT,XOffset=1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y1_EE4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=EE4END,IO=INPUT,XOffset=4,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y1_E6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=E6END,IO=INPUT,XOffset=6,YOffset=0,WireCount=2,Side=W)
        Tile_X0Y1_W1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=W1BEG,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y1_W2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2BEG,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y1_W2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=W2BEGb,IO=OUTPUT,XOffset=-1,YOffset=0,WireCount=8,Side=W)
        Tile_X0Y1_WW4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=WW4BEG,IO=OUTPUT,XOffset=-4,YOffset=0,WireCount=4,Side=W)
        Tile_X0Y1_W6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- Port(Name=W6BEG,IO=OUTPUT,XOffset=-6,YOffset=0,WireCount=2,Side=W)
    -- Tile IO ports from BELs
        Tile_X0Y0_FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y0_FrameData : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y0_FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y1_FrameData : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y1_FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y1_FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y0_UserCLKo : out STD_LOGIC;
        Tile_X0Y1_UserCLK : in STD_LOGIC
);
end entity DSP;
architecture Behavioral of DSP is

component DSP_top is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 406
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
        bot2top    : in STD_LOGIC_VECTOR( 9 downto 0 );        -- Port(Name=bot2top,IO=INPUT,XOffset=0,YOffset=-1,WireCount=10,Side=S)
        top2bot    : out STD_LOGIC_VECTOR( 17 downto 0 );        -- Port(Name=top2bot,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=18,Side=S)
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end component DSP_top;

component DSP_bot is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 416
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
        bot2top    : out STD_LOGIC_VECTOR( 9 downto 0 );        -- Port(Name=bot2top,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=10,Side=N)
        top2bot    : in STD_LOGIC_VECTOR( 17 downto 0 );        -- Port(Name=top2bot,IO=INPUT,XOffset=0,YOffset=1,WireCount=18,Side=N)
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
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end component DSP_bot;

 -- signal declarations
 -- Tile_X0Y0_Direction.NORTH
    signal Tile_X0Y0_S1BEG : STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=S1BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=4,Side=S)
    signal Tile_X0Y0_S2BEG : STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=S2BEG,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
    signal Tile_X0Y0_S2BEGb : STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=S2BEGb,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=8,Side=S)
    signal Tile_X0Y0_S4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=S4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
    signal Tile_X0Y0_SS4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=SS4BEG,IO=OUTPUT,XOffset=0,YOffset=4,WireCount=4,Side=S)
    signal Tile_X0Y0_top2bot : STD_LOGIC_VECTOR( 17 downto 0 ); -- Port(Name=top2bot,IO=OUTPUT,XOffset=0,YOffset=1,WireCount=18,Side=S)
 -- Tile_X0Y1_Direction.NORTH
    signal Tile_X0Y1_N1BEG : STD_LOGIC_VECTOR( 3 downto 0 ); -- Port(Name=N1BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=4,Side=N)
    signal Tile_X0Y1_N2BEG : STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=N2BEG,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
    signal Tile_X0Y1_N2BEGb : STD_LOGIC_VECTOR( 7 downto 0 ); -- Port(Name=N2BEGb,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=8,Side=N)
    signal Tile_X0Y1_N4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=N4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
    signal Tile_X0Y1_NN4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- Port(Name=NN4BEG,IO=OUTPUT,XOffset=0,YOffset=-4,WireCount=4,Side=N)
    signal Tile_X0Y1_bot2top : STD_LOGIC_VECTOR( 9 downto 0 ); -- Port(Name=bot2top,IO=OUTPUT,XOffset=0,YOffset=-1,WireCount=10,Side=N)
    signal Tile_X0Y1_FrameStrobe_O : STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 );
    signal Tile_X0Y1_UserCLKo : STD_LOGIC;


begin

Tile_X0Y0_DSP_top : DSP_top
    Port map(
        N1END => Tile_X0Y1_N1BEG,
        N2MID => Tile_X0Y1_N2BEG,
        N2END => Tile_X0Y1_N2BEGb,
        N4END => Tile_X0Y1_N4BEG,
        NN4END => Tile_X0Y1_NN4BEG,
        bot2top => Tile_X0Y1_bot2top,
        E1END => Tile_X0Y0_E1END,
        E2MID => Tile_X0Y0_E2MID,
        E2END => Tile_X0Y0_E2END,
        EE4END => Tile_X0Y0_EE4END,
        E6END => Tile_X0Y0_E6END,
        S1END => Tile_X0Y0_S1END,
        S2MID => Tile_X0Y0_S2MID,
        S2END => Tile_X0Y0_S2END,
        S4END => Tile_X0Y0_S4END,
        SS4END => Tile_X0Y0_SS4END,
        W1END => Tile_X0Y0_W1END,
        W2MID => Tile_X0Y0_W2MID,
        W2END => Tile_X0Y0_W2END,
        WW4END => Tile_X0Y0_WW4END,
        W6END => Tile_X0Y0_W6END,
        N1BEG => Tile_X0Y0_N1BEG,
        N2BEG => Tile_X0Y0_N2BEG,
        N2BEGb => Tile_X0Y0_N2BEGb,
        N4BEG => Tile_X0Y0_N4BEG,
        NN4BEG => Tile_X0Y0_NN4BEG,
        E1BEG => Tile_X0Y0_E1BEG,
        E2BEG => Tile_X0Y0_E2BEG,
        E2BEGb => Tile_X0Y0_E2BEGb,
        EE4BEG => Tile_X0Y0_EE4BEG,
        E6BEG => Tile_X0Y0_E6BEG,
        S1BEG => Tile_X0Y0_S1BEG,
        S2BEG => Tile_X0Y0_S2BEG,
        S2BEGb => Tile_X0Y0_S2BEGb,
        S4BEG => Tile_X0Y0_S4BEG,
        SS4BEG => Tile_X0Y0_SS4BEG,
        top2bot => Tile_X0Y0_top2bot,
        W1BEG => Tile_X0Y0_W1BEG,
        W2BEG => Tile_X0Y0_W2BEG,
        W2BEGb => Tile_X0Y0_W2BEGb,
        WW4BEG => Tile_X0Y0_WW4BEG,
        W6BEG => Tile_X0Y0_W6BEG,
        UserCLK => Tile_X0Y1_UserCLKo,
        UserCLKo => Tile_X0Y0_UserCLKo,
        FrameData => Tile_X0Y0_FrameData,
        FrameData_O => Tile_X0Y0_FrameData_O,
        FrameStrobe => Tile_X0Y1_FrameStrobe_O,
        FrameStrobe_O => Tile_X0Y0_FrameStrobe_O
    );

Tile_X0Y1_DSP_bot : DSP_bot
    Port map(
        N1END => Tile_X0Y1_N1END,
        N2MID => Tile_X0Y1_N2MID,
        N2END => Tile_X0Y1_N2END,
        N4END => Tile_X0Y1_N4END,
        NN4END => Tile_X0Y1_NN4END,
        E1END => Tile_X0Y1_E1END,
        E2MID => Tile_X0Y1_E2MID,
        E2END => Tile_X0Y1_E2END,
        EE4END => Tile_X0Y1_EE4END,
        E6END => Tile_X0Y1_E6END,
        S1END => Tile_X0Y0_S1BEG,
        S2MID => Tile_X0Y0_S2BEG,
        S2END => Tile_X0Y0_S2BEGb,
        S4END => Tile_X0Y0_S4BEG,
        SS4END => Tile_X0Y0_SS4BEG,
        top2bot => Tile_X0Y0_top2bot,
        W1END => Tile_X0Y1_W1END,
        W2MID => Tile_X0Y1_W2MID,
        W2END => Tile_X0Y1_W2END,
        WW4END => Tile_X0Y1_WW4END,
        W6END => Tile_X0Y1_W6END,
        N1BEG => Tile_X0Y1_N1BEG,
        N2BEG => Tile_X0Y1_N2BEG,
        N2BEGb => Tile_X0Y1_N2BEGb,
        N4BEG => Tile_X0Y1_N4BEG,
        NN4BEG => Tile_X0Y1_NN4BEG,
        bot2top => Tile_X0Y1_bot2top,
        E1BEG => Tile_X0Y1_E1BEG,
        E2BEG => Tile_X0Y1_E2BEG,
        E2BEGb => Tile_X0Y1_E2BEGb,
        EE4BEG => Tile_X0Y1_EE4BEG,
        E6BEG => Tile_X0Y1_E6BEG,
        S1BEG => Tile_X0Y1_S1BEG,
        S2BEG => Tile_X0Y1_S2BEG,
        S2BEGb => Tile_X0Y1_S2BEGb,
        S4BEG => Tile_X0Y1_S4BEG,
        SS4BEG => Tile_X0Y1_SS4BEG,
        W1BEG => Tile_X0Y1_W1BEG,
        W2BEG => Tile_X0Y1_W2BEG,
        W2BEGb => Tile_X0Y1_W2BEGb,
        WW4BEG => Tile_X0Y1_WW4BEG,
        W6BEG => Tile_X0Y1_W6BEG,
        UserCLK => Tile_X0Y1_UserCLK,
        UserCLKo => Tile_X0Y1_UserCLKo,
        FrameData => Tile_X0Y1_FrameData,
        FrameData_O => Tile_X0Y1_FrameData_O,
        FrameStrobe => Tile_X0Y1_FrameStrobe,
        FrameStrobe_O => Tile_X0Y1_FrameStrobe_O
    );

end architecture Behavioral;