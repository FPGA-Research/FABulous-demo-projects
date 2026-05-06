library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity LUT4AB_ConfigMem is
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
end entity LUT4AB_ConfigMem;

architecture Behavioral of LUT4AB_ConfigMem is



begin
 -- instantiate frame latches
Inst_Frame0_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(0),
        Q => ConfigBits(242),
        QN => ConfigBits_N(242)
    );

Inst_Frame0_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(0),
        Q => ConfigBits(243),
        QN => ConfigBits_N(243)
    );

Inst_Frame0_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(0),
        Q => ConfigBits(247),
        QN => ConfigBits_N(247)
    );

Inst_Frame0_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(0),
        Q => ConfigBits(248),
        QN => ConfigBits_N(248)
    );

Inst_Frame0_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(0),
        Q => ConfigBits(259),
        QN => ConfigBits_N(259)
    );

Inst_Frame0_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(0),
        Q => ConfigBits(261),
        QN => ConfigBits_N(261)
    );

Inst_Frame0_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(0),
        Q => ConfigBits(263),
        QN => ConfigBits_N(263)
    );

Inst_Frame0_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(0),
        Q => ConfigBits(240),
        QN => ConfigBits_N(240)
    );

Inst_Frame0_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(0),
        Q => ConfigBits(241),
        QN => ConfigBits_N(241)
    );

Inst_Frame0_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(0),
        Q => ConfigBits(157),
        QN => ConfigBits_N(157)
    );

Inst_Frame0_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(0),
        Q => ConfigBits(158),
        QN => ConfigBits_N(158)
    );

Inst_Frame0_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(0),
        Q => ConfigBits(159),
        QN => ConfigBits_N(159)
    );

Inst_Frame0_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(0),
        Q => ConfigBits(568),
        QN => ConfigBits_N(568)
    );

Inst_Frame0_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(0),
        Q => ConfigBits(576),
        QN => ConfigBits_N(576)
    );

Inst_Frame0_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(0),
        Q => ConfigBits(577),
        QN => ConfigBits_N(577)
    );

Inst_Frame0_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(0),
        Q => ConfigBits(558),
        QN => ConfigBits_N(558)
    );

Inst_Frame0_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(0),
        Q => ConfigBits(502),
        QN => ConfigBits_N(502)
    );

Inst_Frame0_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(0),
        Q => ConfigBits(472),
        QN => ConfigBits_N(472)
    );

Inst_Frame0_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(0),
        Q => ConfigBits(473),
        QN => ConfigBits_N(473)
    );

Inst_Frame0_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(0),
        Q => ConfigBits(481),
        QN => ConfigBits_N(481)
    );

Inst_Frame0_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(0),
        Q => ConfigBits(462),
        QN => ConfigBits_N(462)
    );

Inst_Frame0_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(0),
        Q => ConfigBits(413),
        QN => ConfigBits_N(413)
    );

Inst_Frame0_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(0),
        Q => ConfigBits(397),
        QN => ConfigBits_N(397)
    );

Inst_Frame0_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(0),
        Q => ConfigBits(389),
        QN => ConfigBits_N(389)
    );

Inst_Frame1_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(1),
        Q => ConfigBits(249),
        QN => ConfigBits_N(249)
    );

Inst_Frame1_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(1),
        Q => ConfigBits(250),
        QN => ConfigBits_N(250)
    );

Inst_Frame1_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(1),
        Q => ConfigBits(255),
        QN => ConfigBits_N(255)
    );

Inst_Frame1_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(1),
        Q => ConfigBits(256),
        QN => ConfigBits_N(256)
    );

Inst_Frame1_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(1),
        Q => ConfigBits(260),
        QN => ConfigBits_N(260)
    );

Inst_Frame1_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(1),
        Q => ConfigBits(262),
        QN => ConfigBits_N(262)
    );

Inst_Frame1_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(1),
        Q => ConfigBits(563),
        QN => ConfigBits_N(563)
    );

Inst_Frame1_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(1),
        Q => ConfigBits(565),
        QN => ConfigBits_N(565)
    );

Inst_Frame1_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(1),
        Q => ConfigBits(569),
        QN => ConfigBits_N(569)
    );

Inst_Frame1_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(1),
        Q => ConfigBits(570),
        QN => ConfigBits_N(570)
    );

Inst_Frame1_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(1),
        Q => ConfigBits(571),
        QN => ConfigBits_N(571)
    );

Inst_Frame1_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(1),
        Q => ConfigBits(572),
        QN => ConfigBits_N(572)
    );

Inst_Frame1_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(1),
        Q => ConfigBits(573),
        QN => ConfigBits_N(573)
    );

Inst_Frame1_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(1),
        Q => ConfigBits(578),
        QN => ConfigBits_N(578)
    );

Inst_Frame1_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(1),
        Q => ConfigBits(559),
        QN => ConfigBits_N(559)
    );

Inst_Frame1_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(1),
        Q => ConfigBits(560),
        QN => ConfigBits_N(560)
    );

Inst_Frame1_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(1),
        Q => ConfigBits(530),
        QN => ConfigBits_N(530)
    );

Inst_Frame1_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(1),
        Q => ConfigBits(534),
        QN => ConfigBits_N(534)
    );

Inst_Frame1_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(1),
        Q => ConfigBits(537),
        QN => ConfigBits_N(537)
    );

Inst_Frame1_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(1),
        Q => ConfigBits(542),
        QN => ConfigBits_N(542)
    );

Inst_Frame1_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(1),
        Q => ConfigBits(543),
        QN => ConfigBits_N(543)
    );

Inst_Frame1_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(1),
        Q => ConfigBits(526),
        QN => ConfigBits_N(526)
    );

Inst_Frame1_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(1),
        Q => ConfigBits(527),
        QN => ConfigBits_N(527)
    );

Inst_Frame1_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(1),
        Q => ConfigBits(504),
        QN => ConfigBits_N(504)
    );

Inst_Frame1_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(1),
        Q => ConfigBits(480),
        QN => ConfigBits_N(480)
    );

Inst_Frame1_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(1),
        Q => ConfigBits(463),
        QN => ConfigBits_N(463)
    );

Inst_Frame1_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(1),
        Q => ConfigBits(422),
        QN => ConfigBits_N(422)
    );

Inst_Frame1_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(1),
        Q => ConfigBits(386),
        QN => ConfigBits_N(386)
    );

Inst_Frame1_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(1),
        Q => ConfigBits(388),
        QN => ConfigBits_N(388)
    );

Inst_Frame2_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(2),
        Q => ConfigBits(264),
        QN => ConfigBits_N(264)
    );

Inst_Frame2_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(2),
        Q => ConfigBits(265),
        QN => ConfigBits_N(265)
    );

Inst_Frame2_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(2),
        Q => ConfigBits(251),
        QN => ConfigBits_N(251)
    );

Inst_Frame2_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(2),
        Q => ConfigBits(257),
        QN => ConfigBits_N(257)
    );

Inst_Frame2_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(2),
        Q => ConfigBits(163),
        QN => ConfigBits_N(163)
    );

Inst_Frame2_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(2),
        Q => ConfigBits(167),
        QN => ConfigBits_N(167)
    );

Inst_Frame2_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(2),
        Q => ConfigBits(564),
        QN => ConfigBits_N(564)
    );

Inst_Frame2_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(2),
        Q => ConfigBits(561),
        QN => ConfigBits_N(561)
    );

Inst_Frame2_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(2),
        Q => ConfigBits(531),
        QN => ConfigBits_N(531)
    );

Inst_Frame2_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(2),
        Q => ConfigBits(535),
        QN => ConfigBits_N(535)
    );

Inst_Frame2_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(2),
        Q => ConfigBits(536),
        QN => ConfigBits_N(536)
    );

Inst_Frame2_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(2),
        Q => ConfigBits(544),
        QN => ConfigBits_N(544)
    );

Inst_Frame2_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(2),
        Q => ConfigBits(528),
        QN => ConfigBits_N(528)
    );

Inst_Frame2_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(2),
        Q => ConfigBits(529),
        QN => ConfigBits_N(529)
    );

Inst_Frame2_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(2),
        Q => ConfigBits(498),
        QN => ConfigBits_N(498)
    );

Inst_Frame2_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(2),
        Q => ConfigBits(499),
        QN => ConfigBits_N(499)
    );

Inst_Frame2_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(2),
        Q => ConfigBits(503),
        QN => ConfigBits_N(503)
    );

Inst_Frame2_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(2),
        Q => ConfigBits(494),
        QN => ConfigBits_N(494)
    );

Inst_Frame2_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(2),
        Q => ConfigBits(474),
        QN => ConfigBits_N(474)
    );

Inst_Frame2_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(2),
        Q => ConfigBits(475),
        QN => ConfigBits_N(475)
    );

Inst_Frame2_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(2),
        Q => ConfigBits(483),
        QN => ConfigBits_N(483)
    );

Inst_Frame2_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(2),
        Q => ConfigBits(461),
        QN => ConfigBits_N(461)
    );

Inst_Frame2_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(2),
        Q => ConfigBits(464),
        QN => ConfigBits_N(464)
    );

Inst_Frame2_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(2),
        Q => ConfigBits(439),
        QN => ConfigBits_N(439)
    );

Inst_Frame2_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(2),
        Q => ConfigBits(423),
        QN => ConfigBits_N(423)
    );

Inst_Frame2_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(2),
        Q => ConfigBits(374),
        QN => ConfigBits_N(374)
    );

Inst_Frame2_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(2),
        Q => ConfigBits(366),
        QN => ConfigBits_N(366)
    );

Inst_Frame2_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(2),
        Q => ConfigBits(348),
        QN => ConfigBits_N(348)
    );

Inst_Frame3_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(3),
        Q => ConfigBits(168),
        QN => ConfigBits_N(168)
    );

Inst_Frame3_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(3),
        Q => ConfigBits(186),
        QN => ConfigBits_N(186)
    );

Inst_Frame3_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(3),
        Q => ConfigBits(153),
        QN => ConfigBits_N(153)
    );

Inst_Frame3_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(3),
        Q => ConfigBits(162),
        QN => ConfigBits_N(162)
    );

Inst_Frame3_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(3),
        Q => ConfigBits(164),
        QN => ConfigBits_N(164)
    );

Inst_Frame3_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(3),
        Q => ConfigBits(166),
        QN => ConfigBits_N(166)
    );

Inst_Frame3_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(3),
        Q => ConfigBits(67),
        QN => ConfigBits_N(67)
    );

Inst_Frame3_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(3),
        Q => ConfigBits(533),
        QN => ConfigBits_N(533)
    );

Inst_Frame3_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(3),
        Q => ConfigBits(545),
        QN => ConfigBits_N(545)
    );

Inst_Frame3_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(3),
        Q => ConfigBits(546),
        QN => ConfigBits_N(546)
    );

Inst_Frame3_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(3),
        Q => ConfigBits(547),
        QN => ConfigBits_N(547)
    );

Inst_Frame3_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(3),
        Q => ConfigBits(500),
        QN => ConfigBits_N(500)
    );

Inst_Frame3_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(3),
        Q => ConfigBits(501),
        QN => ConfigBits_N(501)
    );

Inst_Frame3_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(3),
        Q => ConfigBits(505),
        QN => ConfigBits_N(505)
    );

Inst_Frame3_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(3),
        Q => ConfigBits(491),
        QN => ConfigBits_N(491)
    );

Inst_Frame3_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(3),
        Q => ConfigBits(495),
        QN => ConfigBits_N(495)
    );

Inst_Frame3_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(3),
        Q => ConfigBits(496),
        QN => ConfigBits_N(496)
    );

Inst_Frame3_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(3),
        Q => ConfigBits(497),
        QN => ConfigBits_N(497)
    );

Inst_Frame3_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(3),
        Q => ConfigBits(476),
        QN => ConfigBits_N(476)
    );

Inst_Frame3_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(3),
        Q => ConfigBits(477),
        QN => ConfigBits_N(477)
    );

Inst_Frame3_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(3),
        Q => ConfigBits(465),
        QN => ConfigBits_N(465)
    );

Inst_Frame3_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(3),
        Q => ConfigBits(438),
        QN => ConfigBits_N(438)
    );

Inst_Frame3_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(3),
        Q => ConfigBits(446),
        QN => ConfigBits_N(446)
    );

Inst_Frame3_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(3),
        Q => ConfigBits(450),
        QN => ConfigBits_N(450)
    );

Inst_Frame3_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(3),
        Q => ConfigBits(451),
        QN => ConfigBits_N(451)
    );

Inst_Frame3_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(3),
        Q => ConfigBits(430),
        QN => ConfigBits_N(430)
    );

Inst_Frame3_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(3),
        Q => ConfigBits(431),
        QN => ConfigBits_N(431)
    );

Inst_Frame3_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(3),
        Q => ConfigBits(367),
        QN => ConfigBits_N(367)
    );

Inst_Frame3_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(3),
        Q => ConfigBits(349),
        QN => ConfigBits_N(349)
    );

Inst_Frame3_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(3),
        Q => ConfigBits(353),
        QN => ConfigBits_N(353)
    );

Inst_Frame3_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(3),
        Q => ConfigBits(336),
        QN => ConfigBits_N(336)
    );

Inst_Frame4_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(4),
        Q => ConfigBits(604),
        QN => ConfigBits_N(604)
    );

Inst_Frame4_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(4),
        Q => ConfigBits(216),
        QN => ConfigBits_N(216)
    );

Inst_Frame4_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(4),
        Q => ConfigBits(203),
        QN => ConfigBits_N(203)
    );

Inst_Frame4_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(4),
        Q => ConfigBits(169),
        QN => ConfigBits_N(169)
    );

Inst_Frame4_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(4),
        Q => ConfigBits(179),
        QN => ConfigBits_N(179)
    );

Inst_Frame4_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(4),
        Q => ConfigBits(184),
        QN => ConfigBits_N(184)
    );

Inst_Frame4_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(4),
        Q => ConfigBits(176),
        QN => ConfigBits_N(176)
    );

Inst_Frame4_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(4),
        Q => ConfigBits(152),
        QN => ConfigBits_N(152)
    );

Inst_Frame4_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(4),
        Q => ConfigBits(165),
        QN => ConfigBits_N(165)
    );

Inst_Frame4_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(4),
        Q => ConfigBits(532),
        QN => ConfigBits_N(532)
    );

Inst_Frame4_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(4),
        Q => ConfigBits(549),
        QN => ConfigBits_N(549)
    );

Inst_Frame4_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(4),
        Q => ConfigBits(550),
        QN => ConfigBits_N(550)
    );

Inst_Frame4_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(4),
        Q => ConfigBits(489),
        QN => ConfigBits_N(489)
    );

Inst_Frame4_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(4),
        Q => ConfigBits(509),
        QN => ConfigBits_N(509)
    );

Inst_Frame4_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(4),
        Q => ConfigBits(514),
        QN => ConfigBits_N(514)
    );

Inst_Frame4_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(4),
        Q => ConfigBits(515),
        QN => ConfigBits_N(515)
    );

Inst_Frame4_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(4),
        Q => ConfigBits(517),
        QN => ConfigBits_N(517)
    );

Inst_Frame4_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(4),
        Q => ConfigBits(466),
        QN => ConfigBits_N(466)
    );

Inst_Frame4_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(4),
        Q => ConfigBits(468),
        QN => ConfigBits_N(468)
    );

Inst_Frame4_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(4),
        Q => ConfigBits(469),
        QN => ConfigBits_N(469)
    );

Inst_Frame4_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(4),
        Q => ConfigBits(482),
        QN => ConfigBits_N(482)
    );

Inst_Frame4_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(4),
        Q => ConfigBits(486),
        QN => ConfigBits_N(486)
    );

Inst_Frame4_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(4),
        Q => ConfigBits(447),
        QN => ConfigBits_N(447)
    );

Inst_Frame4_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(4),
        Q => ConfigBits(452),
        QN => ConfigBits_N(452)
    );

Inst_Frame4_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(4),
        Q => ConfigBits(455),
        QN => ConfigBits_N(455)
    );

Inst_Frame4_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(4),
        Q => ConfigBits(428),
        QN => ConfigBits_N(428)
    );

Inst_Frame4_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(4),
        Q => ConfigBits(370),
        QN => ConfigBits_N(370)
    );

Inst_Frame4_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(4),
        Q => ConfigBits(371),
        QN => ConfigBits_N(371)
    );

Inst_Frame4_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(4),
        Q => ConfigBits(375),
        QN => ConfigBits_N(375)
    );

Inst_Frame4_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(4),
        Q => ConfigBits(363),
        QN => ConfigBits_N(363)
    );

Inst_Frame4_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(4),
        Q => ConfigBits(352),
        QN => ConfigBits_N(352)
    );

Inst_Frame4_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(4),
        Q => ConfigBits(358),
        QN => ConfigBits_N(358)
    );

Inst_Frame5_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(5),
        Q => ConfigBits(589),
        QN => ConfigBits_N(589)
    );

Inst_Frame5_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(5),
        Q => ConfigBits(210),
        QN => ConfigBits_N(210)
    );

Inst_Frame5_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(5),
        Q => ConfigBits(202),
        QN => ConfigBits_N(202)
    );

Inst_Frame5_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(5),
        Q => ConfigBits(229),
        QN => ConfigBits_N(229)
    );

Inst_Frame5_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(5),
        Q => ConfigBits(205),
        QN => ConfigBits_N(205)
    );

Inst_Frame5_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(5),
        Q => ConfigBits(178),
        QN => ConfigBits_N(178)
    );

Inst_Frame5_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(5),
        Q => ConfigBits(185),
        QN => ConfigBits_N(185)
    );

Inst_Frame5_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(5),
        Q => ConfigBits(173),
        QN => ConfigBits_N(173)
    );

Inst_Frame5_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(5),
        Q => ConfigBits(174),
        QN => ConfigBits_N(174)
    );

Inst_Frame5_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(5),
        Q => ConfigBits(175),
        QN => ConfigBits_N(175)
    );

Inst_Frame5_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(5),
        Q => ConfigBits(177),
        QN => ConfigBits_N(177)
    );

Inst_Frame5_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(5),
        Q => ConfigBits(126),
        QN => ConfigBits_N(126)
    );

Inst_Frame5_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(5),
        Q => ConfigBits(548),
        QN => ConfigBits_N(548)
    );

Inst_Frame5_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(5),
        Q => ConfigBits(551),
        QN => ConfigBits_N(551)
    );

Inst_Frame5_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(5),
        Q => ConfigBits(506),
        QN => ConfigBits_N(506)
    );

Inst_Frame5_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(5),
        Q => ConfigBits(510),
        QN => ConfigBits_N(510)
    );

Inst_Frame5_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(5),
        Q => ConfigBits(511),
        QN => ConfigBits_N(511)
    );

Inst_Frame5_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(5),
        Q => ConfigBits(516),
        QN => ConfigBits_N(516)
    );

Inst_Frame5_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(5),
        Q => ConfigBits(457),
        QN => ConfigBits_N(457)
    );

Inst_Frame5_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(5),
        Q => ConfigBits(458),
        QN => ConfigBits_N(458)
    );

Inst_Frame5_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(5),
        Q => ConfigBits(436),
        QN => ConfigBits_N(436)
    );

Inst_Frame5_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(5),
        Q => ConfigBits(437),
        QN => ConfigBits_N(437)
    );

Inst_Frame5_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(5),
        Q => ConfigBits(440),
        QN => ConfigBits_N(440)
    );

Inst_Frame5_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(5),
        Q => ConfigBits(441),
        QN => ConfigBits_N(441)
    );

Inst_Frame5_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(5),
        Q => ConfigBits(444),
        QN => ConfigBits_N(444)
    );

Inst_Frame5_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(5),
        Q => ConfigBits(448),
        QN => ConfigBits_N(448)
    );

Inst_Frame5_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(5),
        Q => ConfigBits(453),
        QN => ConfigBits_N(453)
    );

Inst_Frame5_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(5),
        Q => ConfigBits(454),
        QN => ConfigBits_N(454)
    );

Inst_Frame5_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(5),
        Q => ConfigBits(429),
        QN => ConfigBits_N(429)
    );

Inst_Frame5_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(5),
        Q => ConfigBits(421),
        QN => ConfigBits_N(421)
    );

Inst_Frame5_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(5),
        Q => ConfigBits(346),
        QN => ConfigBits_N(346)
    );

Inst_Frame5_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(5),
        Q => ConfigBits(359),
        QN => ConfigBits_N(359)
    );

Inst_Frame6_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(6),
        Q => ConfigBits(605),
        QN => ConfigBits_N(605)
    );

Inst_Frame6_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(6),
        Q => ConfigBits(606),
        QN => ConfigBits_N(606)
    );

Inst_Frame6_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(6),
        Q => ConfigBits(211),
        QN => ConfigBits_N(211)
    );

Inst_Frame6_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(6),
        Q => ConfigBits(212),
        QN => ConfigBits_N(212)
    );

Inst_Frame6_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(6),
        Q => ConfigBits(213),
        QN => ConfigBits_N(213)
    );

Inst_Frame6_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(6),
        Q => ConfigBits(214),
        QN => ConfigBits_N(214)
    );

Inst_Frame6_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(6),
        Q => ConfigBits(231),
        QN => ConfigBits_N(231)
    );

Inst_Frame6_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(6),
        Q => ConfigBits(204),
        QN => ConfigBits_N(204)
    );

Inst_Frame6_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(6),
        Q => ConfigBits(206),
        QN => ConfigBits_N(206)
    );

Inst_Frame6_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(6),
        Q => ConfigBits(208),
        QN => ConfigBits_N(208)
    );

Inst_Frame6_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(6),
        Q => ConfigBits(181),
        QN => ConfigBits_N(181)
    );

Inst_Frame6_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(6),
        Q => ConfigBits(170),
        QN => ConfigBits_N(170)
    );

Inst_Frame6_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(6),
        Q => ConfigBits(119),
        QN => ConfigBits_N(119)
    );

Inst_Frame6_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(6),
        Q => ConfigBits(70),
        QN => ConfigBits_N(70)
    );

Inst_Frame6_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(6),
        Q => ConfigBits(30),
        QN => ConfigBits_N(30)
    );

Inst_Frame6_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(6),
        Q => ConfigBits(553),
        QN => ConfigBits_N(553)
    );

Inst_Frame6_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(6),
        Q => ConfigBits(507),
        QN => ConfigBits_N(507)
    );

Inst_Frame6_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(6),
        Q => ConfigBits(490),
        QN => ConfigBits_N(490)
    );

Inst_Frame6_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(6),
        Q => ConfigBits(513),
        QN => ConfigBits_N(513)
    );

Inst_Frame6_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(6),
        Q => ConfigBits(492),
        QN => ConfigBits_N(492)
    );

Inst_Frame6_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(6),
        Q => ConfigBits(456),
        QN => ConfigBits_N(456)
    );

Inst_Frame6_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(6),
        Q => ConfigBits(484),
        QN => ConfigBits_N(484)
    );

Inst_Frame6_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(6),
        Q => ConfigBits(485),
        QN => ConfigBits_N(485)
    );

Inst_Frame6_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(6),
        Q => ConfigBits(459),
        QN => ConfigBits_N(459)
    );

Inst_Frame6_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(6),
        Q => ConfigBits(487),
        QN => ConfigBits_N(487)
    );

Inst_Frame6_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(6),
        Q => ConfigBits(424),
        QN => ConfigBits_N(424)
    );

Inst_Frame6_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(6),
        Q => ConfigBits(425),
        QN => ConfigBits_N(425)
    );

Inst_Frame6_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(6),
        Q => ConfigBits(449),
        QN => ConfigBits_N(449)
    );

Inst_Frame6_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(6),
        Q => ConfigBits(433),
        QN => ConfigBits_N(433)
    );

Inst_Frame6_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(6),
        Q => ConfigBits(420),
        QN => ConfigBits_N(420)
    );

Inst_Frame6_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(6),
        Q => ConfigBits(347),
        QN => ConfigBits_N(347)
    );

Inst_Frame6_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(6),
        Q => ConfigBits(311),
        QN => ConfigBits_N(311)
    );

Inst_Frame7_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(7),
        Q => ConfigBits(596),
        QN => ConfigBits_N(596)
    );

Inst_Frame7_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(7),
        Q => ConfigBits(608),
        QN => ConfigBits_N(608)
    );

Inst_Frame7_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(7),
        Q => ConfigBits(609),
        QN => ConfigBits_N(609)
    );

Inst_Frame7_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(7),
        Q => ConfigBits(588),
        QN => ConfigBits_N(588)
    );

Inst_Frame7_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(7),
        Q => ConfigBits(590),
        QN => ConfigBits_N(590)
    );

Inst_Frame7_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(7),
        Q => ConfigBits(280),
        QN => ConfigBits_N(280)
    );

Inst_Frame7_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(7),
        Q => ConfigBits(236),
        QN => ConfigBits_N(236)
    );

Inst_Frame7_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(7),
        Q => ConfigBits(217),
        QN => ConfigBits_N(217)
    );

Inst_Frame7_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(7),
        Q => ConfigBits(180),
        QN => ConfigBits_N(180)
    );

Inst_Frame7_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(7),
        Q => ConfigBits(171),
        QN => ConfigBits_N(171)
    );

Inst_Frame7_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(7),
        Q => ConfigBits(172),
        QN => ConfigBits_N(172)
    );

Inst_Frame7_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(7),
        Q => ConfigBits(146),
        QN => ConfigBits_N(146)
    );

Inst_Frame7_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(7),
        Q => ConfigBits(160),
        QN => ConfigBits_N(160)
    );

Inst_Frame7_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(7),
        Q => ConfigBits(121),
        QN => ConfigBits_N(121)
    );

Inst_Frame7_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(7),
        Q => ConfigBits(552),
        QN => ConfigBits_N(552)
    );

Inst_Frame7_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(7),
        Q => ConfigBits(555),
        QN => ConfigBits_N(555)
    );

Inst_Frame7_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(7),
        Q => ConfigBits(582),
        QN => ConfigBits_N(582)
    );

Inst_Frame7_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(7),
        Q => ConfigBits(522),
        QN => ConfigBits_N(522)
    );

Inst_Frame7_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(7),
        Q => ConfigBits(540),
        QN => ConfigBits_N(540)
    );

Inst_Frame7_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(7),
        Q => ConfigBits(488),
        QN => ConfigBits_N(488)
    );

Inst_Frame7_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(7),
        Q => ConfigBits(508),
        QN => ConfigBits_N(508)
    );

Inst_Frame7_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(7),
        Q => ConfigBits(512),
        QN => ConfigBits_N(512)
    );

Inst_Frame7_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(7),
        Q => ConfigBits(519),
        QN => ConfigBits_N(519)
    );

Inst_Frame7_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(7),
        Q => ConfigBits(493),
        QN => ConfigBits_N(493)
    );

Inst_Frame7_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(7),
        Q => ConfigBits(460),
        QN => ConfigBits_N(460)
    );

Inst_Frame7_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(7),
        Q => ConfigBits(434),
        QN => ConfigBits_N(434)
    );

Inst_Frame7_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(7),
        Q => ConfigBits(435),
        QN => ConfigBits_N(435)
    );

Inst_Frame7_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(7),
        Q => ConfigBits(442),
        QN => ConfigBits_N(442)
    );

Inst_Frame7_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(7),
        Q => ConfigBits(402),
        QN => ConfigBits_N(402)
    );

Inst_Frame7_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(7),
        Q => ConfigBits(415),
        QN => ConfigBits_N(415)
    );

Inst_Frame7_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(7),
        Q => ConfigBits(385),
        QN => ConfigBits_N(385)
    );

Inst_Frame7_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(7),
        Q => ConfigBits(340),
        QN => ConfigBits_N(340)
    );

Inst_Frame8_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(8),
        Q => ConfigBits(597),
        QN => ConfigBits_N(597)
    );

Inst_Frame8_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(8),
        Q => ConfigBits(598),
        QN => ConfigBits_N(598)
    );

Inst_Frame8_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(8),
        Q => ConfigBits(600),
        QN => ConfigBits_N(600)
    );

Inst_Frame8_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(8),
        Q => ConfigBits(607),
        QN => ConfigBits_N(607)
    );

Inst_Frame8_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(8),
        Q => ConfigBits(286),
        QN => ConfigBits_N(286)
    );

Inst_Frame8_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(8),
        Q => ConfigBits(290),
        QN => ConfigBits_N(290)
    );

Inst_Frame8_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(8),
        Q => ConfigBits(244),
        QN => ConfigBits_N(244)
    );

Inst_Frame8_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(8),
        Q => ConfigBits(235),
        QN => ConfigBits_N(235)
    );

Inst_Frame8_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(8),
        Q => ConfigBits(215),
        QN => ConfigBits_N(215)
    );

Inst_Frame8_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(8),
        Q => ConfigBits(219),
        QN => ConfigBits_N(219)
    );

Inst_Frame8_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(8),
        Q => ConfigBits(230),
        QN => ConfigBits_N(230)
    );

Inst_Frame8_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(8),
        Q => ConfigBits(207),
        QN => ConfigBits_N(207)
    );

Inst_Frame8_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(8),
        Q => ConfigBits(209),
        QN => ConfigBits_N(209)
    );

Inst_Frame8_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(8),
        Q => ConfigBits(193),
        QN => ConfigBits_N(193)
    );

Inst_Frame8_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(8),
        Q => ConfigBits(194),
        QN => ConfigBits_N(194)
    );

Inst_Frame8_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(8),
        Q => ConfigBits(137),
        QN => ConfigBits_N(137)
    );

Inst_Frame8_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(8),
        Q => ConfigBits(161),
        QN => ConfigBits_N(161)
    );

Inst_Frame8_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(8),
        Q => ConfigBits(129),
        QN => ConfigBits_N(129)
    );

Inst_Frame8_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(8),
        Q => ConfigBits(554),
        QN => ConfigBits_N(554)
    );

Inst_Frame8_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(8),
        Q => ConfigBits(580),
        QN => ConfigBits_N(580)
    );

Inst_Frame8_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(8),
        Q => ConfigBits(520),
        QN => ConfigBits_N(520)
    );

Inst_Frame8_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(8),
        Q => ConfigBits(538),
        QN => ConfigBits_N(538)
    );

Inst_Frame8_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(8),
        Q => ConfigBits(539),
        QN => ConfigBits_N(539)
    );

Inst_Frame8_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(8),
        Q => ConfigBits(523),
        QN => ConfigBits_N(523)
    );

Inst_Frame8_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(8),
        Q => ConfigBits(518),
        QN => ConfigBits_N(518)
    );

Inst_Frame8_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(8),
        Q => ConfigBits(443),
        QN => ConfigBits_N(443)
    );

Inst_Frame8_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(8),
        Q => ConfigBits(426),
        QN => ConfigBits_N(426)
    );

Inst_Frame8_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(8),
        Q => ConfigBits(427),
        QN => ConfigBits_N(427)
    );

Inst_Frame8_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(8),
        Q => ConfigBits(432),
        QN => ConfigBits_N(432)
    );

Inst_Frame8_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(8),
        Q => ConfigBits(369),
        QN => ConfigBits_N(369)
    );

Inst_Frame8_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(8),
        Q => ConfigBits(329),
        QN => ConfigBits_N(329)
    );

Inst_Frame8_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(8),
        Q => ConfigBits(351),
        QN => ConfigBits_N(351)
    );

Inst_Frame9_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(9),
        Q => ConfigBits(599),
        QN => ConfigBits_N(599)
    );

Inst_Frame9_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(9),
        Q => ConfigBits(603),
        QN => ConfigBits_N(603)
    );

Inst_Frame9_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(9),
        Q => ConfigBits(591),
        QN => ConfigBits_N(591)
    );

Inst_Frame9_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(9),
        Q => ConfigBits(281),
        QN => ConfigBits_N(281)
    );

Inst_Frame9_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(9),
        Q => ConfigBits(292),
        QN => ConfigBits_N(292)
    );

Inst_Frame9_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(9),
        Q => ConfigBits(245),
        QN => ConfigBits_N(245)
    );

Inst_Frame9_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(9),
        Q => ConfigBits(237),
        QN => ConfigBits_N(237)
    );

Inst_Frame9_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(9),
        Q => ConfigBits(218),
        QN => ConfigBits_N(218)
    );

Inst_Frame9_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(9),
        Q => ConfigBits(195),
        QN => ConfigBits_N(195)
    );

Inst_Frame9_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(9),
        Q => ConfigBits(197),
        QN => ConfigBits_N(197)
    );

Inst_Frame9_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(9),
        Q => ConfigBits(136),
        QN => ConfigBits_N(136)
    );

Inst_Frame9_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(9),
        Q => ConfigBits(579),
        QN => ConfigBits_N(579)
    );

Inst_Frame9_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(9),
        Q => ConfigBits(583),
        QN => ConfigBits_N(583)
    );

Inst_Frame9_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(9),
        Q => ConfigBits(556),
        QN => ConfigBits_N(556)
    );

Inst_Frame9_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(9),
        Q => ConfigBits(541),
        QN => ConfigBits_N(541)
    );

Inst_Frame9_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(9),
        Q => ConfigBits(524),
        QN => ConfigBits_N(524)
    );

Inst_Frame9_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(9),
        Q => ConfigBits(525),
        QN => ConfigBits_N(525)
    );

Inst_Frame9_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(9),
        Q => ConfigBits(445),
        QN => ConfigBits_N(445)
    );

Inst_Frame9_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(9),
        Q => ConfigBits(414),
        QN => ConfigBits_N(414)
    );

Inst_Frame9_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(9),
        Q => ConfigBits(418),
        QN => ConfigBits_N(418)
    );

Inst_Frame9_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(9),
        Q => ConfigBits(419),
        QN => ConfigBits_N(419)
    );

Inst_Frame9_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(9),
        Q => ConfigBits(361),
        QN => ConfigBits_N(361)
    );

Inst_Frame9_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(9),
        Q => ConfigBits(378),
        QN => ConfigBits_N(378)
    );

Inst_Frame9_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(9),
        Q => ConfigBits(379),
        QN => ConfigBits_N(379)
    );

Inst_Frame9_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(9),
        Q => ConfigBits(382),
        QN => ConfigBits_N(382)
    );

Inst_Frame9_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(9),
        Q => ConfigBits(383),
        QN => ConfigBits_N(383)
    );

Inst_Frame9_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(9),
        Q => ConfigBits(384),
        QN => ConfigBits_N(384)
    );

Inst_Frame9_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(9),
        Q => ConfigBits(368),
        QN => ConfigBits_N(368)
    );

Inst_Frame9_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(9),
        Q => ConfigBits(328),
        QN => ConfigBits_N(328)
    );

Inst_Frame9_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(9),
        Q => ConfigBits(341),
        QN => ConfigBits_N(341)
    );

Inst_Frame9_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(9),
        Q => ConfigBits(350),
        QN => ConfigBits_N(350)
    );

Inst_Frame9_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(9),
        Q => ConfigBits(354),
        QN => ConfigBits_N(354)
    );

Inst_Frame10_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(10),
        Q => ConfigBits(601),
        QN => ConfigBits_N(601)
    );

Inst_Frame10_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(10),
        Q => ConfigBits(615),
        QN => ConfigBits_N(615)
    );

Inst_Frame10_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(10),
        Q => ConfigBits(270),
        QN => ConfigBits_N(270)
    );

Inst_Frame10_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(10),
        Q => ConfigBits(271),
        QN => ConfigBits_N(271)
    );

Inst_Frame10_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(10),
        Q => ConfigBits(232),
        QN => ConfigBits_N(232)
    );

Inst_Frame10_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(10),
        Q => ConfigBits(200),
        QN => ConfigBits_N(200)
    );

Inst_Frame10_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(10),
        Q => ConfigBits(220),
        QN => ConfigBits_N(220)
    );

Inst_Frame10_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(10),
        Q => ConfigBits(221),
        QN => ConfigBits_N(221)
    );

Inst_Frame10_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(10),
        Q => ConfigBits(222),
        QN => ConfigBits_N(222)
    );

Inst_Frame10_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(10),
        Q => ConfigBits(196),
        QN => ConfigBits_N(196)
    );

Inst_Frame10_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(10),
        Q => ConfigBits(199),
        QN => ConfigBits_N(199)
    );

Inst_Frame10_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(10),
        Q => ConfigBits(139),
        QN => ConfigBits_N(139)
    );

Inst_Frame10_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(10),
        Q => ConfigBits(115),
        QN => ConfigBits_N(115)
    );

Inst_Frame10_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(10),
        Q => ConfigBits(117),
        QN => ConfigBits_N(117)
    );

Inst_Frame10_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(10),
        Q => ConfigBits(118),
        QN => ConfigBits_N(118)
    );

Inst_Frame10_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(10),
        Q => ConfigBits(127),
        QN => ConfigBits_N(127)
    );

Inst_Frame10_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(10),
        Q => ConfigBits(133),
        QN => ConfigBits_N(133)
    );

Inst_Frame10_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(10),
        Q => ConfigBits(63),
        QN => ConfigBits_N(63)
    );

Inst_Frame10_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(10),
        Q => ConfigBits(581),
        QN => ConfigBits_N(581)
    );

Inst_Frame10_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(10),
        Q => ConfigBits(557),
        QN => ConfigBits_N(557)
    );

Inst_Frame10_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(10),
        Q => ConfigBits(411),
        QN => ConfigBits_N(411)
    );

Inst_Frame10_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(10),
        Q => ConfigBits(395),
        QN => ConfigBits_N(395)
    );

Inst_Frame10_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(10),
        Q => ConfigBits(398),
        QN => ConfigBits_N(398)
    );

Inst_Frame10_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(10),
        Q => ConfigBits(360),
        QN => ConfigBits_N(360)
    );

Inst_Frame10_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(10),
        Q => ConfigBits(376),
        QN => ConfigBits_N(376)
    );

Inst_Frame10_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(10),
        Q => ConfigBits(377),
        QN => ConfigBits_N(377)
    );

Inst_Frame10_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(10),
        Q => ConfigBits(380),
        QN => ConfigBits_N(380)
    );

Inst_Frame10_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(10),
        Q => ConfigBits(381),
        QN => ConfigBits_N(381)
    );

Inst_Frame10_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(10),
        Q => ConfigBits(390),
        QN => ConfigBits_N(390)
    );

Inst_Frame10_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(10),
        Q => ConfigBits(391),
        QN => ConfigBits_N(391)
    );

Inst_Frame10_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(10),
        Q => ConfigBits(338),
        QN => ConfigBits_N(338)
    );

Inst_Frame10_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(10),
        Q => ConfigBits(330),
        QN => ConfigBits_N(330)
    );

Inst_Frame11_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(11),
        Q => ConfigBits(584),
        QN => ConfigBits_N(584)
    );

Inst_Frame11_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(11),
        Q => ConfigBits(585),
        QN => ConfigBits_N(585)
    );

Inst_Frame11_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(11),
        Q => ConfigBits(602),
        QN => ConfigBits_N(602)
    );

Inst_Frame11_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(11),
        Q => ConfigBits(610),
        QN => ConfigBits_N(610)
    );

Inst_Frame11_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(11),
        Q => ConfigBits(233),
        QN => ConfigBits_N(233)
    );

Inst_Frame11_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(11),
        Q => ConfigBits(234),
        QN => ConfigBits_N(234)
    );

Inst_Frame11_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(11),
        Q => ConfigBits(201),
        QN => ConfigBits_N(201)
    );

Inst_Frame11_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(11),
        Q => ConfigBits(187),
        QN => ConfigBits_N(187)
    );

Inst_Frame11_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(11),
        Q => ConfigBits(188),
        QN => ConfigBits_N(188)
    );

Inst_Frame11_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(11),
        Q => ConfigBits(198),
        QN => ConfigBits_N(198)
    );

Inst_Frame11_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(11),
        Q => ConfigBits(151),
        QN => ConfigBits_N(151)
    );

Inst_Frame11_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(11),
        Q => ConfigBits(138),
        QN => ConfigBits_N(138)
    );

Inst_Frame11_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(11),
        Q => ConfigBits(140),
        QN => ConfigBits_N(140)
    );

Inst_Frame11_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(11),
        Q => ConfigBits(114),
        QN => ConfigBits_N(114)
    );

Inst_Frame11_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(11),
        Q => ConfigBits(120),
        QN => ConfigBits_N(120)
    );

Inst_Frame11_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(11),
        Q => ConfigBits(128),
        QN => ConfigBits_N(128)
    );

Inst_Frame11_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(11),
        Q => ConfigBits(134),
        QN => ConfigBits_N(134)
    );

Inst_Frame11_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(11),
        Q => ConfigBits(521),
        QN => ConfigBits_N(521)
    );

Inst_Frame11_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(11),
        Q => ConfigBits(403),
        QN => ConfigBits_N(403)
    );

Inst_Frame11_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(11),
        Q => ConfigBits(410),
        QN => ConfigBits_N(410)
    );

Inst_Frame11_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(11),
        Q => ConfigBits(394),
        QN => ConfigBits_N(394)
    );

Inst_Frame11_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(11),
        Q => ConfigBits(416),
        QN => ConfigBits_N(416)
    );

Inst_Frame11_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(11),
        Q => ConfigBits(417),
        QN => ConfigBits_N(417)
    );

Inst_Frame11_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(11),
        Q => ConfigBits(400),
        QN => ConfigBits_N(400)
    );

Inst_Frame11_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(11),
        Q => ConfigBits(387),
        QN => ConfigBits_N(387)
    );

Inst_Frame11_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(11),
        Q => ConfigBits(339),
        QN => ConfigBits_N(339)
    );

Inst_Frame11_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(11),
        Q => ConfigBits(355),
        QN => ConfigBits_N(355)
    );

Inst_Frame11_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(11),
        Q => ConfigBits(331),
        QN => ConfigBits_N(331)
    );

Inst_Frame11_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(11),
        Q => ConfigBits(332),
        QN => ConfigBits_N(332)
    );

Inst_Frame11_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(11),
        Q => ConfigBits(296),
        QN => ConfigBits_N(296)
    );

Inst_Frame11_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(11),
        Q => ConfigBits(318),
        QN => ConfigBits_N(318)
    );

Inst_Frame11_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(11),
        Q => ConfigBits(322),
        QN => ConfigBits_N(322)
    );

Inst_Frame12_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(12),
        Q => ConfigBits(594),
        QN => ConfigBits_N(594)
    );

Inst_Frame12_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(12),
        Q => ConfigBits(586),
        QN => ConfigBits_N(586)
    );

Inst_Frame12_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(12),
        Q => ConfigBits(612),
        QN => ConfigBits_N(612)
    );

Inst_Frame12_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(12),
        Q => ConfigBits(587),
        QN => ConfigBits_N(587)
    );

Inst_Frame12_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(12),
        Q => ConfigBits(593),
        QN => ConfigBits_N(593)
    );

Inst_Frame12_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(12),
        Q => ConfigBits(266),
        QN => ConfigBits_N(266)
    );

Inst_Frame12_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(12),
        Q => ConfigBits(269),
        QN => ConfigBits_N(269)
    );

Inst_Frame12_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(12),
        Q => ConfigBits(223),
        QN => ConfigBits_N(223)
    );

Inst_Frame12_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(12),
        Q => ConfigBits(224),
        QN => ConfigBits_N(224)
    );

Inst_Frame12_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(12),
        Q => ConfigBits(225),
        QN => ConfigBits_N(225)
    );

Inst_Frame12_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(12),
        Q => ConfigBits(227),
        QN => ConfigBits_N(227)
    );

Inst_Frame12_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(12),
        Q => ConfigBits(191),
        QN => ConfigBits_N(191)
    );

Inst_Frame12_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(12),
        Q => ConfigBits(148),
        QN => ConfigBits_N(148)
    );

Inst_Frame12_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(12),
        Q => ConfigBits(150),
        QN => ConfigBits_N(150)
    );

Inst_Frame12_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(12),
        Q => ConfigBits(143),
        QN => ConfigBits_N(143)
    );

Inst_Frame12_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(12),
        Q => ConfigBits(116),
        QN => ConfigBits_N(116)
    );

Inst_Frame12_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(12),
        Q => ConfigBits(122),
        QN => ConfigBits_N(122)
    );

Inst_Frame12_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(12),
        Q => ConfigBits(123),
        QN => ConfigBits_N(123)
    );

Inst_Frame12_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(12),
        Q => ConfigBits(131),
        QN => ConfigBits_N(131)
    );

Inst_Frame12_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(12),
        Q => ConfigBits(135),
        QN => ConfigBits_N(135)
    );

Inst_Frame12_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(12),
        Q => ConfigBits(28),
        QN => ConfigBits_N(28)
    );

Inst_Frame12_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(12),
        Q => ConfigBits(39),
        QN => ConfigBits_N(39)
    );

Inst_Frame12_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(12),
        Q => ConfigBits(392),
        QN => ConfigBits_N(392)
    );

Inst_Frame12_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(12),
        Q => ConfigBits(408),
        QN => ConfigBits_N(408)
    );

Inst_Frame12_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(12),
        Q => ConfigBits(401),
        QN => ConfigBits_N(401)
    );

Inst_Frame12_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(12),
        Q => ConfigBits(372),
        QN => ConfigBits_N(372)
    );

Inst_Frame12_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(12),
        Q => ConfigBits(362),
        QN => ConfigBits_N(362)
    );

Inst_Frame12_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(12),
        Q => ConfigBits(342),
        QN => ConfigBits_N(342)
    );

Inst_Frame12_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(12),
        Q => ConfigBits(333),
        QN => ConfigBits_N(333)
    );

Inst_Frame12_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(12),
        Q => ConfigBits(337),
        QN => ConfigBits_N(337)
    );

Inst_Frame12_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(12),
        Q => ConfigBits(297),
        QN => ConfigBits_N(297)
    );

Inst_Frame12_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(12),
        Q => ConfigBits(327),
        QN => ConfigBits_N(327)
    );

Inst_Frame13_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(13),
        Q => ConfigBits(595),
        QN => ConfigBits_N(595)
    );

Inst_Frame13_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(13),
        Q => ConfigBits(611),
        QN => ConfigBits_N(611)
    );

Inst_Frame13_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(13),
        Q => ConfigBits(613),
        QN => ConfigBits_N(613)
    );

Inst_Frame13_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(13),
        Q => ConfigBits(592),
        QN => ConfigBits_N(592)
    );

Inst_Frame13_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(13),
        Q => ConfigBits(276),
        QN => ConfigBits_N(276)
    );

Inst_Frame13_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(13),
        Q => ConfigBits(277),
        QN => ConfigBits_N(277)
    );

Inst_Frame13_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(13),
        Q => ConfigBits(287),
        QN => ConfigBits_N(287)
    );

Inst_Frame13_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(13),
        Q => ConfigBits(288),
        QN => ConfigBits_N(288)
    );

Inst_Frame13_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(13),
        Q => ConfigBits(267),
        QN => ConfigBits_N(267)
    );

Inst_Frame13_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(13),
        Q => ConfigBits(226),
        QN => ConfigBits_N(226)
    );

Inst_Frame13_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(13),
        Q => ConfigBits(189),
        QN => ConfigBits_N(189)
    );

Inst_Frame13_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(13),
        Q => ConfigBits(190),
        QN => ConfigBits_N(190)
    );

Inst_Frame13_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(13),
        Q => ConfigBits(149),
        QN => ConfigBits_N(149)
    );

Inst_Frame13_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(13),
        Q => ConfigBits(141),
        QN => ConfigBits_N(141)
    );

Inst_Frame13_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(13),
        Q => ConfigBits(142),
        QN => ConfigBits_N(142)
    );

Inst_Frame13_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(13),
        Q => ConfigBits(145),
        QN => ConfigBits_N(145)
    );

Inst_Frame13_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(13),
        Q => ConfigBits(124),
        QN => ConfigBits_N(124)
    );

Inst_Frame13_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(13),
        Q => ConfigBits(125),
        QN => ConfigBits_N(125)
    );

Inst_Frame13_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(13),
        Q => ConfigBits(55),
        QN => ConfigBits_N(55)
    );

Inst_Frame13_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(13),
        Q => ConfigBits(26),
        QN => ConfigBits_N(26)
    );

Inst_Frame13_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(13),
        Q => ConfigBits(393),
        QN => ConfigBits_N(393)
    );

Inst_Frame13_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(13),
        Q => ConfigBits(406),
        QN => ConfigBits_N(406)
    );

Inst_Frame13_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(13),
        Q => ConfigBits(407),
        QN => ConfigBits_N(407)
    );

Inst_Frame13_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(13),
        Q => ConfigBits(409),
        QN => ConfigBits_N(409)
    );

Inst_Frame13_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(13),
        Q => ConfigBits(373),
        QN => ConfigBits_N(373)
    );

Inst_Frame13_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(13),
        Q => ConfigBits(365),
        QN => ConfigBits_N(365)
    );

Inst_Frame13_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(13),
        Q => ConfigBits(343),
        QN => ConfigBits_N(343)
    );

Inst_Frame13_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(13),
        Q => ConfigBits(306),
        QN => ConfigBits_N(306)
    );

Inst_Frame13_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(13),
        Q => ConfigBits(313),
        QN => ConfigBits_N(313)
    );

Inst_Frame13_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(13),
        Q => ConfigBits(321),
        QN => ConfigBits_N(321)
    );

Inst_Frame13_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(13),
        Q => ConfigBits(326),
        QN => ConfigBits_N(326)
    );

Inst_Frame13_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(13),
        Q => ConfigBits(302),
        QN => ConfigBits_N(302)
    );

Inst_Frame14_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(14),
        Q => ConfigBits(614),
        QN => ConfigBits_N(614)
    );

Inst_Frame14_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(14),
        Q => ConfigBits(278),
        QN => ConfigBits_N(278)
    );

Inst_Frame14_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(14),
        Q => ConfigBits(291),
        QN => ConfigBits_N(291)
    );

Inst_Frame14_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(14),
        Q => ConfigBits(293),
        QN => ConfigBits_N(293)
    );

Inst_Frame14_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(14),
        Q => ConfigBits(272),
        QN => ConfigBits_N(272)
    );

Inst_Frame14_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(14),
        Q => ConfigBits(228),
        QN => ConfigBits_N(228)
    );

Inst_Frame14_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(14),
        Q => ConfigBits(182),
        QN => ConfigBits_N(182)
    );

Inst_Frame14_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(14),
        Q => ConfigBits(183),
        QN => ConfigBits_N(183)
    );

Inst_Frame14_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(14),
        Q => ConfigBits(192),
        QN => ConfigBits_N(192)
    );

Inst_Frame14_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(14),
        Q => ConfigBits(147),
        QN => ConfigBits_N(147)
    );

Inst_Frame14_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(14),
        Q => ConfigBits(144),
        QN => ConfigBits_N(144)
    );

Inst_Frame14_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(14),
        Q => ConfigBits(130),
        QN => ConfigBits_N(130)
    );

Inst_Frame14_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(14),
        Q => ConfigBits(107),
        QN => ConfigBits_N(107)
    );

Inst_Frame14_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(14),
        Q => ConfigBits(100),
        QN => ConfigBits_N(100)
    );

Inst_Frame14_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(14),
        Q => ConfigBits(62),
        QN => ConfigBits_N(62)
    );

Inst_Frame14_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(14),
        Q => ConfigBits(65),
        QN => ConfigBits_N(65)
    );

Inst_Frame14_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(14),
        Q => ConfigBits(7),
        QN => ConfigBits_N(7)
    );

Inst_Frame14_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(14),
        Q => ConfigBits(399),
        QN => ConfigBits_N(399)
    );

Inst_Frame14_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(14),
        Q => ConfigBits(364),
        QN => ConfigBits_N(364)
    );

Inst_Frame14_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(14),
        Q => ConfigBits(344),
        QN => ConfigBits_N(344)
    );

Inst_Frame14_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(14),
        Q => ConfigBits(356),
        QN => ConfigBits_N(356)
    );

Inst_Frame14_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(14),
        Q => ConfigBits(357),
        QN => ConfigBits_N(357)
    );

Inst_Frame14_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(14),
        Q => ConfigBits(334),
        QN => ConfigBits_N(334)
    );

Inst_Frame14_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(14),
        Q => ConfigBits(307),
        QN => ConfigBits_N(307)
    );

Inst_Frame14_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(14),
        Q => ConfigBits(308),
        QN => ConfigBits_N(308)
    );

Inst_Frame14_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(14),
        Q => ConfigBits(310),
        QN => ConfigBits_N(310)
    );

Inst_Frame14_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(14),
        Q => ConfigBits(312),
        QN => ConfigBits_N(312)
    );

Inst_Frame14_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(14),
        Q => ConfigBits(316),
        QN => ConfigBits_N(316)
    );

Inst_Frame14_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(14),
        Q => ConfigBits(320),
        QN => ConfigBits_N(320)
    );

Inst_Frame14_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(14),
        Q => ConfigBits(323),
        QN => ConfigBits_N(323)
    );

Inst_Frame14_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(14),
        Q => ConfigBits(303),
        QN => ConfigBits_N(303)
    );

Inst_Frame14_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(14),
        Q => ConfigBits(305),
        QN => ConfigBits_N(305)
    );

Inst_Frame15_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(15),
        Q => ConfigBits(275),
        QN => ConfigBits_N(275)
    );

Inst_Frame15_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(15),
        Q => ConfigBits(279),
        QN => ConfigBits_N(279)
    );

Inst_Frame15_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(15),
        Q => ConfigBits(282),
        QN => ConfigBits_N(282)
    );

Inst_Frame15_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(15),
        Q => ConfigBits(289),
        QN => ConfigBits_N(289)
    );

Inst_Frame15_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(15),
        Q => ConfigBits(268),
        QN => ConfigBits_N(268)
    );

Inst_Frame15_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(15),
        Q => ConfigBits(273),
        QN => ConfigBits_N(273)
    );

Inst_Frame15_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(15),
        Q => ConfigBits(132),
        QN => ConfigBits_N(132)
    );

Inst_Frame15_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(15),
        Q => ConfigBits(108),
        QN => ConfigBits_N(108)
    );

Inst_Frame15_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(15),
        Q => ConfigBits(110),
        QN => ConfigBits_N(110)
    );

Inst_Frame15_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(15),
        Q => ConfigBits(112),
        QN => ConfigBits_N(112)
    );

Inst_Frame15_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(15),
        Q => ConfigBits(74),
        QN => ConfigBits_N(74)
    );

Inst_Frame15_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(15),
        Q => ConfigBits(95),
        QN => ConfigBits_N(95)
    );

Inst_Frame15_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(15),
        Q => ConfigBits(99),
        QN => ConfigBits_N(99)
    );

Inst_Frame15_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(15),
        Q => ConfigBits(101),
        QN => ConfigBits_N(101)
    );

Inst_Frame15_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(15),
        Q => ConfigBits(102),
        QN => ConfigBits_N(102)
    );

Inst_Frame15_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(15),
        Q => ConfigBits(81),
        QN => ConfigBits_N(81)
    );

Inst_Frame15_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(15),
        Q => ConfigBits(61),
        QN => ConfigBits_N(61)
    );

Inst_Frame15_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(15),
        Q => ConfigBits(64),
        QN => ConfigBits_N(64)
    );

Inst_Frame15_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(15),
        Q => ConfigBits(68),
        QN => ConfigBits_N(68)
    );

Inst_Frame15_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(15),
        Q => ConfigBits(23),
        QN => ConfigBits_N(23)
    );

Inst_Frame15_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(15),
        Q => ConfigBits(24),
        QN => ConfigBits_N(24)
    );

Inst_Frame15_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(15),
        Q => ConfigBits(25),
        QN => ConfigBits_N(25)
    );

Inst_Frame15_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(15),
        Q => ConfigBits(36),
        QN => ConfigBits_N(36)
    );

Inst_Frame15_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(15),
        Q => ConfigBits(38),
        QN => ConfigBits_N(38)
    );

Inst_Frame15_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(15),
        Q => ConfigBits(16),
        QN => ConfigBits_N(16)
    );

Inst_Frame15_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(15),
        Q => ConfigBits(3),
        QN => ConfigBits_N(3)
    );

Inst_Frame15_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(15),
        Q => ConfigBits(309),
        QN => ConfigBits_N(309)
    );

Inst_Frame15_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(15),
        Q => ConfigBits(298),
        QN => ConfigBits_N(298)
    );

Inst_Frame15_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(15),
        Q => ConfigBits(317),
        QN => ConfigBits_N(317)
    );

Inst_Frame15_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(15),
        Q => ConfigBits(319),
        QN => ConfigBits_N(319)
    );

Inst_Frame15_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(15),
        Q => ConfigBits(300),
        QN => ConfigBits_N(300)
    );

Inst_Frame15_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(15),
        Q => ConfigBits(301),
        QN => ConfigBits_N(301)
    );

Inst_Frame16_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(16),
        Q => ConfigBits(274),
        QN => ConfigBits_N(274)
    );

Inst_Frame16_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(16),
        Q => ConfigBits(283),
        QN => ConfigBits_N(283)
    );

Inst_Frame16_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(16),
        Q => ConfigBits(104),
        QN => ConfigBits_N(104)
    );

Inst_Frame16_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(16),
        Q => ConfigBits(109),
        QN => ConfigBits_N(109)
    );

Inst_Frame16_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(16),
        Q => ConfigBits(111),
        QN => ConfigBits_N(111)
    );

Inst_Frame16_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(16),
        Q => ConfigBits(72),
        QN => ConfigBits_N(72)
    );

Inst_Frame16_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(16),
        Q => ConfigBits(93),
        QN => ConfigBits_N(93)
    );

Inst_Frame16_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(16),
        Q => ConfigBits(96),
        QN => ConfigBits_N(96)
    );

Inst_Frame16_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(16),
        Q => ConfigBits(98),
        QN => ConfigBits_N(98)
    );

Inst_Frame16_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(16),
        Q => ConfigBits(103),
        QN => ConfigBits_N(103)
    );

Inst_Frame16_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(16),
        Q => ConfigBits(76),
        QN => ConfigBits_N(76)
    );

Inst_Frame16_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(16),
        Q => ConfigBits(80),
        QN => ConfigBits_N(80)
    );

Inst_Frame16_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(16),
        Q => ConfigBits(40),
        QN => ConfigBits_N(40)
    );

Inst_Frame16_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(16),
        Q => ConfigBits(57),
        QN => ConfigBits_N(57)
    );

Inst_Frame16_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(16),
        Q => ConfigBits(58),
        QN => ConfigBits_N(58)
    );

Inst_Frame16_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(16),
        Q => ConfigBits(42),
        QN => ConfigBits_N(42)
    );

Inst_Frame16_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(16),
        Q => ConfigBits(66),
        QN => ConfigBits_N(66)
    );

Inst_Frame16_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(16),
        Q => ConfigBits(69),
        QN => ConfigBits_N(69)
    );

Inst_Frame16_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(16),
        Q => ConfigBits(43),
        QN => ConfigBits_N(43)
    );

Inst_Frame16_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(16),
        Q => ConfigBits(71),
        QN => ConfigBits_N(71)
    );

Inst_Frame16_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(16),
        Q => ConfigBits(18),
        QN => ConfigBits_N(18)
    );

Inst_Frame16_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(16),
        Q => ConfigBits(19),
        QN => ConfigBits_N(19)
    );

Inst_Frame16_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(16),
        Q => ConfigBits(20),
        QN => ConfigBits_N(20)
    );

Inst_Frame16_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(16),
        Q => ConfigBits(27),
        QN => ConfigBits_N(27)
    );

Inst_Frame16_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(16),
        Q => ConfigBits(29),
        QN => ConfigBits_N(29)
    );

Inst_Frame16_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(16),
        Q => ConfigBits(31),
        QN => ConfigBits_N(31)
    );

Inst_Frame16_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(16),
        Q => ConfigBits(32),
        QN => ConfigBits_N(32)
    );

Inst_Frame16_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(16),
        Q => ConfigBits(35),
        QN => ConfigBits_N(35)
    );

Inst_Frame16_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(16),
        Q => ConfigBits(17),
        QN => ConfigBits_N(17)
    );

Inst_Frame16_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(16),
        Q => ConfigBits(6),
        QN => ConfigBits_N(6)
    );

Inst_Frame16_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(16),
        Q => ConfigBits(345),
        QN => ConfigBits_N(345)
    );

Inst_Frame16_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(16),
        Q => ConfigBits(335),
        QN => ConfigBits_N(335)
    );

Inst_Frame17_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(17),
        Q => ConfigBits(285),
        QN => ConfigBits_N(285)
    );

Inst_Frame17_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(17),
        Q => ConfigBits(295),
        QN => ConfigBits_N(295)
    );

Inst_Frame17_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(17),
        Q => ConfigBits(105),
        QN => ConfigBits_N(105)
    );

Inst_Frame17_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(17),
        Q => ConfigBits(106),
        QN => ConfigBits_N(106)
    );

Inst_Frame17_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(17),
        Q => ConfigBits(113),
        QN => ConfigBits_N(113)
    );

Inst_Frame17_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(17),
        Q => ConfigBits(82),
        QN => ConfigBits_N(82)
    );

Inst_Frame17_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(17),
        Q => ConfigBits(83),
        QN => ConfigBits_N(83)
    );

Inst_Frame17_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(17),
        Q => ConfigBits(92),
        QN => ConfigBits_N(92)
    );

Inst_Frame17_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(17),
        Q => ConfigBits(97),
        QN => ConfigBits_N(97)
    );

Inst_Frame17_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(17),
        Q => ConfigBits(77),
        QN => ConfigBits_N(77)
    );

Inst_Frame17_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(17),
        Q => ConfigBits(78),
        QN => ConfigBits_N(78)
    );

Inst_Frame17_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(17),
        Q => ConfigBits(79),
        QN => ConfigBits_N(79)
    );

Inst_Frame17_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(17),
        Q => ConfigBits(41),
        QN => ConfigBits_N(41)
    );

Inst_Frame17_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(17),
        Q => ConfigBits(50),
        QN => ConfigBits_N(50)
    );

Inst_Frame17_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(17),
        Q => ConfigBits(56),
        QN => ConfigBits_N(56)
    );

Inst_Frame17_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(17),
        Q => ConfigBits(59),
        QN => ConfigBits_N(59)
    );

Inst_Frame17_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(17),
        Q => ConfigBits(60),
        QN => ConfigBits_N(60)
    );

Inst_Frame17_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(17),
        Q => ConfigBits(44),
        QN => ConfigBits_N(44)
    );

Inst_Frame17_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(17),
        Q => ConfigBits(45),
        QN => ConfigBits_N(45)
    );

Inst_Frame17_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(17),
        Q => ConfigBits(48),
        QN => ConfigBits_N(48)
    );

Inst_Frame17_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(17),
        Q => ConfigBits(21),
        QN => ConfigBits_N(21)
    );

Inst_Frame17_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(17),
        Q => ConfigBits(22),
        QN => ConfigBits_N(22)
    );

Inst_Frame17_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(17),
        Q => ConfigBits(33),
        QN => ConfigBits_N(33)
    );

Inst_Frame17_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(17),
        Q => ConfigBits(34),
        QN => ConfigBits_N(34)
    );

Inst_Frame17_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(17),
        Q => ConfigBits(0),
        QN => ConfigBits_N(0)
    );

Inst_Frame17_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(17),
        Q => ConfigBits(1),
        QN => ConfigBits_N(1)
    );

Inst_Frame17_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(17),
        Q => ConfigBits(2),
        QN => ConfigBits_N(2)
    );

Inst_Frame17_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(17),
        Q => ConfigBits(4),
        QN => ConfigBits_N(4)
    );

Inst_Frame17_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(17),
        Q => ConfigBits(5),
        QN => ConfigBits_N(5)
    );

Inst_Frame17_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(17),
        Q => ConfigBits(325),
        QN => ConfigBits_N(325)
    );

Inst_Frame17_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(17),
        Q => ConfigBits(299),
        QN => ConfigBits_N(299)
    );

Inst_Frame17_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(17),
        Q => ConfigBits(304),
        QN => ConfigBits_N(304)
    );

Inst_Frame18_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(18),
        Q => ConfigBits(284),
        QN => ConfigBits_N(284)
    );

Inst_Frame18_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(18),
        Q => ConfigBits(294),
        QN => ConfigBits_N(294)
    );

Inst_Frame18_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(18),
        Q => ConfigBits(73),
        QN => ConfigBits_N(73)
    );

Inst_Frame18_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(18),
        Q => ConfigBits(84),
        QN => ConfigBits_N(84)
    );

Inst_Frame18_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(18),
        Q => ConfigBits(85),
        QN => ConfigBits_N(85)
    );

Inst_Frame18_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(18),
        Q => ConfigBits(86),
        QN => ConfigBits_N(86)
    );

Inst_Frame18_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(18),
        Q => ConfigBits(87),
        QN => ConfigBits_N(87)
    );

Inst_Frame18_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(18),
        Q => ConfigBits(88),
        QN => ConfigBits_N(88)
    );

Inst_Frame18_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(18),
        Q => ConfigBits(89),
        QN => ConfigBits_N(89)
    );

Inst_Frame18_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(18),
        Q => ConfigBits(90),
        QN => ConfigBits_N(90)
    );

Inst_Frame18_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(18),
        Q => ConfigBits(91),
        QN => ConfigBits_N(91)
    );

Inst_Frame18_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(18),
        Q => ConfigBits(94),
        QN => ConfigBits_N(94)
    );

Inst_Frame18_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(18),
        Q => ConfigBits(75),
        QN => ConfigBits_N(75)
    );

Inst_Frame18_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(18),
        Q => ConfigBits(51),
        QN => ConfigBits_N(51)
    );

Inst_Frame18_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(18),
        Q => ConfigBits(52),
        QN => ConfigBits_N(52)
    );

Inst_Frame18_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(18),
        Q => ConfigBits(53),
        QN => ConfigBits_N(53)
    );

Inst_Frame18_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(18),
        Q => ConfigBits(54),
        QN => ConfigBits_N(54)
    );

Inst_Frame18_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(18),
        Q => ConfigBits(46),
        QN => ConfigBits_N(46)
    );

Inst_Frame18_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(18),
        Q => ConfigBits(47),
        QN => ConfigBits_N(47)
    );

Inst_Frame18_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(18),
        Q => ConfigBits(49),
        QN => ConfigBits_N(49)
    );

Inst_Frame18_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(18),
        Q => ConfigBits(8),
        QN => ConfigBits_N(8)
    );

Inst_Frame18_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(18),
        Q => ConfigBits(9),
        QN => ConfigBits_N(9)
    );

Inst_Frame18_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(18),
        Q => ConfigBits(10),
        QN => ConfigBits_N(10)
    );

Inst_Frame18_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(18),
        Q => ConfigBits(37),
        QN => ConfigBits_N(37)
    );

Inst_Frame18_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(18),
        Q => ConfigBits(11),
        QN => ConfigBits_N(11)
    );

Inst_Frame18_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(18),
        Q => ConfigBits(12),
        QN => ConfigBits_N(12)
    );

Inst_Frame18_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(18),
        Q => ConfigBits(13),
        QN => ConfigBits_N(13)
    );

Inst_Frame18_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(18),
        Q => ConfigBits(14),
        QN => ConfigBits_N(14)
    );

Inst_Frame18_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(18),
        Q => ConfigBits(15),
        QN => ConfigBits_N(15)
    );

Inst_Frame18_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(18),
        Q => ConfigBits(314),
        QN => ConfigBits_N(314)
    );

Inst_Frame18_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(18),
        Q => ConfigBits(315),
        QN => ConfigBits_N(315)
    );

Inst_Frame18_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(18),
        Q => ConfigBits(324),
        QN => ConfigBits_N(324)
    );

Inst_Frame19_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(19),
        Q => ConfigBits(246),
        QN => ConfigBits_N(246)
    );

Inst_Frame19_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(19),
        Q => ConfigBits(252),
        QN => ConfigBits_N(252)
    );

Inst_Frame19_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(19),
        Q => ConfigBits(253),
        QN => ConfigBits_N(253)
    );

Inst_Frame19_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(19),
        Q => ConfigBits(254),
        QN => ConfigBits_N(254)
    );

Inst_Frame19_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(19),
        Q => ConfigBits(258),
        QN => ConfigBits_N(258)
    );

Inst_Frame19_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(19),
        Q => ConfigBits(238),
        QN => ConfigBits_N(238)
    );

Inst_Frame19_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(19),
        Q => ConfigBits(239),
        QN => ConfigBits_N(239)
    );

Inst_Frame19_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(19),
        Q => ConfigBits(154),
        QN => ConfigBits_N(154)
    );

Inst_Frame19_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(19),
        Q => ConfigBits(155),
        QN => ConfigBits_N(155)
    );

Inst_Frame19_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(19),
        Q => ConfigBits(156),
        QN => ConfigBits_N(156)
    );

Inst_Frame19_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(19),
        Q => ConfigBits(562),
        QN => ConfigBits_N(562)
    );

Inst_Frame19_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(19),
        Q => ConfigBits(566),
        QN => ConfigBits_N(566)
    );

Inst_Frame19_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(19),
        Q => ConfigBits(567),
        QN => ConfigBits_N(567)
    );

Inst_Frame19_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(19),
        Q => ConfigBits(574),
        QN => ConfigBits_N(574)
    );

Inst_Frame19_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(19),
        Q => ConfigBits(575),
        QN => ConfigBits_N(575)
    );

Inst_Frame19_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(19),
        Q => ConfigBits(467),
        QN => ConfigBits_N(467)
    );

Inst_Frame19_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(19),
        Q => ConfigBits(470),
        QN => ConfigBits_N(470)
    );

Inst_Frame19_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(19),
        Q => ConfigBits(471),
        QN => ConfigBits_N(471)
    );

Inst_Frame19_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(19),
        Q => ConfigBits(478),
        QN => ConfigBits_N(478)
    );

Inst_Frame19_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(19),
        Q => ConfigBits(479),
        QN => ConfigBits_N(479)
    );

Inst_Frame19_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(19),
        Q => ConfigBits(404),
        QN => ConfigBits_N(404)
    );

Inst_Frame19_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(19),
        Q => ConfigBits(405),
        QN => ConfigBits_N(405)
    );

Inst_Frame19_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(19),
        Q => ConfigBits(412),
        QN => ConfigBits_N(412)
    );

Inst_Frame19_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(19),
        Q => ConfigBits(396),
        QN => ConfigBits_N(396)
    );

end architecture Behavioral;