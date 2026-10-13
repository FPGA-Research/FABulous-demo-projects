module DSP_top_sm_ConfigMem
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=6
    )
    (
        input  [FrameBitsPerRow - 1:0] FrameData,
        input  [MaxFramesPerCol - 1:0] FrameStrobe,
        output  [NoConfigBits - 1:0] ConfigBits,
        output  [NoConfigBits - 1:0] ConfigBits_N
    );

`ifdef EMULATION
assign ConfigBits[0] = Emulate_Bitstream[389];
assign ConfigBits[1] = Emulate_Bitstream[388];
assign ConfigBits[2] = Emulate_Bitstream[387];
assign ConfigBits[3] = Emulate_Bitstream[386];
assign ConfigBits[4] = Emulate_Bitstream[385];
assign ConfigBits[5] = Emulate_Bitstream[384];
`else

 //instantiate frame latches
config_latch Inst_frame12_bit5 (
    .D(FrameData[5]),
    .E(FrameStrobe[12]),
    .Q(ConfigBits[0]),
    .QN(ConfigBits_N[0])
);

config_latch Inst_frame12_bit4 (
    .D(FrameData[4]),
    .E(FrameStrobe[12]),
    .Q(ConfigBits[1]),
    .QN(ConfigBits_N[1])
);

config_latch Inst_frame12_bit3 (
    .D(FrameData[3]),
    .E(FrameStrobe[12]),
    .Q(ConfigBits[2]),
    .QN(ConfigBits_N[2])
);

config_latch Inst_frame12_bit2 (
    .D(FrameData[2]),
    .E(FrameStrobe[12]),
    .Q(ConfigBits[3]),
    .QN(ConfigBits_N[3])
);

config_latch Inst_frame12_bit1 (
    .D(FrameData[1]),
    .E(FrameStrobe[12]),
    .Q(ConfigBits[4]),
    .QN(ConfigBits_N[4])
);

config_latch Inst_frame12_bit0 (
    .D(FrameData[0]),
    .E(FrameStrobe[12]),
    .Q(ConfigBits[5]),
    .QN(ConfigBits_N[5])
);

`endif
endmodule