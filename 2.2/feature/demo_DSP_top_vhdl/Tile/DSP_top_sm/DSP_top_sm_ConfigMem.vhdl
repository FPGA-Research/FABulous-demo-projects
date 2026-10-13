package attr_pack_DSP_top_sm_ConfigMem is
 attribute keep : string;
end package;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity DSP_top_sm_ConfigMem is
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
end entity DSP_top_sm_ConfigMem;

architecture Behavioral of DSP_top_sm_ConfigMem is



begin
 -- instantiate frame latches
Inst_frame12_bit5 : config_latch
    Port map(
        D => FrameData(5),
        E => FrameStrobe(12),
        Q => ConfigBits(0),
        QN => ConfigBits_N(0)
    );

Inst_frame12_bit4 : config_latch
    Port map(
        D => FrameData(4),
        E => FrameStrobe(12),
        Q => ConfigBits(1),
        QN => ConfigBits_N(1)
    );

Inst_frame12_bit3 : config_latch
    Port map(
        D => FrameData(3),
        E => FrameStrobe(12),
        Q => ConfigBits(2),
        QN => ConfigBits_N(2)
    );

Inst_frame12_bit2 : config_latch
    Port map(
        D => FrameData(2),
        E => FrameStrobe(12),
        Q => ConfigBits(3),
        QN => ConfigBits_N(3)
    );

Inst_frame12_bit1 : config_latch
    Port map(
        D => FrameData(1),
        E => FrameStrobe(12),
        Q => ConfigBits(4),
        QN => ConfigBits_N(4)
    );

Inst_frame12_bit0 : config_latch
    Port map(
        D => FrameData(0),
        E => FrameStrobe(12),
        Q => ConfigBits(5),
        QN => ConfigBits_N(5)
    );

end architecture Behavioral;