package attr_pack_DSP_top_sm is
 attribute keep : string;
end package;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity DSP_top_sm is
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
    -- SuperTile BEL IO ports
        Tile_X0Y0_FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y0_FrameData : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y0_FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y1_FrameData : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y1_FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y1_FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        Tile_X0Y0_UserCLKo : out STD_LOGIC;
        Tile_X0Y1_UserCLK : in STD_LOGIC
);
end entity DSP_top_sm;
architecture Behavioral of DSP_top_sm is

component DSP_top_sm_top is
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
    -- SJUMP ports (supertile BEL interface)
        A          : out STD_LOGIC_VECTOR( 4-1 downto 0 );
        B          : out STD_LOGIC_VECTOR( 4-1 downto 0 );
        C          : out STD_LOGIC_VECTOR( 10-1 downto 0 );
        Q          : in STD_LOGIC_VECTOR( 10-1 downto 0 );
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end component DSP_top_sm_top;

component DSP_top_sm_bot is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 410
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
    -- SJUMP ports (supertile BEL interface)
        A          : out STD_LOGIC_VECTOR( 4-1 downto 0 );
        B          : out STD_LOGIC_VECTOR( 4-1 downto 0 );
        C          : out STD_LOGIC_VECTOR( 10-1 downto 0 );
        clr        : out STD_LOGIC_VECTOR( 1-1 downto 0 );
        Q          : in STD_LOGIC_VECTOR( 10-1 downto 0 );
    -- Tile IO ports from BELs
        UserCLK    : in STD_LOGIC;
        UserCLKo   : out STD_LOGIC;
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 ); -- CONFIG_PORT
        FrameData_O : out STD_LOGIC_VECTOR( FrameBitsPerRow-1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 ); -- CONFIG_PORT
        FrameStrobe_O : out STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 )
    -- global
);
end component DSP_top_sm_bot;

component MULADD is
  generic (
    NoConfigBits : integer := 6
  );
  port (                                                           -- IMPORTANT: this has to be in a dedicated line
    A          : in    std_logic_vector(7 downto 0);               -- operand A
    B          : in    std_logic_vector(7 downto 0);               -- operand B
    C          : in    std_logic_vector(19 downto 0);              -- operand C
    Q          : out   std_logic_vector(19 downto 0);
    clr        : in    std_logic;                                  -- clear
    UserCLK    : in    std_logic;                                  -- (* FABulous, EXTERNAL, SHARED_PORT *)
    ConfigBits : in    std_logic_vector(NoConfigBits - 1 downto 0) -- (* FABulous, GLOBAL *)
  );
end component MULADD;

component DSP_top_sm_switch_matrix is
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
end component DSP_top_sm_switch_matrix;

component DSP_top_sm_ConfigMem is
    Generic(
        MaxFramesPerCol : integer := 20;
        FrameBitsPerRow : integer := 32;
        NoConfigBits : integer := 6
    );
    Port (
        FrameData  : in STD_LOGIC_VECTOR( FrameBitsPerRow - 1 downto 0 );
        FrameStrobe : in STD_LOGIC_VECTOR( MaxFramesPerCol - 1 downto 0 );
        ConfigBits : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 );
        ConfigBits_N : out STD_LOGIC_VECTOR( NoConfigBits - 1 downto 0 )
    );
end component DSP_top_sm_ConfigMem;

 -- signal declarations
 -- SJUMP signals (child tile -> supertile SM)
    signal DSP_top_sm_top_A : STD_LOGIC_VECTOR( 4-1 downto 0 );
    signal DSP_top_sm_top_B : STD_LOGIC_VECTOR( 4-1 downto 0 );
    signal DSP_top_sm_top_C : STD_LOGIC_VECTOR( 10-1 downto 0 );
    signal DSP_top_sm_bot_A : STD_LOGIC_VECTOR( 4-1 downto 0 );
    signal DSP_top_sm_bot_B : STD_LOGIC_VECTOR( 4-1 downto 0 );
    signal DSP_top_sm_bot_C : STD_LOGIC_VECTOR( 10-1 downto 0 );
    signal DSP_top_sm_bot_clr : STD_LOGIC_VECTOR( 1-1 downto 0 );
 -- SJUMP signals (supertile SM -> child tile)
    signal DSP_top_sm_top_Q : STD_LOGIC_VECTOR( 10-1 downto 0 );
    signal DSP_top_sm_bot_Q : STD_LOGIC_VECTOR( 10-1 downto 0 );
 -- BEL pin signals (BEL <-> supertile SM)
    signal DSP_A0 : STD_LOGIC;
    signal DSP_A1 : STD_LOGIC;
    signal DSP_A2 : STD_LOGIC;
    signal DSP_A3 : STD_LOGIC;
    signal DSP_A4 : STD_LOGIC;
    signal DSP_A5 : STD_LOGIC;
    signal DSP_A6 : STD_LOGIC;
    signal DSP_A7 : STD_LOGIC;
    signal DSP_B0 : STD_LOGIC;
    signal DSP_B1 : STD_LOGIC;
    signal DSP_B2 : STD_LOGIC;
    signal DSP_B3 : STD_LOGIC;
    signal DSP_B4 : STD_LOGIC;
    signal DSP_B5 : STD_LOGIC;
    signal DSP_B6 : STD_LOGIC;
    signal DSP_B7 : STD_LOGIC;
    signal DSP_C0 : STD_LOGIC;
    signal DSP_C1 : STD_LOGIC;
    signal DSP_C2 : STD_LOGIC;
    signal DSP_C3 : STD_LOGIC;
    signal DSP_C4 : STD_LOGIC;
    signal DSP_C5 : STD_LOGIC;
    signal DSP_C6 : STD_LOGIC;
    signal DSP_C7 : STD_LOGIC;
    signal DSP_C8 : STD_LOGIC;
    signal DSP_C9 : STD_LOGIC;
    signal DSP_C10 : STD_LOGIC;
    signal DSP_C11 : STD_LOGIC;
    signal DSP_C12 : STD_LOGIC;
    signal DSP_C13 : STD_LOGIC;
    signal DSP_C14 : STD_LOGIC;
    signal DSP_C15 : STD_LOGIC;
    signal DSP_C16 : STD_LOGIC;
    signal DSP_C17 : STD_LOGIC;
    signal DSP_C18 : STD_LOGIC;
    signal DSP_C19 : STD_LOGIC;
    signal DSP_clr : STD_LOGIC;
    signal DSP_Q0 : STD_LOGIC;
    signal DSP_Q1 : STD_LOGIC;
    signal DSP_Q2 : STD_LOGIC;
    signal DSP_Q3 : STD_LOGIC;
    signal DSP_Q4 : STD_LOGIC;
    signal DSP_Q5 : STD_LOGIC;
    signal DSP_Q6 : STD_LOGIC;
    signal DSP_Q7 : STD_LOGIC;
    signal DSP_Q8 : STD_LOGIC;
    signal DSP_Q9 : STD_LOGIC;
    signal DSP_Q10 : STD_LOGIC;
    signal DSP_Q11 : STD_LOGIC;
    signal DSP_Q12 : STD_LOGIC;
    signal DSP_Q13 : STD_LOGIC;
    signal DSP_Q14 : STD_LOGIC;
    signal DSP_Q15 : STD_LOGIC;
    signal DSP_Q16 : STD_LOGIC;
    signal DSP_Q17 : STD_LOGIC;
    signal DSP_Q18 : STD_LOGIC;
    signal DSP_Q19 : STD_LOGIC;
 -- Tile_X0Y0_Direction.NORTH
    signal Tile_X0Y0_S1BEG : STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({S} OUTPUT S1BEG[3:0])
    signal Tile_X0Y0_S2BEG : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} OUTPUT S2BEG[7:0])
    signal Tile_X0Y0_S2BEGb : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({S} OUTPUT S2BEGb[7:0])
    signal Tile_X0Y0_S4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} OUTPUT S4BEG[3:0])
    signal Tile_X0Y0_SS4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({S} OUTPUT SS4BEG[3:0])
 -- Tile_X0Y1_Direction.NORTH
    signal Tile_X0Y1_N1BEG : STD_LOGIC_VECTOR( 3 downto 0 ); -- TilePort({N} OUTPUT N1BEG[3:0])
    signal Tile_X0Y1_N2BEG : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} OUTPUT N2BEG[7:0])
    signal Tile_X0Y1_N2BEGb : STD_LOGIC_VECTOR( 7 downto 0 ); -- TilePort({N} OUTPUT N2BEGb[7:0])
    signal Tile_X0Y1_N4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} OUTPUT N4BEG[3:0])
    signal Tile_X0Y1_NN4BEG : STD_LOGIC_VECTOR( 15 downto 0 ); -- TilePort({N} OUTPUT NN4BEG[3:0])
    signal Tile_X0Y1_FrameStrobe_O : STD_LOGIC_VECTOR( MaxFramesPerCol-1 downto 0 );
    signal Tile_X0Y1_UserCLKo : STD_LOGIC;
    signal ST_ConfigBits : STD_LOGIC_VECTOR( 6-1 downto 0 );
    signal ST_ConfigBits_N : STD_LOGIC_VECTOR( 6-1 downto 0 );


begin

Tile_X0Y0_DSP_top_sm_top : DSP_top_sm_top
    Port map(
        N1END => Tile_X0Y1_N1BEG,
        N2MID => Tile_X0Y1_N2BEG,
        N2END => Tile_X0Y1_N2BEGb,
        N4END => Tile_X0Y1_N4BEG,
        NN4END => Tile_X0Y1_NN4BEG,
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
        W1BEG => Tile_X0Y0_W1BEG,
        W2BEG => Tile_X0Y0_W2BEG,
        W2BEGb => Tile_X0Y0_W2BEGb,
        WW4BEG => Tile_X0Y0_WW4BEG,
        W6BEG => Tile_X0Y0_W6BEG,
        A => DSP_top_sm_top_A,
        B => DSP_top_sm_top_B,
        C => DSP_top_sm_top_C,
        Q => DSP_top_sm_top_Q,
        UserCLK => Tile_X0Y1_UserCLKo,
        UserCLKo => Tile_X0Y0_UserCLKo,
        FrameData => Tile_X0Y0_FrameData,
        FrameData_O => Tile_X0Y0_FrameData_O,
        FrameStrobe => Tile_X0Y1_FrameStrobe_O,
        FrameStrobe_O => Tile_X0Y0_FrameStrobe_O
    );

Tile_X0Y1_DSP_top_sm_bot : DSP_top_sm_bot
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
        A => DSP_top_sm_bot_A,
        B => DSP_top_sm_bot_B,
        C => DSP_top_sm_bot_C,
        clr => DSP_top_sm_bot_clr,
        Q => DSP_top_sm_bot_Q,
        UserCLK => Tile_X0Y1_UserCLK,
        UserCLKo => Tile_X0Y1_UserCLKo,
        FrameData => Tile_X0Y1_FrameData,
        FrameData_O => Tile_X0Y1_FrameData_O,
        FrameStrobe => Tile_X0Y1_FrameStrobe,
        FrameStrobe_O => Tile_X0Y1_FrameStrobe_O
    );

Inst_DSP_top_sm_ConfigMem : DSP_top_sm_ConfigMem
    Port map(
        FrameData => Tile_X0Y1_FrameData,
        FrameStrobe => Tile_X0Y1_FrameStrobe,
        ConfigBits => ST_ConfigBits(6-1 downto 0),
        ConfigBits_N => ST_ConfigBits_N(6-1 downto 0)
    );

Inst_DSP_top_sm_switch_matrix : DSP_top_sm_switch_matrix
    Port map(
        DSP_top_sm_top_A0 => DSP_top_sm_top_A(0),
        DSP_top_sm_top_A1 => DSP_top_sm_top_A(1),
        DSP_top_sm_top_A2 => DSP_top_sm_top_A(2),
        DSP_top_sm_top_A3 => DSP_top_sm_top_A(3),
        DSP_top_sm_top_B0 => DSP_top_sm_top_B(0),
        DSP_top_sm_top_B1 => DSP_top_sm_top_B(1),
        DSP_top_sm_top_B2 => DSP_top_sm_top_B(2),
        DSP_top_sm_top_B3 => DSP_top_sm_top_B(3),
        DSP_top_sm_top_C0 => DSP_top_sm_top_C(0),
        DSP_top_sm_top_C1 => DSP_top_sm_top_C(1),
        DSP_top_sm_top_C2 => DSP_top_sm_top_C(2),
        DSP_top_sm_top_C3 => DSP_top_sm_top_C(3),
        DSP_top_sm_top_C4 => DSP_top_sm_top_C(4),
        DSP_top_sm_top_C5 => DSP_top_sm_top_C(5),
        DSP_top_sm_top_C6 => DSP_top_sm_top_C(6),
        DSP_top_sm_top_C7 => DSP_top_sm_top_C(7),
        DSP_top_sm_top_C8 => DSP_top_sm_top_C(8),
        DSP_top_sm_top_C9 => DSP_top_sm_top_C(9),
        DSP_top_sm_bot_A0 => DSP_top_sm_bot_A(0),
        DSP_top_sm_bot_A1 => DSP_top_sm_bot_A(1),
        DSP_top_sm_bot_A2 => DSP_top_sm_bot_A(2),
        DSP_top_sm_bot_A3 => DSP_top_sm_bot_A(3),
        DSP_top_sm_bot_B0 => DSP_top_sm_bot_B(0),
        DSP_top_sm_bot_B1 => DSP_top_sm_bot_B(1),
        DSP_top_sm_bot_B2 => DSP_top_sm_bot_B(2),
        DSP_top_sm_bot_B3 => DSP_top_sm_bot_B(3),
        DSP_top_sm_bot_C0 => DSP_top_sm_bot_C(0),
        DSP_top_sm_bot_C1 => DSP_top_sm_bot_C(1),
        DSP_top_sm_bot_C2 => DSP_top_sm_bot_C(2),
        DSP_top_sm_bot_C3 => DSP_top_sm_bot_C(3),
        DSP_top_sm_bot_C4 => DSP_top_sm_bot_C(4),
        DSP_top_sm_bot_C5 => DSP_top_sm_bot_C(5),
        DSP_top_sm_bot_C6 => DSP_top_sm_bot_C(6),
        DSP_top_sm_bot_C7 => DSP_top_sm_bot_C(7),
        DSP_top_sm_bot_C8 => DSP_top_sm_bot_C(8),
        DSP_top_sm_bot_C9 => DSP_top_sm_bot_C(9),
        DSP_top_sm_bot_clr0 => DSP_top_sm_bot_clr(0),
        DSP_A0 => DSP_A0,
        DSP_A1 => DSP_A1,
        DSP_A2 => DSP_A2,
        DSP_A3 => DSP_A3,
        DSP_A4 => DSP_A4,
        DSP_A5 => DSP_A5,
        DSP_A6 => DSP_A6,
        DSP_A7 => DSP_A7,
        DSP_B0 => DSP_B0,
        DSP_B1 => DSP_B1,
        DSP_B2 => DSP_B2,
        DSP_B3 => DSP_B3,
        DSP_B4 => DSP_B4,
        DSP_B5 => DSP_B5,
        DSP_B6 => DSP_B6,
        DSP_B7 => DSP_B7,
        DSP_C0 => DSP_C0,
        DSP_C1 => DSP_C1,
        DSP_C2 => DSP_C2,
        DSP_C3 => DSP_C3,
        DSP_C4 => DSP_C4,
        DSP_C5 => DSP_C5,
        DSP_C6 => DSP_C6,
        DSP_C7 => DSP_C7,
        DSP_C8 => DSP_C8,
        DSP_C9 => DSP_C9,
        DSP_C10 => DSP_C10,
        DSP_C11 => DSP_C11,
        DSP_C12 => DSP_C12,
        DSP_C13 => DSP_C13,
        DSP_C14 => DSP_C14,
        DSP_C15 => DSP_C15,
        DSP_C16 => DSP_C16,
        DSP_C17 => DSP_C17,
        DSP_C18 => DSP_C18,
        DSP_C19 => DSP_C19,
        DSP_clr => DSP_clr,
        DSP_Q0 => DSP_Q0,
        DSP_Q1 => DSP_Q1,
        DSP_Q2 => DSP_Q2,
        DSP_Q3 => DSP_Q3,
        DSP_Q4 => DSP_Q4,
        DSP_Q5 => DSP_Q5,
        DSP_Q6 => DSP_Q6,
        DSP_Q7 => DSP_Q7,
        DSP_Q8 => DSP_Q8,
        DSP_Q9 => DSP_Q9,
        DSP_Q10 => DSP_Q10,
        DSP_Q11 => DSP_Q11,
        DSP_Q12 => DSP_Q12,
        DSP_Q13 => DSP_Q13,
        DSP_Q14 => DSP_Q14,
        DSP_Q15 => DSP_Q15,
        DSP_Q16 => DSP_Q16,
        DSP_Q17 => DSP_Q17,
        DSP_Q18 => DSP_Q18,
        DSP_Q19 => DSP_Q19,
        DSP_top_sm_top_Q0 => DSP_top_sm_top_Q(0),
        DSP_top_sm_top_Q1 => DSP_top_sm_top_Q(1),
        DSP_top_sm_top_Q2 => DSP_top_sm_top_Q(2),
        DSP_top_sm_top_Q3 => DSP_top_sm_top_Q(3),
        DSP_top_sm_top_Q4 => DSP_top_sm_top_Q(4),
        DSP_top_sm_top_Q5 => DSP_top_sm_top_Q(5),
        DSP_top_sm_top_Q6 => DSP_top_sm_top_Q(6),
        DSP_top_sm_top_Q7 => DSP_top_sm_top_Q(7),
        DSP_top_sm_top_Q8 => DSP_top_sm_top_Q(8),
        DSP_top_sm_top_Q9 => DSP_top_sm_top_Q(9),
        DSP_top_sm_bot_Q0 => DSP_top_sm_bot_Q(0),
        DSP_top_sm_bot_Q1 => DSP_top_sm_bot_Q(1),
        DSP_top_sm_bot_Q2 => DSP_top_sm_bot_Q(2),
        DSP_top_sm_bot_Q3 => DSP_top_sm_bot_Q(3),
        DSP_top_sm_bot_Q4 => DSP_top_sm_bot_Q(4),
        DSP_top_sm_bot_Q5 => DSP_top_sm_bot_Q(5),
        DSP_top_sm_bot_Q6 => DSP_top_sm_bot_Q(6),
        DSP_top_sm_bot_Q7 => DSP_top_sm_bot_Q(7),
        DSP_top_sm_bot_Q8 => DSP_top_sm_bot_Q(8),
        DSP_top_sm_bot_Q9 => DSP_top_sm_bot_Q(9)
    );

Inst_ST_DSP_MULADD : MULADD
    Port map(
        A(7) => DSP_A7,
        A(6) =>  DSP_A6,
        A(5) =>  DSP_A5,
        A(4) =>  DSP_A4,
        A(3) =>  DSP_A3,
        A(2) =>  DSP_A2,
        A(1) =>  DSP_A1,
        A(0) =>  DSP_A0,
        B(7) => DSP_B7,
        B(6) =>  DSP_B6,
        B(5) =>  DSP_B5,
        B(4) =>  DSP_B4,
        B(3) =>  DSP_B3,
        B(2) =>  DSP_B2,
        B(1) =>  DSP_B1,
        B(0) =>  DSP_B0,
        C(19) => DSP_C19,
        C(18) =>  DSP_C18,
        C(17) =>  DSP_C17,
        C(16) =>  DSP_C16,
        C(15) =>  DSP_C15,
        C(14) =>  DSP_C14,
        C(13) =>  DSP_C13,
        C(12) =>  DSP_C12,
        C(11) =>  DSP_C11,
        C(10) =>  DSP_C10,
        C(9) =>  DSP_C9,
        C(8) =>  DSP_C8,
        C(7) =>  DSP_C7,
        C(6) =>  DSP_C6,
        C(5) =>  DSP_C5,
        C(4) =>  DSP_C4,
        C(3) =>  DSP_C3,
        C(2) =>  DSP_C2,
        C(1) =>  DSP_C1,
        C(0) =>  DSP_C0,
        Q(19) => DSP_Q19,
        Q(18) =>  DSP_Q18,
        Q(17) =>  DSP_Q17,
        Q(16) =>  DSP_Q16,
        Q(15) =>  DSP_Q15,
        Q(14) =>  DSP_Q14,
        Q(13) =>  DSP_Q13,
        Q(12) =>  DSP_Q12,
        Q(11) =>  DSP_Q11,
        Q(10) =>  DSP_Q10,
        Q(9) =>  DSP_Q9,
        Q(8) =>  DSP_Q8,
        Q(7) =>  DSP_Q7,
        Q(6) =>  DSP_Q6,
        Q(5) =>  DSP_Q5,
        Q(4) =>  DSP_Q4,
        Q(3) =>  DSP_Q3,
        Q(2) =>  DSP_Q2,
        Q(1) =>  DSP_Q1,
        Q(0) =>  DSP_Q0,
        clr => DSP_clr,
        UserCLK => Tile_X0Y1_UserCLK,
        ConfigBits => ST_ConfigBits(6-1 downto 0)
    );

end architecture Behavioral;