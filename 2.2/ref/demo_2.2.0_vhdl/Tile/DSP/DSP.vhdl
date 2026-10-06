package attr_pack_DSP is
 attribute keep : string;
end package;
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
        Tile_X0Y0_N1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({N} OUTPUT N1BEG[3:0])
        Tile_X0Y0_N2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} OUTPUT N2BEG[7:0])
        Tile_X0Y0_N2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} OUTPUT N2BEGb[7:0])
        Tile_X0Y0_N4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} OUTPUT N4BEG[3:0])
        Tile_X0Y0_NN4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} OUTPUT NN4BEG[3:0])
        Tile_X0Y0_S1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({N} INPUT S1END[3:0])
        Tile_X0Y0_S2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} INPUT S2MID[7:0])
        Tile_X0Y0_S2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} INPUT S2END[7:0])
        Tile_X0Y0_S4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} INPUT S4END[3:0])
        Tile_X0Y0_SS4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} INPUT SS4END[3:0])
    -- Tile_X0Y0_Direction.EAST
        Tile_X0Y0_E1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({E} OUTPUT E1BEG[3:0])
        Tile_X0Y0_E2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} OUTPUT E2BEG[7:0])
        Tile_X0Y0_E2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} OUTPUT E2BEGb[7:0])
        Tile_X0Y0_EE4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({E} OUTPUT EE4BEG[3:0])
        Tile_X0Y0_E6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({E} OUTPUT E6BEG[1:0])
        Tile_X0Y0_W1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({E} INPUT W1END[3:0])
        Tile_X0Y0_W2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} INPUT W2MID[7:0])
        Tile_X0Y0_W2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} INPUT W2END[7:0])
        Tile_X0Y0_WW4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({E} INPUT WW4END[3:0])
        Tile_X0Y0_W6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({E} INPUT W6END[1:0])
    -- Tile_X0Y0_Direction.EAST
        Tile_X0Y0_E1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({W} INPUT E1END[3:0])
        Tile_X0Y0_E2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} INPUT E2MID[7:0])
        Tile_X0Y0_E2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} INPUT E2END[7:0])
        Tile_X0Y0_EE4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({W} INPUT EE4END[3:0])
        Tile_X0Y0_E6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({W} INPUT E6END[1:0])
        Tile_X0Y0_W1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({W} OUTPUT W1BEG[3:0])
        Tile_X0Y0_W2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} OUTPUT W2BEG[7:0])
        Tile_X0Y0_W2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} OUTPUT W2BEGb[7:0])
        Tile_X0Y0_WW4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({W} OUTPUT WW4BEG[3:0])
        Tile_X0Y0_W6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({W} OUTPUT W6BEG[1:0])
    -- Tile_X0Y1_Direction.EAST
        Tile_X0Y1_E1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({E} OUTPUT E1BEG[3:0])
        Tile_X0Y1_E2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} OUTPUT E2BEG[7:0])
        Tile_X0Y1_E2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} OUTPUT E2BEGb[7:0])
        Tile_X0Y1_EE4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({E} OUTPUT EE4BEG[3:0])
        Tile_X0Y1_E6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({E} OUTPUT E6BEG[1:0])
        Tile_X0Y1_W1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({E} INPUT W1END[3:0])
        Tile_X0Y1_W2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} INPUT W2MID[7:0])
        Tile_X0Y1_W2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({E} INPUT W2END[7:0])
        Tile_X0Y1_WW4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({E} INPUT WW4END[3:0])
        Tile_X0Y1_W6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({E} INPUT W6END[1:0])
    -- Tile_X0Y1_Direction.NORTH
        Tile_X0Y1_N1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({S} INPUT N1END[3:0])
        Tile_X0Y1_N2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} INPUT N2MID[7:0])
        Tile_X0Y1_N2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} INPUT N2END[7:0])
        Tile_X0Y1_N4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} INPUT N4END[3:0])
        Tile_X0Y1_NN4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} INPUT NN4END[3:0])
        Tile_X0Y1_S1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({S} OUTPUT S1BEG[3:0])
        Tile_X0Y1_S2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} OUTPUT S2BEG[7:0])
        Tile_X0Y1_S2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} OUTPUT S2BEGb[7:0])
        Tile_X0Y1_S4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} OUTPUT S4BEG[3:0])
        Tile_X0Y1_SS4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} OUTPUT SS4BEG[3:0])
    -- Tile_X0Y1_Direction.EAST
        Tile_X0Y1_E1END : in STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({W} INPUT E1END[3:0])
        Tile_X0Y1_E2MID : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} INPUT E2MID[7:0])
        Tile_X0Y1_E2END : in STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} INPUT E2END[7:0])
        Tile_X0Y1_EE4END : in STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({W} INPUT EE4END[3:0])
        Tile_X0Y1_E6END : in STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({W} INPUT E6END[1:0])
        Tile_X0Y1_W1BEG : out STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({W} OUTPUT W1BEG[3:0])
        Tile_X0Y1_W2BEG : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} OUTPUT W2BEG[7:0])
        Tile_X0Y1_W2BEGb : out STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({W} OUTPUT W2BEGb[7:0])
        Tile_X0Y1_WW4BEG : out STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({W} OUTPUT WW4BEG[3:0])
        Tile_X0Y1_W6BEG : out STD_LOGIC_VECTOR( 11 downto 0 ); -- TilePort({W} OUTPUT W6BEG[1:0])
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
        N1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({N} OUTPUT N1BEG[3:0])
        N2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} OUTPUT N2BEG[7:0])
        N2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} OUTPUT N2BEGb[7:0])
        N4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} OUTPUT N4BEG[3:0])
        NN4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} OUTPUT NN4BEG[3:0])
        S1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({N} INPUT S1END[3:0])
        S2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} INPUT S2MID[7:0])
        S2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} INPUT S2END[7:0])
        S4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} INPUT S4END[3:0])
        SS4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} INPUT SS4END[3:0])
 -- E
        E1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({E} OUTPUT E1BEG[3:0])
        E2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} OUTPUT E2BEG[7:0])
        E2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} OUTPUT E2BEGb[7:0])
        EE4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({E} OUTPUT EE4BEG[3:0])
        E6BEG      : out STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({E} OUTPUT E6BEG[1:0])
        W1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({E} INPUT W1END[3:0])
        W2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} INPUT W2MID[7:0])
        W2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} INPUT W2END[7:0])
        WW4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({E} INPUT WW4END[3:0])
        W6END      : in STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({E} INPUT W6END[1:0])
 -- W
        E1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({W} INPUT E1END[3:0])
        E2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} INPUT E2MID[7:0])
        E2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} INPUT E2END[7:0])
        EE4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({W} INPUT EE4END[3:0])
        E6END      : in STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({W} INPUT E6END[1:0])
        W1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({W} OUTPUT W1BEG[3:0])
        W2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} OUTPUT W2BEG[7:0])
        W2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} OUTPUT W2BEGb[7:0])
        WW4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({W} OUTPUT WW4BEG[3:0])
        W6BEG      : out STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({W} OUTPUT W6BEG[1:0])
 -- S
        N1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({S} INPUT N1END[3:0])
        N2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} INPUT N2MID[7:0])
        N2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} INPUT N2END[7:0])
        N4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} INPUT N4END[3:0])
        NN4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} INPUT NN4END[3:0])
        S1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({S} OUTPUT S1BEG[3:0])
        S2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} OUTPUT S2BEG[7:0])
        S2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} OUTPUT S2BEGb[7:0])
        S4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} OUTPUT S4BEG[3:0])
        SS4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} OUTPUT SS4BEG[3:0])
        bot2top    : in STD_LOGIC_VECTOR( 9 downto 0 );        -- TilePort({S} INPUT bot2top[9:0])
        top2bot    : out STD_LOGIC_VECTOR( 17 downto 0 );        -- TilePort({S} OUTPUT top2bot[17:0])
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
        N1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({N} OUTPUT N1BEG[3:0])
        N2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} OUTPUT N2BEG[7:0])
        N2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} OUTPUT N2BEGb[7:0])
        N4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} OUTPUT N4BEG[3:0])
        NN4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} OUTPUT NN4BEG[3:0])
        S1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({N} INPUT S1END[3:0])
        S2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} INPUT S2MID[7:0])
        S2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({N} INPUT S2END[7:0])
        S4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} INPUT S4END[3:0])
        SS4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({N} INPUT SS4END[3:0])
        bot2top    : out STD_LOGIC_VECTOR( 9 downto 0 );        -- TilePort({N} OUTPUT bot2top[9:0])
        top2bot    : in STD_LOGIC_VECTOR( 17 downto 0 );        -- TilePort({N} INPUT top2bot[17:0])
 -- E
        E1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({E} OUTPUT E1BEG[3:0])
        E2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} OUTPUT E2BEG[7:0])
        E2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} OUTPUT E2BEGb[7:0])
        EE4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({E} OUTPUT EE4BEG[3:0])
        E6BEG      : out STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({E} OUTPUT E6BEG[1:0])
        W1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({E} INPUT W1END[3:0])
        W2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} INPUT W2MID[7:0])
        W2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({E} INPUT W2END[7:0])
        WW4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({E} INPUT WW4END[3:0])
        W6END      : in STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({E} INPUT W6END[1:0])
 -- W
        E1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({W} INPUT E1END[3:0])
        E2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} INPUT E2MID[7:0])
        E2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} INPUT E2END[7:0])
        EE4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({W} INPUT EE4END[3:0])
        E6END      : in STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({W} INPUT E6END[1:0])
        W1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({W} OUTPUT W1BEG[3:0])
        W2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} OUTPUT W2BEG[7:0])
        W2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({W} OUTPUT W2BEGb[7:0])
        WW4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({W} OUTPUT WW4BEG[3:0])
        W6BEG      : out STD_LOGIC_VECTOR( 11 downto 0 );        -- TilePort({W} OUTPUT W6BEG[1:0])
 -- S
        N1END      : in STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({S} INPUT N1END[3:0])
        N2MID      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} INPUT N2MID[7:0])
        N2END      : in STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} INPUT N2END[7:0])
        N4END      : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} INPUT N4END[3:0])
        NN4END     : in STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} INPUT NN4END[3:0])
        S1BEG      : out STD_LOGIC_VECTOR( 3 downto 0 );        -- TilePort({S} OUTPUT S1BEG[3:0])
        S2BEG      : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} OUTPUT S2BEG[7:0])
        S2BEGb     : out STD_LOGIC_VECTOR( 7 downto 0 );        -- TilePort({S} OUTPUT S2BEGb[7:0])
        S4BEG      : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} OUTPUT S4BEG[3:0])
        SS4BEG     : out STD_LOGIC_VECTOR( 15 downto 0 );        -- TilePort({S} OUTPUT SS4BEG[3:0])
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
    signal Tile_X0Y0_S1BEG : STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({S} OUTPUT S1BEG[3:0])
    signal Tile_X0Y0_S2BEG : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} OUTPUT S2BEG[7:0])
    signal Tile_X0Y0_S2BEGb : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} OUTPUT S2BEGb[7:0])
    signal Tile_X0Y0_S4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} OUTPUT S4BEG[3:0])
    signal Tile_X0Y0_SS4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} OUTPUT SS4BEG[3:0])
    signal Tile_X0Y0_top2bot : STD_LOGIC_VECTOR( 17 downto 0 ); -- TilePort({S} OUTPUT top2bot[17:0])
 -- Tile_X0Y1_Direction.NORTH
    signal Tile_X0Y1_N1BEG : STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({N} OUTPUT N1BEG[3:0])
    signal Tile_X0Y1_N2BEG : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} OUTPUT N2BEG[7:0])
    signal Tile_X0Y1_N2BEGb : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} OUTPUT N2BEGb[7:0])
    signal Tile_X0Y1_N4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} OUTPUT N4BEG[3:0])
    signal Tile_X0Y1_NN4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} OUTPUT NN4BEG[3:0])
    signal Tile_X0Y1_bot2top : STD_LOGIC_VECTOR( 9 downto 0 ); -- TilePort({N} OUTPUT bot2top[9:0])
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