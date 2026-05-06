module break_comb_loop
  (input  a,
   output x);
  assign x = a; //(module output)
endmodule

module cus_mux21
  (input  a0,
   input  a1,
   input  s,
   output x);
  wire sel;
  wire [1:0] ain;
  wire break_comb_loop_inst0_n30;
  wire break_comb_loop_inst1_n33;
  wire n36;
  wire n38;
  wire n39;
  wire n41;
  wire [1:0] n43;
  reg n44;
  wire [1:0] n45;
  assign x = n44; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:588:10  */
  assign sel = s; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:597:10  */
  assign ain = n45; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:602:3  */
  break_comb_loop break_comb_loop_inst0 (
    .a(a0),
    .x(break_comb_loop_inst0_n30));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:607:3  */
  break_comb_loop break_comb_loop_inst1 (
    .a(a1),
    .x(break_comb_loop_inst1_n33));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:614:13  */
  assign n36 = ain[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:614:18  */
  assign n38 = sel == 1'b0;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:615:13  */
  assign n39 = ain[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:615:18  */
  assign n41 = sel == 1'b1;
  assign n43 = {n41, n38};
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:613:3  */
  always @*
    case (n43)
      2'b10: n44 = n39;
      2'b01: n44 = n36;
      default: n44 = 1'bX;
    endcase
  assign n45 = {break_comb_loop_inst1_n33, break_comb_loop_inst0_n30};
endmodule

(* C1=32'b00000000000000000000000000000001, C0=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module MUX8LUT_frame_config_mux
  (input  A,
   input  B,
   input  C,
   input  D,
   input  E,
   input  F,
   input  G,
   input  H,
   input  [3:0] S,
   output M_AB,
   output M_AD,
   output M_AH,
   output M_EF,
   (* GLOBAL="TRUE" *) input  [1:0] ConfigBits);
  wire ab;
  wire cd;
  wire ef;
  wire gh;
  wire scd;
  wire sef;
  wire sgh;
  wire seh;
  wire ad;
  wire eh;
  wire ah;
  wire eh_gh;
  wire c0;
  wire c1;
  wire n4;
  wire n5;
  wire n6;
  wire n11;
  wire n12;
  wire n14;
  wire n15;
  wire n18;
  wire n19;
  wire n21;
  wire n24;
  wire \cus_mux21_m_ad.x ;
  wire \cus_mux21_m_ah.x ;
  assign M_AB = ab; //(module output)
  assign M_AD = \cus_mux21_m_ad.x ; //(module output)
  assign M_AH = \cus_mux21_m_ah.x ; //(module output)
  assign M_EF = ef; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:50:10  */
  assign eh_gh = 1'bX; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:52:10  */
  assign c0 = n4; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:52:14  */
  assign c1 = n5; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:56:19  */
  assign n4 = ConfigBits[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:57:19  */
  assign n5 = ConfigBits[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:62:3  */
  cus_mux21 cus_mux21_ab (
    .a0(A),
    .a1(B),
    .s(n6),
    .x(ab));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:67:12  */
  assign n6 = S[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:72:3  */
  cus_mux21 cus_mux21_cd (
    .a0(C),
    .a1(D),
    .s(scd),
    .x(cd));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:82:3  */
  cus_mux21 cus_mux21_ef (
    .a0(E),
    .a1(F),
    .s(sef),
    .x(ef));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:92:3  */
  cus_mux21 cus_mux21_gh (
    .a0(G),
    .a1(H),
    .s(sgh),
    .x(gh));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:102:3  */
  cus_mux21 cus_mux21_scd (
    .a0(n11),
    .a1(n12),
    .s(c0),
    .x(scd));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:105:12  */
  assign n11 = S[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:106:12  */
  assign n12 = S[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:112:3  */
  cus_mux21 cus_mux21_sef (
    .a0(n14),
    .a1(n15),
    .s(c1),
    .x(sef));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:115:12  */
  assign n14 = S[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:116:12  */
  assign n15 = S[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:122:3  */
  cus_mux21 cus_mux21_sgh (
    .a0(seh),
    .a1(sef),
    .s(c0),
    .x(sgh));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:132:3  */
  cus_mux21 cus_mux21_seh (
    .a0(n18),
    .a1(n19),
    .s(c1),
    .x(seh));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:135:12  */
  assign n18 = S[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:136:12  */
  assign n19 = S[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:142:3  */
  cus_mux21 cus_mux21_ad (
    .a0(ab),
    .a1(cd),
    .s(n21),
    .x(ad));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:147:12  */
  assign n21 = S[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:151:3  */
  cus_mux21 cus_mux21_eh (
    .a0(ef),
    .a1(gh),
    .s(seh),
    .x(eh));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:161:3  */
  cus_mux21 cus_mux21_ah (
    .a0(ad),
    .a1(eh),
    .s(n24),
    .x(ah));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:166:12  */
  assign n24 = S[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:173:3  */
  cus_mux21 cus_mux21_m_ad (
    .a0(cd),
    .a1(ad),
    .s(c0),
    .x(\cus_mux21_m_ad.x ));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:182:3  */
  cus_mux21 cus_mux21_m_ah (
    .a0(eh_gh),
    .a1(ah),
    .s(c1),
    .x(\cus_mux21_m_ah.x ));
endmodule

