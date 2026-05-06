library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity W_IO_ConfigMem is
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
end entity W_IO_ConfigMem;

architecture Behavioral of W_IO_ConfigMem is



begin
 -- instantiate frame latches
Inst_frame0_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(0),
        Q => ConfigBits(113),
        QN => ConfigBits_N(113)
    );

Inst_frame0_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(0),
        Q => ConfigBits(112),
        QN => ConfigBits_N(112)
    );

Inst_frame0_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(0),
        Q => ConfigBits(111),
        QN => ConfigBits_N(111)
    );

Inst_frame0_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(0),
        Q => ConfigBits(110),
        QN => ConfigBits_N(110)
    );

Inst_frame0_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(0),
        Q => ConfigBits(109),
        QN => ConfigBits_N(109)
    );

Inst_frame0_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(0),
        Q => ConfigBits(108),
        QN => ConfigBits_N(108)
    );

Inst_frame0_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(0),
        Q => ConfigBits(107),
        QN => ConfigBits_N(107)
    );

Inst_frame0_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(0),
        Q => ConfigBits(106),
        QN => ConfigBits_N(106)
    );

Inst_frame0_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(0),
        Q => ConfigBits(105),
        QN => ConfigBits_N(105)
    );

Inst_frame0_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(0),
        Q => ConfigBits(104),
        QN => ConfigBits_N(104)
    );

Inst_frame0_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(0),
        Q => ConfigBits(103),
        QN => ConfigBits_N(103)
    );

Inst_frame0_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(0),
        Q => ConfigBits(102),
        QN => ConfigBits_N(102)
    );

Inst_frame0_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(0),
        Q => ConfigBits(101),
        QN => ConfigBits_N(101)
    );

Inst_frame0_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(0),
        Q => ConfigBits(100),
        QN => ConfigBits_N(100)
    );

Inst_frame0_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(0),
        Q => ConfigBits(99),
        QN => ConfigBits_N(99)
    );

Inst_frame0_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(0),
        Q => ConfigBits(98),
        QN => ConfigBits_N(98)
    );

Inst_frame0_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(0),
        Q => ConfigBits(97),
        QN => ConfigBits_N(97)
    );

Inst_frame0_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(0),
        Q => ConfigBits(96),
        QN => ConfigBits_N(96)
    );

Inst_frame0_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(0),
        Q => ConfigBits(95),
        QN => ConfigBits_N(95)
    );

Inst_frame0_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(0),
        Q => ConfigBits(94),
        QN => ConfigBits_N(94)
    );

Inst_frame0_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(0),
        Q => ConfigBits(93),
        QN => ConfigBits_N(93)
    );

Inst_frame0_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(0),
        Q => ConfigBits(92),
        QN => ConfigBits_N(92)
    );

Inst_frame0_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(0),
        Q => ConfigBits(91),
        QN => ConfigBits_N(91)
    );

Inst_frame0_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(0),
        Q => ConfigBits(90),
        QN => ConfigBits_N(90)
    );

Inst_frame0_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(0),
        Q => ConfigBits(89),
        QN => ConfigBits_N(89)
    );

Inst_frame0_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(0),
        Q => ConfigBits(88),
        QN => ConfigBits_N(88)
    );

Inst_frame0_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(0),
        Q => ConfigBits(87),
        QN => ConfigBits_N(87)
    );

Inst_frame0_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(0),
        Q => ConfigBits(86),
        QN => ConfigBits_N(86)
    );

Inst_frame0_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(0),
        Q => ConfigBits(85),
        QN => ConfigBits_N(85)
    );

Inst_frame0_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(0),
        Q => ConfigBits(84),
        QN => ConfigBits_N(84)
    );

Inst_frame0_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(0),
        Q => ConfigBits(83),
        QN => ConfigBits_N(83)
    );

Inst_frame0_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(0),
        Q => ConfigBits(82),
        QN => ConfigBits_N(82)
    );

Inst_frame1_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(1),
        Q => ConfigBits(81),
        QN => ConfigBits_N(81)
    );

Inst_frame1_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(1),
        Q => ConfigBits(80),
        QN => ConfigBits_N(80)
    );

Inst_frame1_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(1),
        Q => ConfigBits(79),
        QN => ConfigBits_N(79)
    );

Inst_frame1_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(1),
        Q => ConfigBits(78),
        QN => ConfigBits_N(78)
    );

Inst_frame1_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(1),
        Q => ConfigBits(77),
        QN => ConfigBits_N(77)
    );

Inst_frame1_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(1),
        Q => ConfigBits(76),
        QN => ConfigBits_N(76)
    );

Inst_frame1_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(1),
        Q => ConfigBits(75),
        QN => ConfigBits_N(75)
    );

Inst_frame1_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(1),
        Q => ConfigBits(74),
        QN => ConfigBits_N(74)
    );

Inst_frame1_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(1),
        Q => ConfigBits(73),
        QN => ConfigBits_N(73)
    );

Inst_frame1_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(1),
        Q => ConfigBits(72),
        QN => ConfigBits_N(72)
    );

Inst_frame1_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(1),
        Q => ConfigBits(71),
        QN => ConfigBits_N(71)
    );

Inst_frame1_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(1),
        Q => ConfigBits(70),
        QN => ConfigBits_N(70)
    );

Inst_frame1_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(1),
        Q => ConfigBits(69),
        QN => ConfigBits_N(69)
    );

Inst_frame1_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(1),
        Q => ConfigBits(68),
        QN => ConfigBits_N(68)
    );

Inst_frame1_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(1),
        Q => ConfigBits(67),
        QN => ConfigBits_N(67)
    );

Inst_frame1_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(1),
        Q => ConfigBits(66),
        QN => ConfigBits_N(66)
    );

Inst_frame1_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(1),
        Q => ConfigBits(65),
        QN => ConfigBits_N(65)
    );

Inst_frame1_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(1),
        Q => ConfigBits(64),
        QN => ConfigBits_N(64)
    );

Inst_frame1_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(1),
        Q => ConfigBits(63),
        QN => ConfigBits_N(63)
    );

Inst_frame1_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(1),
        Q => ConfigBits(62),
        QN => ConfigBits_N(62)
    );

Inst_frame1_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(1),
        Q => ConfigBits(61),
        QN => ConfigBits_N(61)
    );

Inst_frame1_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(1),
        Q => ConfigBits(60),
        QN => ConfigBits_N(60)
    );

Inst_frame1_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(1),
        Q => ConfigBits(59),
        QN => ConfigBits_N(59)
    );

Inst_frame1_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(1),
        Q => ConfigBits(58),
        QN => ConfigBits_N(58)
    );

Inst_frame1_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(1),
        Q => ConfigBits(57),
        QN => ConfigBits_N(57)
    );

Inst_frame1_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(1),
        Q => ConfigBits(56),
        QN => ConfigBits_N(56)
    );

Inst_frame1_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(1),
        Q => ConfigBits(55),
        QN => ConfigBits_N(55)
    );

Inst_frame1_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(1),
        Q => ConfigBits(54),
        QN => ConfigBits_N(54)
    );

Inst_frame1_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(1),
        Q => ConfigBits(53),
        QN => ConfigBits_N(53)
    );

Inst_frame1_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(1),
        Q => ConfigBits(52),
        QN => ConfigBits_N(52)
    );

Inst_frame1_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(1),
        Q => ConfigBits(51),
        QN => ConfigBits_N(51)
    );

Inst_frame1_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(1),
        Q => ConfigBits(50),
        QN => ConfigBits_N(50)
    );

Inst_frame2_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(2),
        Q => ConfigBits(49),
        QN => ConfigBits_N(49)
    );

Inst_frame2_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(2),
        Q => ConfigBits(48),
        QN => ConfigBits_N(48)
    );

Inst_frame2_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(2),
        Q => ConfigBits(47),
        QN => ConfigBits_N(47)
    );

Inst_frame2_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(2),
        Q => ConfigBits(46),
        QN => ConfigBits_N(46)
    );

Inst_frame2_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(2),
        Q => ConfigBits(45),
        QN => ConfigBits_N(45)
    );

Inst_frame2_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(2),
        Q => ConfigBits(44),
        QN => ConfigBits_N(44)
    );

Inst_frame2_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(2),
        Q => ConfigBits(43),
        QN => ConfigBits_N(43)
    );

Inst_frame2_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(2),
        Q => ConfigBits(42),
        QN => ConfigBits_N(42)
    );

Inst_frame2_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(2),
        Q => ConfigBits(41),
        QN => ConfigBits_N(41)
    );

Inst_frame2_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(2),
        Q => ConfigBits(40),
        QN => ConfigBits_N(40)
    );

Inst_frame2_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(2),
        Q => ConfigBits(39),
        QN => ConfigBits_N(39)
    );

Inst_frame2_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(2),
        Q => ConfigBits(38),
        QN => ConfigBits_N(38)
    );

Inst_frame2_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(2),
        Q => ConfigBits(37),
        QN => ConfigBits_N(37)
    );

Inst_frame2_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(2),
        Q => ConfigBits(36),
        QN => ConfigBits_N(36)
    );

Inst_frame2_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(2),
        Q => ConfigBits(35),
        QN => ConfigBits_N(35)
    );

Inst_frame2_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(2),
        Q => ConfigBits(34),
        QN => ConfigBits_N(34)
    );

Inst_frame2_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(2),
        Q => ConfigBits(33),
        QN => ConfigBits_N(33)
    );

Inst_frame2_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(2),
        Q => ConfigBits(32),
        QN => ConfigBits_N(32)
    );

Inst_frame2_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(2),
        Q => ConfigBits(31),
        QN => ConfigBits_N(31)
    );

Inst_frame2_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(2),
        Q => ConfigBits(30),
        QN => ConfigBits_N(30)
    );

Inst_frame2_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(2),
        Q => ConfigBits(29),
        QN => ConfigBits_N(29)
    );

Inst_frame2_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(2),
        Q => ConfigBits(28),
        QN => ConfigBits_N(28)
    );

Inst_frame2_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(2),
        Q => ConfigBits(27),
        QN => ConfigBits_N(27)
    );

Inst_frame2_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(2),
        Q => ConfigBits(26),
        QN => ConfigBits_N(26)
    );

Inst_frame2_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(2),
        Q => ConfigBits(25),
        QN => ConfigBits_N(25)
    );

Inst_frame2_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(2),
        Q => ConfigBits(24),
        QN => ConfigBits_N(24)
    );

Inst_frame2_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(2),
        Q => ConfigBits(23),
        QN => ConfigBits_N(23)
    );

Inst_frame2_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(2),
        Q => ConfigBits(22),
        QN => ConfigBits_N(22)
    );

Inst_frame2_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(2),
        Q => ConfigBits(21),
        QN => ConfigBits_N(21)
    );

Inst_frame2_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(2),
        Q => ConfigBits(20),
        QN => ConfigBits_N(20)
    );

Inst_frame2_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(2),
        Q => ConfigBits(19),
        QN => ConfigBits_N(19)
    );

Inst_frame2_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(2),
        Q => ConfigBits(18),
        QN => ConfigBits_N(18)
    );

Inst_frame3_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(3),
        Q => ConfigBits(17),
        QN => ConfigBits_N(17)
    );

Inst_frame3_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(3),
        Q => ConfigBits(16),
        QN => ConfigBits_N(16)
    );

Inst_frame3_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(3),
        Q => ConfigBits(15),
        QN => ConfigBits_N(15)
    );

Inst_frame3_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(3),
        Q => ConfigBits(14),
        QN => ConfigBits_N(14)
    );

Inst_frame3_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(3),
        Q => ConfigBits(13),
        QN => ConfigBits_N(13)
    );

Inst_frame3_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(3),
        Q => ConfigBits(12),
        QN => ConfigBits_N(12)
    );

Inst_frame3_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(3),
        Q => ConfigBits(11),
        QN => ConfigBits_N(11)
    );

Inst_frame3_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(3),
        Q => ConfigBits(10),
        QN => ConfigBits_N(10)
    );

Inst_frame3_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(3),
        Q => ConfigBits(9),
        QN => ConfigBits_N(9)
    );

Inst_frame3_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(3),
        Q => ConfigBits(8),
        QN => ConfigBits_N(8)
    );

Inst_frame3_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(3),
        Q => ConfigBits(7),
        QN => ConfigBits_N(7)
    );

Inst_frame3_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(3),
        Q => ConfigBits(6),
        QN => ConfigBits_N(6)
    );

Inst_frame3_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(3),
        Q => ConfigBits(5),
        QN => ConfigBits_N(5)
    );

Inst_frame3_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(3),
        Q => ConfigBits(4),
        QN => ConfigBits_N(4)
    );

Inst_frame3_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(3),
        Q => ConfigBits(3),
        QN => ConfigBits_N(3)
    );

Inst_frame3_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(3),
        Q => ConfigBits(2),
        QN => ConfigBits_N(2)
    );

Inst_frame3_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(3),
        Q => ConfigBits(1),
        QN => ConfigBits_N(1)
    );

Inst_frame3_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(3),
        Q => ConfigBits(0),
        QN => ConfigBits_N(0)
    );

end architecture Behavioral;