library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_package.all;
entity RAM_IO_ConfigMem is
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
end entity RAM_IO_ConfigMem;

architecture Behavioral of RAM_IO_ConfigMem is



begin
 -- instantiate frame latches
Inst_frame0_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(0),
        Q => ConfigBits(327),
        QN => ConfigBits_N(327)
    );

Inst_frame0_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(0),
        Q => ConfigBits(326),
        QN => ConfigBits_N(326)
    );

Inst_frame0_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(0),
        Q => ConfigBits(325),
        QN => ConfigBits_N(325)
    );

Inst_frame0_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(0),
        Q => ConfigBits(324),
        QN => ConfigBits_N(324)
    );

Inst_frame0_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(0),
        Q => ConfigBits(323),
        QN => ConfigBits_N(323)
    );

Inst_frame0_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(0),
        Q => ConfigBits(322),
        QN => ConfigBits_N(322)
    );

Inst_frame0_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(0),
        Q => ConfigBits(321),
        QN => ConfigBits_N(321)
    );

Inst_frame0_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(0),
        Q => ConfigBits(320),
        QN => ConfigBits_N(320)
    );

Inst_frame0_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(0),
        Q => ConfigBits(319),
        QN => ConfigBits_N(319)
    );

Inst_frame0_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(0),
        Q => ConfigBits(318),
        QN => ConfigBits_N(318)
    );

Inst_frame0_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(0),
        Q => ConfigBits(317),
        QN => ConfigBits_N(317)
    );

Inst_frame0_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(0),
        Q => ConfigBits(316),
        QN => ConfigBits_N(316)
    );

Inst_frame0_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(0),
        Q => ConfigBits(315),
        QN => ConfigBits_N(315)
    );

Inst_frame0_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(0),
        Q => ConfigBits(314),
        QN => ConfigBits_N(314)
    );

Inst_frame0_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(0),
        Q => ConfigBits(313),
        QN => ConfigBits_N(313)
    );

Inst_frame0_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(0),
        Q => ConfigBits(312),
        QN => ConfigBits_N(312)
    );

Inst_frame0_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(0),
        Q => ConfigBits(311),
        QN => ConfigBits_N(311)
    );

Inst_frame0_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(0),
        Q => ConfigBits(310),
        QN => ConfigBits_N(310)
    );

Inst_frame0_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(0),
        Q => ConfigBits(309),
        QN => ConfigBits_N(309)
    );

Inst_frame0_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(0),
        Q => ConfigBits(308),
        QN => ConfigBits_N(308)
    );

Inst_frame0_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(0),
        Q => ConfigBits(307),
        QN => ConfigBits_N(307)
    );

Inst_frame0_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(0),
        Q => ConfigBits(306),
        QN => ConfigBits_N(306)
    );

Inst_frame0_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(0),
        Q => ConfigBits(305),
        QN => ConfigBits_N(305)
    );

Inst_frame0_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(0),
        Q => ConfigBits(304),
        QN => ConfigBits_N(304)
    );

Inst_frame0_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(0),
        Q => ConfigBits(303),
        QN => ConfigBits_N(303)
    );

Inst_frame0_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(0),
        Q => ConfigBits(302),
        QN => ConfigBits_N(302)
    );

Inst_frame0_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(0),
        Q => ConfigBits(301),
        QN => ConfigBits_N(301)
    );

Inst_frame0_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(0),
        Q => ConfigBits(300),
        QN => ConfigBits_N(300)
    );

Inst_frame0_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(0),
        Q => ConfigBits(299),
        QN => ConfigBits_N(299)
    );

Inst_frame0_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(0),
        Q => ConfigBits(298),
        QN => ConfigBits_N(298)
    );

Inst_frame0_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(0),
        Q => ConfigBits(297),
        QN => ConfigBits_N(297)
    );

Inst_frame0_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(0),
        Q => ConfigBits(296),
        QN => ConfigBits_N(296)
    );

Inst_frame1_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(1),
        Q => ConfigBits(295),
        QN => ConfigBits_N(295)
    );

Inst_frame1_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(1),
        Q => ConfigBits(294),
        QN => ConfigBits_N(294)
    );

Inst_frame1_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(1),
        Q => ConfigBits(293),
        QN => ConfigBits_N(293)
    );

Inst_frame1_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(1),
        Q => ConfigBits(292),
        QN => ConfigBits_N(292)
    );

Inst_frame1_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(1),
        Q => ConfigBits(291),
        QN => ConfigBits_N(291)
    );

Inst_frame1_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(1),
        Q => ConfigBits(290),
        QN => ConfigBits_N(290)
    );

Inst_frame1_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(1),
        Q => ConfigBits(289),
        QN => ConfigBits_N(289)
    );

Inst_frame1_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(1),
        Q => ConfigBits(288),
        QN => ConfigBits_N(288)
    );

Inst_frame1_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(1),
        Q => ConfigBits(287),
        QN => ConfigBits_N(287)
    );

Inst_frame1_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(1),
        Q => ConfigBits(286),
        QN => ConfigBits_N(286)
    );

Inst_frame1_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(1),
        Q => ConfigBits(285),
        QN => ConfigBits_N(285)
    );

Inst_frame1_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(1),
        Q => ConfigBits(284),
        QN => ConfigBits_N(284)
    );

Inst_frame1_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(1),
        Q => ConfigBits(283),
        QN => ConfigBits_N(283)
    );

Inst_frame1_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(1),
        Q => ConfigBits(282),
        QN => ConfigBits_N(282)
    );

Inst_frame1_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(1),
        Q => ConfigBits(281),
        QN => ConfigBits_N(281)
    );

Inst_frame1_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(1),
        Q => ConfigBits(280),
        QN => ConfigBits_N(280)
    );

Inst_frame1_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(1),
        Q => ConfigBits(279),
        QN => ConfigBits_N(279)
    );

Inst_frame1_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(1),
        Q => ConfigBits(278),
        QN => ConfigBits_N(278)
    );

Inst_frame1_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(1),
        Q => ConfigBits(277),
        QN => ConfigBits_N(277)
    );

Inst_frame1_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(1),
        Q => ConfigBits(276),
        QN => ConfigBits_N(276)
    );

Inst_frame1_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(1),
        Q => ConfigBits(275),
        QN => ConfigBits_N(275)
    );

Inst_frame1_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(1),
        Q => ConfigBits(274),
        QN => ConfigBits_N(274)
    );

Inst_frame1_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(1),
        Q => ConfigBits(273),
        QN => ConfigBits_N(273)
    );

Inst_frame1_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(1),
        Q => ConfigBits(272),
        QN => ConfigBits_N(272)
    );

Inst_frame1_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(1),
        Q => ConfigBits(271),
        QN => ConfigBits_N(271)
    );

Inst_frame1_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(1),
        Q => ConfigBits(270),
        QN => ConfigBits_N(270)
    );

Inst_frame1_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(1),
        Q => ConfigBits(269),
        QN => ConfigBits_N(269)
    );

Inst_frame1_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(1),
        Q => ConfigBits(268),
        QN => ConfigBits_N(268)
    );

Inst_frame1_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(1),
        Q => ConfigBits(267),
        QN => ConfigBits_N(267)
    );

Inst_frame1_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(1),
        Q => ConfigBits(266),
        QN => ConfigBits_N(266)
    );

Inst_frame1_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(1),
        Q => ConfigBits(265),
        QN => ConfigBits_N(265)
    );

Inst_frame1_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(1),
        Q => ConfigBits(264),
        QN => ConfigBits_N(264)
    );

Inst_frame2_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(2),
        Q => ConfigBits(263),
        QN => ConfigBits_N(263)
    );

Inst_frame2_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(2),
        Q => ConfigBits(262),
        QN => ConfigBits_N(262)
    );

Inst_frame2_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(2),
        Q => ConfigBits(261),
        QN => ConfigBits_N(261)
    );

Inst_frame2_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(2),
        Q => ConfigBits(260),
        QN => ConfigBits_N(260)
    );

Inst_frame2_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(2),
        Q => ConfigBits(259),
        QN => ConfigBits_N(259)
    );

Inst_frame2_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(2),
        Q => ConfigBits(258),
        QN => ConfigBits_N(258)
    );

Inst_frame2_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(2),
        Q => ConfigBits(257),
        QN => ConfigBits_N(257)
    );

Inst_frame2_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(2),
        Q => ConfigBits(256),
        QN => ConfigBits_N(256)
    );

Inst_frame2_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(2),
        Q => ConfigBits(255),
        QN => ConfigBits_N(255)
    );

Inst_frame2_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(2),
        Q => ConfigBits(254),
        QN => ConfigBits_N(254)
    );

Inst_frame2_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(2),
        Q => ConfigBits(253),
        QN => ConfigBits_N(253)
    );

Inst_frame2_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(2),
        Q => ConfigBits(252),
        QN => ConfigBits_N(252)
    );

Inst_frame2_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(2),
        Q => ConfigBits(251),
        QN => ConfigBits_N(251)
    );

Inst_frame2_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(2),
        Q => ConfigBits(250),
        QN => ConfigBits_N(250)
    );

Inst_frame2_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(2),
        Q => ConfigBits(249),
        QN => ConfigBits_N(249)
    );

Inst_frame2_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(2),
        Q => ConfigBits(248),
        QN => ConfigBits_N(248)
    );

Inst_frame2_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(2),
        Q => ConfigBits(247),
        QN => ConfigBits_N(247)
    );

Inst_frame2_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(2),
        Q => ConfigBits(246),
        QN => ConfigBits_N(246)
    );

Inst_frame2_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(2),
        Q => ConfigBits(245),
        QN => ConfigBits_N(245)
    );

Inst_frame2_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(2),
        Q => ConfigBits(244),
        QN => ConfigBits_N(244)
    );

Inst_frame2_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(2),
        Q => ConfigBits(243),
        QN => ConfigBits_N(243)
    );

Inst_frame2_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(2),
        Q => ConfigBits(242),
        QN => ConfigBits_N(242)
    );

Inst_frame2_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(2),
        Q => ConfigBits(241),
        QN => ConfigBits_N(241)
    );

Inst_frame2_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(2),
        Q => ConfigBits(240),
        QN => ConfigBits_N(240)
    );

Inst_frame2_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(2),
        Q => ConfigBits(239),
        QN => ConfigBits_N(239)
    );

Inst_frame2_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(2),
        Q => ConfigBits(238),
        QN => ConfigBits_N(238)
    );

Inst_frame2_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(2),
        Q => ConfigBits(237),
        QN => ConfigBits_N(237)
    );

Inst_frame2_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(2),
        Q => ConfigBits(236),
        QN => ConfigBits_N(236)
    );

Inst_frame2_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(2),
        Q => ConfigBits(235),
        QN => ConfigBits_N(235)
    );

Inst_frame2_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(2),
        Q => ConfigBits(234),
        QN => ConfigBits_N(234)
    );

Inst_frame2_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(2),
        Q => ConfigBits(233),
        QN => ConfigBits_N(233)
    );

Inst_frame2_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(2),
        Q => ConfigBits(232),
        QN => ConfigBits_N(232)
    );

Inst_frame3_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(3),
        Q => ConfigBits(231),
        QN => ConfigBits_N(231)
    );

Inst_frame3_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(3),
        Q => ConfigBits(230),
        QN => ConfigBits_N(230)
    );

Inst_frame3_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(3),
        Q => ConfigBits(229),
        QN => ConfigBits_N(229)
    );

Inst_frame3_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(3),
        Q => ConfigBits(228),
        QN => ConfigBits_N(228)
    );

Inst_frame3_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(3),
        Q => ConfigBits(227),
        QN => ConfigBits_N(227)
    );

Inst_frame3_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(3),
        Q => ConfigBits(226),
        QN => ConfigBits_N(226)
    );

Inst_frame3_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(3),
        Q => ConfigBits(225),
        QN => ConfigBits_N(225)
    );

Inst_frame3_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(3),
        Q => ConfigBits(224),
        QN => ConfigBits_N(224)
    );

Inst_frame3_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(3),
        Q => ConfigBits(223),
        QN => ConfigBits_N(223)
    );

Inst_frame3_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(3),
        Q => ConfigBits(222),
        QN => ConfigBits_N(222)
    );

Inst_frame3_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(3),
        Q => ConfigBits(221),
        QN => ConfigBits_N(221)
    );

Inst_frame3_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(3),
        Q => ConfigBits(220),
        QN => ConfigBits_N(220)
    );

Inst_frame3_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(3),
        Q => ConfigBits(219),
        QN => ConfigBits_N(219)
    );

Inst_frame3_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(3),
        Q => ConfigBits(218),
        QN => ConfigBits_N(218)
    );

Inst_frame3_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(3),
        Q => ConfigBits(217),
        QN => ConfigBits_N(217)
    );

Inst_frame3_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(3),
        Q => ConfigBits(216),
        QN => ConfigBits_N(216)
    );

Inst_frame3_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(3),
        Q => ConfigBits(215),
        QN => ConfigBits_N(215)
    );

Inst_frame3_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(3),
        Q => ConfigBits(214),
        QN => ConfigBits_N(214)
    );

Inst_frame3_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(3),
        Q => ConfigBits(213),
        QN => ConfigBits_N(213)
    );

Inst_frame3_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(3),
        Q => ConfigBits(212),
        QN => ConfigBits_N(212)
    );

Inst_frame3_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(3),
        Q => ConfigBits(211),
        QN => ConfigBits_N(211)
    );

Inst_frame3_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(3),
        Q => ConfigBits(210),
        QN => ConfigBits_N(210)
    );

Inst_frame3_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(3),
        Q => ConfigBits(209),
        QN => ConfigBits_N(209)
    );

Inst_frame3_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(3),
        Q => ConfigBits(208),
        QN => ConfigBits_N(208)
    );

Inst_frame3_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(3),
        Q => ConfigBits(207),
        QN => ConfigBits_N(207)
    );

Inst_frame3_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(3),
        Q => ConfigBits(206),
        QN => ConfigBits_N(206)
    );

Inst_frame3_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(3),
        Q => ConfigBits(205),
        QN => ConfigBits_N(205)
    );

Inst_frame3_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(3),
        Q => ConfigBits(204),
        QN => ConfigBits_N(204)
    );

Inst_frame3_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(3),
        Q => ConfigBits(203),
        QN => ConfigBits_N(203)
    );

Inst_frame3_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(3),
        Q => ConfigBits(202),
        QN => ConfigBits_N(202)
    );

Inst_frame3_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(3),
        Q => ConfigBits(201),
        QN => ConfigBits_N(201)
    );

Inst_frame3_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(3),
        Q => ConfigBits(200),
        QN => ConfigBits_N(200)
    );

Inst_frame4_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(4),
        Q => ConfigBits(199),
        QN => ConfigBits_N(199)
    );

Inst_frame4_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(4),
        Q => ConfigBits(198),
        QN => ConfigBits_N(198)
    );

Inst_frame4_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(4),
        Q => ConfigBits(197),
        QN => ConfigBits_N(197)
    );

Inst_frame4_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(4),
        Q => ConfigBits(196),
        QN => ConfigBits_N(196)
    );

Inst_frame4_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(4),
        Q => ConfigBits(195),
        QN => ConfigBits_N(195)
    );

Inst_frame4_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(4),
        Q => ConfigBits(194),
        QN => ConfigBits_N(194)
    );

Inst_frame4_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(4),
        Q => ConfigBits(193),
        QN => ConfigBits_N(193)
    );

Inst_frame4_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(4),
        Q => ConfigBits(192),
        QN => ConfigBits_N(192)
    );

Inst_frame4_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(4),
        Q => ConfigBits(191),
        QN => ConfigBits_N(191)
    );

Inst_frame4_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(4),
        Q => ConfigBits(190),
        QN => ConfigBits_N(190)
    );

Inst_frame4_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(4),
        Q => ConfigBits(189),
        QN => ConfigBits_N(189)
    );

Inst_frame4_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(4),
        Q => ConfigBits(188),
        QN => ConfigBits_N(188)
    );

Inst_frame4_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(4),
        Q => ConfigBits(187),
        QN => ConfigBits_N(187)
    );

Inst_frame4_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(4),
        Q => ConfigBits(186),
        QN => ConfigBits_N(186)
    );

Inst_frame4_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(4),
        Q => ConfigBits(185),
        QN => ConfigBits_N(185)
    );

Inst_frame4_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(4),
        Q => ConfigBits(184),
        QN => ConfigBits_N(184)
    );

Inst_frame4_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(4),
        Q => ConfigBits(183),
        QN => ConfigBits_N(183)
    );

Inst_frame4_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(4),
        Q => ConfigBits(182),
        QN => ConfigBits_N(182)
    );

Inst_frame4_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(4),
        Q => ConfigBits(181),
        QN => ConfigBits_N(181)
    );

Inst_frame4_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(4),
        Q => ConfigBits(180),
        QN => ConfigBits_N(180)
    );

Inst_frame4_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(4),
        Q => ConfigBits(179),
        QN => ConfigBits_N(179)
    );

Inst_frame4_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(4),
        Q => ConfigBits(178),
        QN => ConfigBits_N(178)
    );

Inst_frame4_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(4),
        Q => ConfigBits(177),
        QN => ConfigBits_N(177)
    );

Inst_frame4_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(4),
        Q => ConfigBits(176),
        QN => ConfigBits_N(176)
    );

Inst_frame4_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(4),
        Q => ConfigBits(175),
        QN => ConfigBits_N(175)
    );

Inst_frame4_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(4),
        Q => ConfigBits(174),
        QN => ConfigBits_N(174)
    );

Inst_frame4_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(4),
        Q => ConfigBits(173),
        QN => ConfigBits_N(173)
    );

Inst_frame4_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(4),
        Q => ConfigBits(172),
        QN => ConfigBits_N(172)
    );

Inst_frame4_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(4),
        Q => ConfigBits(171),
        QN => ConfigBits_N(171)
    );

Inst_frame4_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(4),
        Q => ConfigBits(170),
        QN => ConfigBits_N(170)
    );

Inst_frame4_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(4),
        Q => ConfigBits(169),
        QN => ConfigBits_N(169)
    );

Inst_frame4_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(4),
        Q => ConfigBits(168),
        QN => ConfigBits_N(168)
    );

Inst_frame5_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(5),
        Q => ConfigBits(167),
        QN => ConfigBits_N(167)
    );

Inst_frame5_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(5),
        Q => ConfigBits(166),
        QN => ConfigBits_N(166)
    );

Inst_frame5_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(5),
        Q => ConfigBits(165),
        QN => ConfigBits_N(165)
    );

Inst_frame5_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(5),
        Q => ConfigBits(164),
        QN => ConfigBits_N(164)
    );

Inst_frame5_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(5),
        Q => ConfigBits(163),
        QN => ConfigBits_N(163)
    );

Inst_frame5_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(5),
        Q => ConfigBits(162),
        QN => ConfigBits_N(162)
    );

Inst_frame5_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(5),
        Q => ConfigBits(161),
        QN => ConfigBits_N(161)
    );

Inst_frame5_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(5),
        Q => ConfigBits(160),
        QN => ConfigBits_N(160)
    );

Inst_frame5_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(5),
        Q => ConfigBits(159),
        QN => ConfigBits_N(159)
    );

Inst_frame5_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(5),
        Q => ConfigBits(158),
        QN => ConfigBits_N(158)
    );

Inst_frame5_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(5),
        Q => ConfigBits(157),
        QN => ConfigBits_N(157)
    );

Inst_frame5_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(5),
        Q => ConfigBits(156),
        QN => ConfigBits_N(156)
    );

Inst_frame5_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(5),
        Q => ConfigBits(155),
        QN => ConfigBits_N(155)
    );

Inst_frame5_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(5),
        Q => ConfigBits(154),
        QN => ConfigBits_N(154)
    );

Inst_frame5_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(5),
        Q => ConfigBits(153),
        QN => ConfigBits_N(153)
    );

Inst_frame5_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(5),
        Q => ConfigBits(152),
        QN => ConfigBits_N(152)
    );

Inst_frame5_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(5),
        Q => ConfigBits(151),
        QN => ConfigBits_N(151)
    );

Inst_frame5_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(5),
        Q => ConfigBits(150),
        QN => ConfigBits_N(150)
    );

Inst_frame5_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(5),
        Q => ConfigBits(149),
        QN => ConfigBits_N(149)
    );

Inst_frame5_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(5),
        Q => ConfigBits(148),
        QN => ConfigBits_N(148)
    );

Inst_frame5_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(5),
        Q => ConfigBits(147),
        QN => ConfigBits_N(147)
    );

Inst_frame5_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(5),
        Q => ConfigBits(146),
        QN => ConfigBits_N(146)
    );

Inst_frame5_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(5),
        Q => ConfigBits(145),
        QN => ConfigBits_N(145)
    );

Inst_frame5_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(5),
        Q => ConfigBits(144),
        QN => ConfigBits_N(144)
    );

Inst_frame5_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(5),
        Q => ConfigBits(143),
        QN => ConfigBits_N(143)
    );

Inst_frame5_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(5),
        Q => ConfigBits(142),
        QN => ConfigBits_N(142)
    );

Inst_frame5_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(5),
        Q => ConfigBits(141),
        QN => ConfigBits_N(141)
    );

Inst_frame5_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(5),
        Q => ConfigBits(140),
        QN => ConfigBits_N(140)
    );

Inst_frame5_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(5),
        Q => ConfigBits(139),
        QN => ConfigBits_N(139)
    );

Inst_frame5_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(5),
        Q => ConfigBits(138),
        QN => ConfigBits_N(138)
    );

Inst_frame5_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(5),
        Q => ConfigBits(137),
        QN => ConfigBits_N(137)
    );

Inst_frame5_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(5),
        Q => ConfigBits(136),
        QN => ConfigBits_N(136)
    );

Inst_frame6_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(6),
        Q => ConfigBits(135),
        QN => ConfigBits_N(135)
    );

Inst_frame6_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(6),
        Q => ConfigBits(134),
        QN => ConfigBits_N(134)
    );

Inst_frame6_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(6),
        Q => ConfigBits(133),
        QN => ConfigBits_N(133)
    );

Inst_frame6_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(6),
        Q => ConfigBits(132),
        QN => ConfigBits_N(132)
    );

Inst_frame6_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(6),
        Q => ConfigBits(131),
        QN => ConfigBits_N(131)
    );

Inst_frame6_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(6),
        Q => ConfigBits(130),
        QN => ConfigBits_N(130)
    );

Inst_frame6_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(6),
        Q => ConfigBits(129),
        QN => ConfigBits_N(129)
    );

Inst_frame6_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(6),
        Q => ConfigBits(128),
        QN => ConfigBits_N(128)
    );

Inst_frame6_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(6),
        Q => ConfigBits(127),
        QN => ConfigBits_N(127)
    );

Inst_frame6_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(6),
        Q => ConfigBits(126),
        QN => ConfigBits_N(126)
    );

Inst_frame6_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(6),
        Q => ConfigBits(125),
        QN => ConfigBits_N(125)
    );

Inst_frame6_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(6),
        Q => ConfigBits(124),
        QN => ConfigBits_N(124)
    );

Inst_frame6_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(6),
        Q => ConfigBits(123),
        QN => ConfigBits_N(123)
    );

Inst_frame6_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(6),
        Q => ConfigBits(122),
        QN => ConfigBits_N(122)
    );

Inst_frame6_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(6),
        Q => ConfigBits(121),
        QN => ConfigBits_N(121)
    );

Inst_frame6_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(6),
        Q => ConfigBits(120),
        QN => ConfigBits_N(120)
    );

Inst_frame6_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(6),
        Q => ConfigBits(119),
        QN => ConfigBits_N(119)
    );

Inst_frame6_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(6),
        Q => ConfigBits(118),
        QN => ConfigBits_N(118)
    );

Inst_frame6_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(6),
        Q => ConfigBits(117),
        QN => ConfigBits_N(117)
    );

Inst_frame6_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(6),
        Q => ConfigBits(116),
        QN => ConfigBits_N(116)
    );

Inst_frame6_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(6),
        Q => ConfigBits(115),
        QN => ConfigBits_N(115)
    );

Inst_frame6_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(6),
        Q => ConfigBits(114),
        QN => ConfigBits_N(114)
    );

Inst_frame6_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(6),
        Q => ConfigBits(113),
        QN => ConfigBits_N(113)
    );

Inst_frame6_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(6),
        Q => ConfigBits(112),
        QN => ConfigBits_N(112)
    );

Inst_frame6_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(6),
        Q => ConfigBits(111),
        QN => ConfigBits_N(111)
    );

Inst_frame6_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(6),
        Q => ConfigBits(110),
        QN => ConfigBits_N(110)
    );

Inst_frame6_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(6),
        Q => ConfigBits(109),
        QN => ConfigBits_N(109)
    );

Inst_frame6_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(6),
        Q => ConfigBits(108),
        QN => ConfigBits_N(108)
    );

Inst_frame6_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(6),
        Q => ConfigBits(107),
        QN => ConfigBits_N(107)
    );

Inst_frame6_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(6),
        Q => ConfigBits(106),
        QN => ConfigBits_N(106)
    );

Inst_frame6_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(6),
        Q => ConfigBits(105),
        QN => ConfigBits_N(105)
    );

Inst_frame6_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(6),
        Q => ConfigBits(104),
        QN => ConfigBits_N(104)
    );

Inst_frame7_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(7),
        Q => ConfigBits(103),
        QN => ConfigBits_N(103)
    );

Inst_frame7_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(7),
        Q => ConfigBits(102),
        QN => ConfigBits_N(102)
    );

Inst_frame7_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(7),
        Q => ConfigBits(101),
        QN => ConfigBits_N(101)
    );

Inst_frame7_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(7),
        Q => ConfigBits(100),
        QN => ConfigBits_N(100)
    );

Inst_frame7_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(7),
        Q => ConfigBits(99),
        QN => ConfigBits_N(99)
    );

Inst_frame7_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(7),
        Q => ConfigBits(98),
        QN => ConfigBits_N(98)
    );

Inst_frame7_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(7),
        Q => ConfigBits(97),
        QN => ConfigBits_N(97)
    );

Inst_frame7_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(7),
        Q => ConfigBits(96),
        QN => ConfigBits_N(96)
    );

Inst_frame7_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(7),
        Q => ConfigBits(95),
        QN => ConfigBits_N(95)
    );

Inst_frame7_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(7),
        Q => ConfigBits(94),
        QN => ConfigBits_N(94)
    );

Inst_frame7_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(7),
        Q => ConfigBits(93),
        QN => ConfigBits_N(93)
    );

Inst_frame7_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(7),
        Q => ConfigBits(92),
        QN => ConfigBits_N(92)
    );

Inst_frame7_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(7),
        Q => ConfigBits(91),
        QN => ConfigBits_N(91)
    );

Inst_frame7_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(7),
        Q => ConfigBits(90),
        QN => ConfigBits_N(90)
    );

Inst_frame7_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(7),
        Q => ConfigBits(89),
        QN => ConfigBits_N(89)
    );

Inst_frame7_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(7),
        Q => ConfigBits(88),
        QN => ConfigBits_N(88)
    );

Inst_frame7_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(7),
        Q => ConfigBits(87),
        QN => ConfigBits_N(87)
    );

Inst_frame7_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(7),
        Q => ConfigBits(86),
        QN => ConfigBits_N(86)
    );

Inst_frame7_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(7),
        Q => ConfigBits(85),
        QN => ConfigBits_N(85)
    );

Inst_frame7_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(7),
        Q => ConfigBits(84),
        QN => ConfigBits_N(84)
    );

Inst_frame7_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(7),
        Q => ConfigBits(83),
        QN => ConfigBits_N(83)
    );

Inst_frame7_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(7),
        Q => ConfigBits(82),
        QN => ConfigBits_N(82)
    );

Inst_frame7_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(7),
        Q => ConfigBits(81),
        QN => ConfigBits_N(81)
    );

Inst_frame7_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(7),
        Q => ConfigBits(80),
        QN => ConfigBits_N(80)
    );

Inst_frame7_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(7),
        Q => ConfigBits(79),
        QN => ConfigBits_N(79)
    );

Inst_frame7_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(7),
        Q => ConfigBits(78),
        QN => ConfigBits_N(78)
    );

Inst_frame7_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(7),
        Q => ConfigBits(77),
        QN => ConfigBits_N(77)
    );

Inst_frame7_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(7),
        Q => ConfigBits(76),
        QN => ConfigBits_N(76)
    );

Inst_frame7_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(7),
        Q => ConfigBits(75),
        QN => ConfigBits_N(75)
    );

Inst_frame7_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(7),
        Q => ConfigBits(74),
        QN => ConfigBits_N(74)
    );

Inst_frame7_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(7),
        Q => ConfigBits(73),
        QN => ConfigBits_N(73)
    );

Inst_frame7_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(7),
        Q => ConfigBits(72),
        QN => ConfigBits_N(72)
    );

Inst_frame8_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(8),
        Q => ConfigBits(71),
        QN => ConfigBits_N(71)
    );

Inst_frame8_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(8),
        Q => ConfigBits(70),
        QN => ConfigBits_N(70)
    );

Inst_frame8_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(8),
        Q => ConfigBits(69),
        QN => ConfigBits_N(69)
    );

Inst_frame8_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(8),
        Q => ConfigBits(68),
        QN => ConfigBits_N(68)
    );

Inst_frame8_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(8),
        Q => ConfigBits(67),
        QN => ConfigBits_N(67)
    );

Inst_frame8_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(8),
        Q => ConfigBits(66),
        QN => ConfigBits_N(66)
    );

Inst_frame8_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(8),
        Q => ConfigBits(65),
        QN => ConfigBits_N(65)
    );

Inst_frame8_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(8),
        Q => ConfigBits(64),
        QN => ConfigBits_N(64)
    );

Inst_frame8_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(8),
        Q => ConfigBits(63),
        QN => ConfigBits_N(63)
    );

Inst_frame8_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(8),
        Q => ConfigBits(62),
        QN => ConfigBits_N(62)
    );

Inst_frame8_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(8),
        Q => ConfigBits(61),
        QN => ConfigBits_N(61)
    );

Inst_frame8_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(8),
        Q => ConfigBits(60),
        QN => ConfigBits_N(60)
    );

Inst_frame8_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(8),
        Q => ConfigBits(59),
        QN => ConfigBits_N(59)
    );

Inst_frame8_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(8),
        Q => ConfigBits(58),
        QN => ConfigBits_N(58)
    );

Inst_frame8_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(8),
        Q => ConfigBits(57),
        QN => ConfigBits_N(57)
    );

Inst_frame8_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(8),
        Q => ConfigBits(56),
        QN => ConfigBits_N(56)
    );

Inst_frame8_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(8),
        Q => ConfigBits(55),
        QN => ConfigBits_N(55)
    );

Inst_frame8_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(8),
        Q => ConfigBits(54),
        QN => ConfigBits_N(54)
    );

Inst_frame8_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(8),
        Q => ConfigBits(53),
        QN => ConfigBits_N(53)
    );

Inst_frame8_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(8),
        Q => ConfigBits(52),
        QN => ConfigBits_N(52)
    );

Inst_frame8_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(8),
        Q => ConfigBits(51),
        QN => ConfigBits_N(51)
    );

Inst_frame8_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(8),
        Q => ConfigBits(50),
        QN => ConfigBits_N(50)
    );

Inst_frame8_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(8),
        Q => ConfigBits(49),
        QN => ConfigBits_N(49)
    );

Inst_frame8_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(8),
        Q => ConfigBits(48),
        QN => ConfigBits_N(48)
    );

Inst_frame8_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(8),
        Q => ConfigBits(47),
        QN => ConfigBits_N(47)
    );

Inst_frame8_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(8),
        Q => ConfigBits(46),
        QN => ConfigBits_N(46)
    );

Inst_frame8_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(8),
        Q => ConfigBits(45),
        QN => ConfigBits_N(45)
    );

Inst_frame8_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(8),
        Q => ConfigBits(44),
        QN => ConfigBits_N(44)
    );

Inst_frame8_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(8),
        Q => ConfigBits(43),
        QN => ConfigBits_N(43)
    );

Inst_frame8_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(8),
        Q => ConfigBits(42),
        QN => ConfigBits_N(42)
    );

Inst_frame8_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(8),
        Q => ConfigBits(41),
        QN => ConfigBits_N(41)
    );

Inst_frame8_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(8),
        Q => ConfigBits(40),
        QN => ConfigBits_N(40)
    );

Inst_frame9_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(9),
        Q => ConfigBits(39),
        QN => ConfigBits_N(39)
    );

Inst_frame9_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(9),
        Q => ConfigBits(38),
        QN => ConfigBits_N(38)
    );

Inst_frame9_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(9),
        Q => ConfigBits(37),
        QN => ConfigBits_N(37)
    );

Inst_frame9_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(9),
        Q => ConfigBits(36),
        QN => ConfigBits_N(36)
    );

Inst_frame9_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(9),
        Q => ConfigBits(35),
        QN => ConfigBits_N(35)
    );

Inst_frame9_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(9),
        Q => ConfigBits(34),
        QN => ConfigBits_N(34)
    );

Inst_frame9_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(9),
        Q => ConfigBits(33),
        QN => ConfigBits_N(33)
    );

Inst_frame9_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(9),
        Q => ConfigBits(32),
        QN => ConfigBits_N(32)
    );

Inst_frame9_bit23 : LHQD1
    Port map(
        D => FrameData(23),
        E => FrameStrobe(9),
        Q => ConfigBits(31),
        QN => ConfigBits_N(31)
    );

Inst_frame9_bit22 : LHQD1
    Port map(
        D => FrameData(22),
        E => FrameStrobe(9),
        Q => ConfigBits(30),
        QN => ConfigBits_N(30)
    );

Inst_frame9_bit21 : LHQD1
    Port map(
        D => FrameData(21),
        E => FrameStrobe(9),
        Q => ConfigBits(29),
        QN => ConfigBits_N(29)
    );

Inst_frame9_bit20 : LHQD1
    Port map(
        D => FrameData(20),
        E => FrameStrobe(9),
        Q => ConfigBits(28),
        QN => ConfigBits_N(28)
    );

Inst_frame9_bit19 : LHQD1
    Port map(
        D => FrameData(19),
        E => FrameStrobe(9),
        Q => ConfigBits(27),
        QN => ConfigBits_N(27)
    );

Inst_frame9_bit18 : LHQD1
    Port map(
        D => FrameData(18),
        E => FrameStrobe(9),
        Q => ConfigBits(26),
        QN => ConfigBits_N(26)
    );

Inst_frame9_bit17 : LHQD1
    Port map(
        D => FrameData(17),
        E => FrameStrobe(9),
        Q => ConfigBits(25),
        QN => ConfigBits_N(25)
    );

Inst_frame9_bit16 : LHQD1
    Port map(
        D => FrameData(16),
        E => FrameStrobe(9),
        Q => ConfigBits(24),
        QN => ConfigBits_N(24)
    );

Inst_frame9_bit15 : LHQD1
    Port map(
        D => FrameData(15),
        E => FrameStrobe(9),
        Q => ConfigBits(23),
        QN => ConfigBits_N(23)
    );

Inst_frame9_bit14 : LHQD1
    Port map(
        D => FrameData(14),
        E => FrameStrobe(9),
        Q => ConfigBits(22),
        QN => ConfigBits_N(22)
    );

Inst_frame9_bit13 : LHQD1
    Port map(
        D => FrameData(13),
        E => FrameStrobe(9),
        Q => ConfigBits(21),
        QN => ConfigBits_N(21)
    );

Inst_frame9_bit12 : LHQD1
    Port map(
        D => FrameData(12),
        E => FrameStrobe(9),
        Q => ConfigBits(20),
        QN => ConfigBits_N(20)
    );

Inst_frame9_bit11 : LHQD1
    Port map(
        D => FrameData(11),
        E => FrameStrobe(9),
        Q => ConfigBits(19),
        QN => ConfigBits_N(19)
    );

Inst_frame9_bit10 : LHQD1
    Port map(
        D => FrameData(10),
        E => FrameStrobe(9),
        Q => ConfigBits(18),
        QN => ConfigBits_N(18)
    );

Inst_frame9_bit9 : LHQD1
    Port map(
        D => FrameData(9),
        E => FrameStrobe(9),
        Q => ConfigBits(17),
        QN => ConfigBits_N(17)
    );

Inst_frame9_bit8 : LHQD1
    Port map(
        D => FrameData(8),
        E => FrameStrobe(9),
        Q => ConfigBits(16),
        QN => ConfigBits_N(16)
    );

Inst_frame9_bit7 : LHQD1
    Port map(
        D => FrameData(7),
        E => FrameStrobe(9),
        Q => ConfigBits(15),
        QN => ConfigBits_N(15)
    );

Inst_frame9_bit6 : LHQD1
    Port map(
        D => FrameData(6),
        E => FrameStrobe(9),
        Q => ConfigBits(14),
        QN => ConfigBits_N(14)
    );

Inst_frame9_bit5 : LHQD1
    Port map(
        D => FrameData(5),
        E => FrameStrobe(9),
        Q => ConfigBits(13),
        QN => ConfigBits_N(13)
    );

Inst_frame9_bit4 : LHQD1
    Port map(
        D => FrameData(4),
        E => FrameStrobe(9),
        Q => ConfigBits(12),
        QN => ConfigBits_N(12)
    );

Inst_frame9_bit3 : LHQD1
    Port map(
        D => FrameData(3),
        E => FrameStrobe(9),
        Q => ConfigBits(11),
        QN => ConfigBits_N(11)
    );

Inst_frame9_bit2 : LHQD1
    Port map(
        D => FrameData(2),
        E => FrameStrobe(9),
        Q => ConfigBits(10),
        QN => ConfigBits_N(10)
    );

Inst_frame9_bit1 : LHQD1
    Port map(
        D => FrameData(1),
        E => FrameStrobe(9),
        Q => ConfigBits(9),
        QN => ConfigBits_N(9)
    );

Inst_frame9_bit0 : LHQD1
    Port map(
        D => FrameData(0),
        E => FrameStrobe(9),
        Q => ConfigBits(8),
        QN => ConfigBits_N(8)
    );

Inst_frame10_bit31 : LHQD1
    Port map(
        D => FrameData(31),
        E => FrameStrobe(10),
        Q => ConfigBits(7),
        QN => ConfigBits_N(7)
    );

Inst_frame10_bit30 : LHQD1
    Port map(
        D => FrameData(30),
        E => FrameStrobe(10),
        Q => ConfigBits(6),
        QN => ConfigBits_N(6)
    );

Inst_frame10_bit29 : LHQD1
    Port map(
        D => FrameData(29),
        E => FrameStrobe(10),
        Q => ConfigBits(5),
        QN => ConfigBits_N(5)
    );

Inst_frame10_bit28 : LHQD1
    Port map(
        D => FrameData(28),
        E => FrameStrobe(10),
        Q => ConfigBits(4),
        QN => ConfigBits_N(4)
    );

Inst_frame10_bit27 : LHQD1
    Port map(
        D => FrameData(27),
        E => FrameStrobe(10),
        Q => ConfigBits(3),
        QN => ConfigBits_N(3)
    );

Inst_frame10_bit26 : LHQD1
    Port map(
        D => FrameData(26),
        E => FrameStrobe(10),
        Q => ConfigBits(2),
        QN => ConfigBits_N(2)
    );

Inst_frame10_bit25 : LHQD1
    Port map(
        D => FrameData(25),
        E => FrameStrobe(10),
        Q => ConfigBits(1),
        QN => ConfigBits_N(1)
    );

Inst_frame10_bit24 : LHQD1
    Port map(
        D => FrameData(24),
        E => FrameStrobe(10),
        Q => ConfigBits(0),
        QN => ConfigBits_N(0)
    );

end architecture Behavioral;