module DSP_top_sm
    #(
`ifdef EMULATION
        parameter [639:0] Tile_X0Y0_Emulate_Bitstream=640'b0,
        parameter [639:0] Tile_X0Y1_Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32
    )
    (
    //Tile_X0Y0_Direction.NORTH
        output  [3:0] Tile_X0Y0_N1BEG, //TilePort({N} OUTPUT N1BEG[3:0])
        output  [7:0] Tile_X0Y0_N2BEG, //TilePort({N} OUTPUT N2BEG[7:0])
        output  [7:0] Tile_X0Y0_N2BEGb, //TilePort({N} OUTPUT N2BEGb[7:0])
        output  [15:0] Tile_X0Y0_N4BEG, //TilePort({N} OUTPUT N4BEG[3:0])
        output  [15:0] Tile_X0Y0_NN4BEG, //TilePort({N} OUTPUT NN4BEG[3:0])
        input  [3:0] Tile_X0Y0_S1END, //TilePort({N} INPUT S1END[3:0])
        input  [7:0] Tile_X0Y0_S2MID, //TilePort({N} INPUT S2MID[7:0])
        input  [7:0] Tile_X0Y0_S2END, //TilePort({N} INPUT S2END[7:0])
        input  [15:0] Tile_X0Y0_S4END, //TilePort({N} INPUT S4END[3:0])
        input  [15:0] Tile_X0Y0_SS4END, //TilePort({N} INPUT SS4END[3:0])
    //Tile_X0Y0_Direction.EAST
        output  [3:0] Tile_X0Y0_E1BEG, //TilePort({E} OUTPUT E1BEG[3:0])
        output  [7:0] Tile_X0Y0_E2BEG, //TilePort({E} OUTPUT E2BEG[7:0])
        output  [7:0] Tile_X0Y0_E2BEGb, //TilePort({E} OUTPUT E2BEGb[7:0])
        output  [15:0] Tile_X0Y0_EE4BEG, //TilePort({E} OUTPUT EE4BEG[3:0])
        output  [11:0] Tile_X0Y0_E6BEG, //TilePort({E} OUTPUT E6BEG[1:0])
        input  [3:0] Tile_X0Y0_W1END, //TilePort({E} INPUT W1END[3:0])
        input  [7:0] Tile_X0Y0_W2MID, //TilePort({E} INPUT W2MID[7:0])
        input  [7:0] Tile_X0Y0_W2END, //TilePort({E} INPUT W2END[7:0])
        input  [15:0] Tile_X0Y0_WW4END, //TilePort({E} INPUT WW4END[3:0])
        input  [11:0] Tile_X0Y0_W6END, //TilePort({E} INPUT W6END[1:0])
    //Tile_X0Y0_Direction.EAST
        input  [3:0] Tile_X0Y0_E1END, //TilePort({W} INPUT E1END[3:0])
        input  [7:0] Tile_X0Y0_E2MID, //TilePort({W} INPUT E2MID[7:0])
        input  [7:0] Tile_X0Y0_E2END, //TilePort({W} INPUT E2END[7:0])
        input  [15:0] Tile_X0Y0_EE4END, //TilePort({W} INPUT EE4END[3:0])
        input  [11:0] Tile_X0Y0_E6END, //TilePort({W} INPUT E6END[1:0])
        output  [3:0] Tile_X0Y0_W1BEG, //TilePort({W} OUTPUT W1BEG[3:0])
        output  [7:0] Tile_X0Y0_W2BEG, //TilePort({W} OUTPUT W2BEG[7:0])
        output  [7:0] Tile_X0Y0_W2BEGb, //TilePort({W} OUTPUT W2BEGb[7:0])
        output  [15:0] Tile_X0Y0_WW4BEG, //TilePort({W} OUTPUT WW4BEG[3:0])
        output  [11:0] Tile_X0Y0_W6BEG, //TilePort({W} OUTPUT W6BEG[1:0])
    //Tile_X0Y1_Direction.EAST
        output  [3:0] Tile_X0Y1_E1BEG, //TilePort({E} OUTPUT E1BEG[3:0])
        output  [7:0] Tile_X0Y1_E2BEG, //TilePort({E} OUTPUT E2BEG[7:0])
        output  [7:0] Tile_X0Y1_E2BEGb, //TilePort({E} OUTPUT E2BEGb[7:0])
        output  [15:0] Tile_X0Y1_EE4BEG, //TilePort({E} OUTPUT EE4BEG[3:0])
        output  [11:0] Tile_X0Y1_E6BEG, //TilePort({E} OUTPUT E6BEG[1:0])
        input  [3:0] Tile_X0Y1_W1END, //TilePort({E} INPUT W1END[3:0])
        input  [7:0] Tile_X0Y1_W2MID, //TilePort({E} INPUT W2MID[7:0])
        input  [7:0] Tile_X0Y1_W2END, //TilePort({E} INPUT W2END[7:0])
        input  [15:0] Tile_X0Y1_WW4END, //TilePort({E} INPUT WW4END[3:0])
        input  [11:0] Tile_X0Y1_W6END, //TilePort({E} INPUT W6END[1:0])
    //Tile_X0Y1_Direction.NORTH
        input  [3:0] Tile_X0Y1_N1END, //TilePort({S} INPUT N1END[3:0])
        input  [7:0] Tile_X0Y1_N2MID, //TilePort({S} INPUT N2MID[7:0])
        input  [7:0] Tile_X0Y1_N2END, //TilePort({S} INPUT N2END[7:0])
        input  [15:0] Tile_X0Y1_N4END, //TilePort({S} INPUT N4END[3:0])
        input  [15:0] Tile_X0Y1_NN4END, //TilePort({S} INPUT NN4END[3:0])
        output  [3:0] Tile_X0Y1_S1BEG, //TilePort({S} OUTPUT S1BEG[3:0])
        output  [7:0] Tile_X0Y1_S2BEG, //TilePort({S} OUTPUT S2BEG[7:0])
        output  [7:0] Tile_X0Y1_S2BEGb, //TilePort({S} OUTPUT S2BEGb[7:0])
        output  [15:0] Tile_X0Y1_S4BEG, //TilePort({S} OUTPUT S4BEG[3:0])
        output  [15:0] Tile_X0Y1_SS4BEG, //TilePort({S} OUTPUT SS4BEG[3:0])
    //Tile_X0Y1_Direction.EAST
        input  [3:0] Tile_X0Y1_E1END, //TilePort({W} INPUT E1END[3:0])
        input  [7:0] Tile_X0Y1_E2MID, //TilePort({W} INPUT E2MID[7:0])
        input  [7:0] Tile_X0Y1_E2END, //TilePort({W} INPUT E2END[7:0])
        input  [15:0] Tile_X0Y1_EE4END, //TilePort({W} INPUT EE4END[3:0])
        input  [11:0] Tile_X0Y1_E6END, //TilePort({W} INPUT E6END[1:0])
        output  [3:0] Tile_X0Y1_W1BEG, //TilePort({W} OUTPUT W1BEG[3:0])
        output  [7:0] Tile_X0Y1_W2BEG, //TilePort({W} OUTPUT W2BEG[7:0])
        output  [7:0] Tile_X0Y1_W2BEGb, //TilePort({W} OUTPUT W2BEGb[7:0])
        output  [15:0] Tile_X0Y1_WW4BEG, //TilePort({W} OUTPUT WW4BEG[3:0])
        output  [11:0] Tile_X0Y1_W6BEG, //TilePort({W} OUTPUT W6BEG[1:0])
    //Tile IO ports from BELs
    //SuperTile BEL IO ports
        output  [MaxFramesPerCol-1:0] Tile_X0Y0_FrameStrobe_O, //CONFIG_PORT
        input  [FrameBitsPerRow-1:0] Tile_X0Y0_FrameData, //CONFIG_PORT
        output  [FrameBitsPerRow-1:0] Tile_X0Y0_FrameData_O, //CONFIG_PORT
        input  [FrameBitsPerRow-1:0] Tile_X0Y1_FrameData, //CONFIG_PORT
        input  [MaxFramesPerCol-1:0] Tile_X0Y1_FrameStrobe, //CONFIG_PORT
        output  [FrameBitsPerRow-1:0] Tile_X0Y1_FrameData_O, //CONFIG_PORT
        output  Tile_X0Y0_UserCLKo,
        input  Tile_X0Y1_UserCLK
);

 //signal declarations
 //SJUMP signals (child tile -> supertile SM)
    wire[4-1:0] DSP_top_sm_top_A;
    wire[4-1:0] DSP_top_sm_top_B;
    wire[10-1:0] DSP_top_sm_top_C;
    wire[4-1:0] DSP_top_sm_bot_A;
    wire[4-1:0] DSP_top_sm_bot_B;
    wire[10-1:0] DSP_top_sm_bot_C;
    wire[1-1:0] DSP_top_sm_bot_clr;
 //SJUMP signals (supertile SM -> child tile)
    wire[10-1:0] DSP_top_sm_top_Q;
    wire[10-1:0] DSP_top_sm_bot_Q;
 //BEL pin signals (BEL <-> supertile SM)
    wire DSP_A0;
    wire DSP_A1;
    wire DSP_A2;
    wire DSP_A3;
    wire DSP_A4;
    wire DSP_A5;
    wire DSP_A6;
    wire DSP_A7;
    wire DSP_B0;
    wire DSP_B1;
    wire DSP_B2;
    wire DSP_B3;
    wire DSP_B4;
    wire DSP_B5;
    wire DSP_B6;
    wire DSP_B7;
    wire DSP_C0;
    wire DSP_C1;
    wire DSP_C2;
    wire DSP_C3;
    wire DSP_C4;
    wire DSP_C5;
    wire DSP_C6;
    wire DSP_C7;
    wire DSP_C8;
    wire DSP_C9;
    wire DSP_C10;
    wire DSP_C11;
    wire DSP_C12;
    wire DSP_C13;
    wire DSP_C14;
    wire DSP_C15;
    wire DSP_C16;
    wire DSP_C17;
    wire DSP_C18;
    wire DSP_C19;
    wire DSP_clr;
    wire DSP_Q0;
    wire DSP_Q1;
    wire DSP_Q2;
    wire DSP_Q3;
    wire DSP_Q4;
    wire DSP_Q5;
    wire DSP_Q6;
    wire DSP_Q7;
    wire DSP_Q8;
    wire DSP_Q9;
    wire DSP_Q10;
    wire DSP_Q11;
    wire DSP_Q12;
    wire DSP_Q13;
    wire DSP_Q14;
    wire DSP_Q15;
    wire DSP_Q16;
    wire DSP_Q17;
    wire DSP_Q18;
    wire DSP_Q19;
 //Tile_X0Y0_Direction.NORTH
    wire[3:0] Tile_X0Y0_S1BEG; //TilePort({S} OUTPUT S1BEG[3:0])
    wire[7:0] Tile_X0Y0_S2BEG; //TilePort({S} OUTPUT S2BEG[7:0])
    wire[7:0] Tile_X0Y0_S2BEGb; //TilePort({S} OUTPUT S2BEGb[7:0])
    wire[15:0] Tile_X0Y0_S4BEG; //TilePort({S} OUTPUT S4BEG[3:0])
    wire[15:0] Tile_X0Y0_SS4BEG; //TilePort({S} OUTPUT SS4BEG[3:0])
 //Tile_X0Y1_Direction.NORTH
    wire[3:0] Tile_X0Y1_N1BEG; //TilePort({N} OUTPUT N1BEG[3:0])
    wire[7:0] Tile_X0Y1_N2BEG; //TilePort({N} OUTPUT N2BEG[7:0])
    wire[7:0] Tile_X0Y1_N2BEGb; //TilePort({N} OUTPUT N2BEGb[7:0])
    wire[15:0] Tile_X0Y1_N4BEG; //TilePort({N} OUTPUT N4BEG[3:0])
    wire[15:0] Tile_X0Y1_NN4BEG; //TilePort({N} OUTPUT NN4BEG[3:0])
    wire[MaxFramesPerCol-1:0] Tile_X0Y1_FrameStrobe_O;
    wire Tile_X0Y1_UserCLKo;
    wire[6-1:0] ST_ConfigBits;
    wire[6-1:0] ST_ConfigBits_N;

DSP_top_sm_top
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y0_Emulate_Bitstream)
    )
`endif
    Tile_X0Y0_DSP_top_sm_top
    (
    .N1END(Tile_X0Y1_N1BEG),
    .N2MID(Tile_X0Y1_N2BEG),
    .N2END(Tile_X0Y1_N2BEGb),
    .N4END(Tile_X0Y1_N4BEG),
    .NN4END(Tile_X0Y1_NN4BEG),
    .E1END(Tile_X0Y0_E1END),
    .E2MID(Tile_X0Y0_E2MID),
    .E2END(Tile_X0Y0_E2END),
    .EE4END(Tile_X0Y0_EE4END),
    .E6END(Tile_X0Y0_E6END),
    .S1END(Tile_X0Y0_S1END),
    .S2MID(Tile_X0Y0_S2MID),
    .S2END(Tile_X0Y0_S2END),
    .S4END(Tile_X0Y0_S4END),
    .SS4END(Tile_X0Y0_SS4END),
    .W1END(Tile_X0Y0_W1END),
    .W2MID(Tile_X0Y0_W2MID),
    .W2END(Tile_X0Y0_W2END),
    .WW4END(Tile_X0Y0_WW4END),
    .W6END(Tile_X0Y0_W6END),
    .N1BEG(Tile_X0Y0_N1BEG),
    .N2BEG(Tile_X0Y0_N2BEG),
    .N2BEGb(Tile_X0Y0_N2BEGb),
    .N4BEG(Tile_X0Y0_N4BEG),
    .NN4BEG(Tile_X0Y0_NN4BEG),
    .E1BEG(Tile_X0Y0_E1BEG),
    .E2BEG(Tile_X0Y0_E2BEG),
    .E2BEGb(Tile_X0Y0_E2BEGb),
    .EE4BEG(Tile_X0Y0_EE4BEG),
    .E6BEG(Tile_X0Y0_E6BEG),
    .S1BEG(Tile_X0Y0_S1BEG),
    .S2BEG(Tile_X0Y0_S2BEG),
    .S2BEGb(Tile_X0Y0_S2BEGb),
    .S4BEG(Tile_X0Y0_S4BEG),
    .SS4BEG(Tile_X0Y0_SS4BEG),
    .W1BEG(Tile_X0Y0_W1BEG),
    .W2BEG(Tile_X0Y0_W2BEG),
    .W2BEGb(Tile_X0Y0_W2BEGb),
    .WW4BEG(Tile_X0Y0_WW4BEG),
    .W6BEG(Tile_X0Y0_W6BEG),
    .A(DSP_top_sm_top_A),
    .B(DSP_top_sm_top_B),
    .C(DSP_top_sm_top_C),
    .Q(DSP_top_sm_top_Q),
    .UserCLK(Tile_X0Y1_UserCLKo),
    .UserCLKo(Tile_X0Y0_UserCLKo),
    .FrameData(Tile_X0Y0_FrameData),
    .FrameData_O(Tile_X0Y0_FrameData_O),
    .FrameStrobe(Tile_X0Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y0_FrameStrobe_O)
);

DSP_top_sm_bot
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y1_Emulate_Bitstream)
    )
`endif
    Tile_X0Y1_DSP_top_sm_bot
    (
    .N1END(Tile_X0Y1_N1END),
    .N2MID(Tile_X0Y1_N2MID),
    .N2END(Tile_X0Y1_N2END),
    .N4END(Tile_X0Y1_N4END),
    .NN4END(Tile_X0Y1_NN4END),
    .E1END(Tile_X0Y1_E1END),
    .E2MID(Tile_X0Y1_E2MID),
    .E2END(Tile_X0Y1_E2END),
    .EE4END(Tile_X0Y1_EE4END),
    .E6END(Tile_X0Y1_E6END),
    .S1END(Tile_X0Y0_S1BEG),
    .S2MID(Tile_X0Y0_S2BEG),
    .S2END(Tile_X0Y0_S2BEGb),
    .S4END(Tile_X0Y0_S4BEG),
    .SS4END(Tile_X0Y0_SS4BEG),
    .W1END(Tile_X0Y1_W1END),
    .W2MID(Tile_X0Y1_W2MID),
    .W2END(Tile_X0Y1_W2END),
    .WW4END(Tile_X0Y1_WW4END),
    .W6END(Tile_X0Y1_W6END),
    .N1BEG(Tile_X0Y1_N1BEG),
    .N2BEG(Tile_X0Y1_N2BEG),
    .N2BEGb(Tile_X0Y1_N2BEGb),
    .N4BEG(Tile_X0Y1_N4BEG),
    .NN4BEG(Tile_X0Y1_NN4BEG),
    .E1BEG(Tile_X0Y1_E1BEG),
    .E2BEG(Tile_X0Y1_E2BEG),
    .E2BEGb(Tile_X0Y1_E2BEGb),
    .EE4BEG(Tile_X0Y1_EE4BEG),
    .E6BEG(Tile_X0Y1_E6BEG),
    .S1BEG(Tile_X0Y1_S1BEG),
    .S2BEG(Tile_X0Y1_S2BEG),
    .S2BEGb(Tile_X0Y1_S2BEGb),
    .S4BEG(Tile_X0Y1_S4BEG),
    .SS4BEG(Tile_X0Y1_SS4BEG),
    .W1BEG(Tile_X0Y1_W1BEG),
    .W2BEG(Tile_X0Y1_W2BEG),
    .W2BEGb(Tile_X0Y1_W2BEGb),
    .WW4BEG(Tile_X0Y1_WW4BEG),
    .W6BEG(Tile_X0Y1_W6BEG),
    .A(DSP_top_sm_bot_A),
    .B(DSP_top_sm_bot_B),
    .C(DSP_top_sm_bot_C),
    .clr(DSP_top_sm_bot_clr),
    .Q(DSP_top_sm_bot_Q),
    .UserCLK(Tile_X0Y1_UserCLK),
    .UserCLKo(Tile_X0Y1_UserCLKo),
    .FrameData(Tile_X0Y1_FrameData),
    .FrameData_O(Tile_X0Y1_FrameData_O),
    .FrameStrobe(Tile_X0Y1_FrameStrobe),
    .FrameStrobe_O(Tile_X0Y1_FrameStrobe_O)
);

DSP_top_sm_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y1_Emulate_Bitstream)
    )
`endif
    Inst_DSP_top_sm_ConfigMem
    (
    .FrameData(Tile_X0Y1_FrameData),
    .FrameStrobe(Tile_X0Y1_FrameStrobe),
    .ConfigBits(ST_ConfigBits[6-1:0]),
    .ConfigBits_N(ST_ConfigBits_N[6-1:0])
);

DSP_top_sm_switch_matrix Inst_DSP_top_sm_switch_matrix (
    .DSP_top_sm_top_A0(DSP_top_sm_top_A[0]),
    .DSP_top_sm_top_A1(DSP_top_sm_top_A[1]),
    .DSP_top_sm_top_A2(DSP_top_sm_top_A[2]),
    .DSP_top_sm_top_A3(DSP_top_sm_top_A[3]),
    .DSP_top_sm_top_B0(DSP_top_sm_top_B[0]),
    .DSP_top_sm_top_B1(DSP_top_sm_top_B[1]),
    .DSP_top_sm_top_B2(DSP_top_sm_top_B[2]),
    .DSP_top_sm_top_B3(DSP_top_sm_top_B[3]),
    .DSP_top_sm_top_C0(DSP_top_sm_top_C[0]),
    .DSP_top_sm_top_C1(DSP_top_sm_top_C[1]),
    .DSP_top_sm_top_C2(DSP_top_sm_top_C[2]),
    .DSP_top_sm_top_C3(DSP_top_sm_top_C[3]),
    .DSP_top_sm_top_C4(DSP_top_sm_top_C[4]),
    .DSP_top_sm_top_C5(DSP_top_sm_top_C[5]),
    .DSP_top_sm_top_C6(DSP_top_sm_top_C[6]),
    .DSP_top_sm_top_C7(DSP_top_sm_top_C[7]),
    .DSP_top_sm_top_C8(DSP_top_sm_top_C[8]),
    .DSP_top_sm_top_C9(DSP_top_sm_top_C[9]),
    .DSP_top_sm_bot_A0(DSP_top_sm_bot_A[0]),
    .DSP_top_sm_bot_A1(DSP_top_sm_bot_A[1]),
    .DSP_top_sm_bot_A2(DSP_top_sm_bot_A[2]),
    .DSP_top_sm_bot_A3(DSP_top_sm_bot_A[3]),
    .DSP_top_sm_bot_B0(DSP_top_sm_bot_B[0]),
    .DSP_top_sm_bot_B1(DSP_top_sm_bot_B[1]),
    .DSP_top_sm_bot_B2(DSP_top_sm_bot_B[2]),
    .DSP_top_sm_bot_B3(DSP_top_sm_bot_B[3]),
    .DSP_top_sm_bot_C0(DSP_top_sm_bot_C[0]),
    .DSP_top_sm_bot_C1(DSP_top_sm_bot_C[1]),
    .DSP_top_sm_bot_C2(DSP_top_sm_bot_C[2]),
    .DSP_top_sm_bot_C3(DSP_top_sm_bot_C[3]),
    .DSP_top_sm_bot_C4(DSP_top_sm_bot_C[4]),
    .DSP_top_sm_bot_C5(DSP_top_sm_bot_C[5]),
    .DSP_top_sm_bot_C6(DSP_top_sm_bot_C[6]),
    .DSP_top_sm_bot_C7(DSP_top_sm_bot_C[7]),
    .DSP_top_sm_bot_C8(DSP_top_sm_bot_C[8]),
    .DSP_top_sm_bot_C9(DSP_top_sm_bot_C[9]),
    .DSP_top_sm_bot_clr0(DSP_top_sm_bot_clr[0]),
    .DSP_A0(DSP_A0),
    .DSP_A1(DSP_A1),
    .DSP_A2(DSP_A2),
    .DSP_A3(DSP_A3),
    .DSP_A4(DSP_A4),
    .DSP_A5(DSP_A5),
    .DSP_A6(DSP_A6),
    .DSP_A7(DSP_A7),
    .DSP_B0(DSP_B0),
    .DSP_B1(DSP_B1),
    .DSP_B2(DSP_B2),
    .DSP_B3(DSP_B3),
    .DSP_B4(DSP_B4),
    .DSP_B5(DSP_B5),
    .DSP_B6(DSP_B6),
    .DSP_B7(DSP_B7),
    .DSP_C0(DSP_C0),
    .DSP_C1(DSP_C1),
    .DSP_C2(DSP_C2),
    .DSP_C3(DSP_C3),
    .DSP_C4(DSP_C4),
    .DSP_C5(DSP_C5),
    .DSP_C6(DSP_C6),
    .DSP_C7(DSP_C7),
    .DSP_C8(DSP_C8),
    .DSP_C9(DSP_C9),
    .DSP_C10(DSP_C10),
    .DSP_C11(DSP_C11),
    .DSP_C12(DSP_C12),
    .DSP_C13(DSP_C13),
    .DSP_C14(DSP_C14),
    .DSP_C15(DSP_C15),
    .DSP_C16(DSP_C16),
    .DSP_C17(DSP_C17),
    .DSP_C18(DSP_C18),
    .DSP_C19(DSP_C19),
    .DSP_clr(DSP_clr),
    .DSP_Q0(DSP_Q0),
    .DSP_Q1(DSP_Q1),
    .DSP_Q2(DSP_Q2),
    .DSP_Q3(DSP_Q3),
    .DSP_Q4(DSP_Q4),
    .DSP_Q5(DSP_Q5),
    .DSP_Q6(DSP_Q6),
    .DSP_Q7(DSP_Q7),
    .DSP_Q8(DSP_Q8),
    .DSP_Q9(DSP_Q9),
    .DSP_Q10(DSP_Q10),
    .DSP_Q11(DSP_Q11),
    .DSP_Q12(DSP_Q12),
    .DSP_Q13(DSP_Q13),
    .DSP_Q14(DSP_Q14),
    .DSP_Q15(DSP_Q15),
    .DSP_Q16(DSP_Q16),
    .DSP_Q17(DSP_Q17),
    .DSP_Q18(DSP_Q18),
    .DSP_Q19(DSP_Q19),
    .DSP_top_sm_top_Q0(DSP_top_sm_top_Q[0]),
    .DSP_top_sm_top_Q1(DSP_top_sm_top_Q[1]),
    .DSP_top_sm_top_Q2(DSP_top_sm_top_Q[2]),
    .DSP_top_sm_top_Q3(DSP_top_sm_top_Q[3]),
    .DSP_top_sm_top_Q4(DSP_top_sm_top_Q[4]),
    .DSP_top_sm_top_Q5(DSP_top_sm_top_Q[5]),
    .DSP_top_sm_top_Q6(DSP_top_sm_top_Q[6]),
    .DSP_top_sm_top_Q7(DSP_top_sm_top_Q[7]),
    .DSP_top_sm_top_Q8(DSP_top_sm_top_Q[8]),
    .DSP_top_sm_top_Q9(DSP_top_sm_top_Q[9]),
    .DSP_top_sm_bot_Q0(DSP_top_sm_bot_Q[0]),
    .DSP_top_sm_bot_Q1(DSP_top_sm_bot_Q[1]),
    .DSP_top_sm_bot_Q2(DSP_top_sm_bot_Q[2]),
    .DSP_top_sm_bot_Q3(DSP_top_sm_bot_Q[3]),
    .DSP_top_sm_bot_Q4(DSP_top_sm_bot_Q[4]),
    .DSP_top_sm_bot_Q5(DSP_top_sm_bot_Q[5]),
    .DSP_top_sm_bot_Q6(DSP_top_sm_bot_Q[6]),
    .DSP_top_sm_bot_Q7(DSP_top_sm_bot_Q[7]),
    .DSP_top_sm_bot_Q8(DSP_top_sm_bot_Q[8]),
    .DSP_top_sm_bot_Q9(DSP_top_sm_bot_Q[9])
);

MULADD Inst_ST_DSP_MULADD (
    .A({DSP_A7, DSP_A6, DSP_A5, DSP_A4, DSP_A3, DSP_A2, DSP_A1, DSP_A0}),
    .B({DSP_B7, DSP_B6, DSP_B5, DSP_B4, DSP_B3, DSP_B2, DSP_B1, DSP_B0}),
    .C({DSP_C19, DSP_C18, DSP_C17, DSP_C16, DSP_C15, DSP_C14, DSP_C13, DSP_C12, DSP_C11, DSP_C10, DSP_C9, DSP_C8, DSP_C7, DSP_C6, DSP_C5, DSP_C4, DSP_C3, DSP_C2, DSP_C1, DSP_C0}),
    .Q({DSP_Q19, DSP_Q18, DSP_Q17, DSP_Q16, DSP_Q15, DSP_Q14, DSP_Q13, DSP_Q12, DSP_Q11, DSP_Q10, DSP_Q9, DSP_Q8, DSP_Q7, DSP_Q6, DSP_Q5, DSP_Q4, DSP_Q3, DSP_Q2, DSP_Q1, DSP_Q0}),
    .clr(DSP_clr),
    .UserCLK(Tile_X0Y1_UserCLK),
    .ConfigBits(ST_ConfigBits[6-1:0])
);

endmodule