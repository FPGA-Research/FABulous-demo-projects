module cus_mux21_Bfrom_verilog
  (input  a0,
   input  a1,
   input  s,
   output x);
  wire n56;
  wire n57;
  wire n58;
  assign x = n57; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:18 */
  assign n56 = ~s;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:11 */
  assign n57 = n56 ? a0 : n58;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:24 */
  assign n58 = s ? a1 : 1'bX;
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
  wire cb_c0;
  wire cb_c1;
  wire n4;
  wire n5;
  wire n6;
  wire cus_mux21_ab_n7;
  wire cus_mux21_cd_n10;
  wire cus_mux21_ef_n13;
  wire cus_mux21_gh_n16;
  wire n19;
  wire n20;
  wire cus_mux21_scd_n21;
  wire n24;
  wire n25;
  wire cus_mux21_sef_n26;
  wire cus_mux21_sgh_n29;
  wire n32;
  wire n33;
  wire cus_mux21_seh_n34;
  wire n37;
  wire cus_mux21_ad_n38;
  wire cus_mux21_eh_n41;
  wire n44;
  wire cus_mux21_ah_n45;
  wire cus_mux21_m_ad_n48;
  wire cus_mux21_m_ah_n51;
  assign M_AB = ab; //(module output)
  assign M_AD = cus_mux21_m_ad_n48; //(module output)
  assign M_AH = cus_mux21_m_ah_n51; //(module output)
  assign M_EF = ef; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:50:10 */
  assign ab = cus_mux21_ab_n7; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:51:10 */
  assign cd = cus_mux21_cd_n10; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:52:10 */
  assign ef = cus_mux21_ef_n13; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:53:10 */
  assign gh = cus_mux21_gh_n16; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:54:10 */
  assign scd = cus_mux21_scd_n21; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:55:10 */
  assign sef = cus_mux21_sef_n26; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:56:10 */
  assign sgh = cus_mux21_sgh_n29; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:57:10 */
  assign seh = cus_mux21_seh_n34; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:58:10 */
  assign ad = cus_mux21_ad_n38; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:59:10 */
  assign eh = cus_mux21_eh_n41; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:60:10 */
  assign ah = cus_mux21_ah_n45; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:61:10 */
  assign eh_gh = 1'bX; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:63:10 */
  assign cb_c0 = n4; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:63:17 */
  assign cb_c1 = n5; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:76:22 */
  assign n4 = ConfigBits[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:77:22 */
  assign n5 = ConfigBits[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:86:14 */
  assign n6 = S[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:82:3 */
  cus_mux21_Bfrom_verilog cus_mux21_ab (
    .a0(A),
    .a1(B),
    .s(n6),
    .x(cus_mux21_ab_n7));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:91:3 */
  cus_mux21_Bfrom_verilog cus_mux21_cd (
    .a0(C),
    .a1(D),
    .s(scd),
    .x(cus_mux21_cd_n10));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:100:3 */
  cus_mux21_Bfrom_verilog cus_mux21_ef (
    .a0(E),
    .a1(F),
    .s(sef),
    .x(cus_mux21_ef_n13));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:109:3 */
  cus_mux21_Bfrom_verilog cus_mux21_gh (
    .a0(G),
    .a1(H),
    .s(sgh),
    .x(cus_mux21_gh_n16));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:120:14 */
  assign n19 = S[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:121:14 */
  assign n20 = S[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:118:3 */
  cus_mux21_Bfrom_verilog cus_mux21_scd (
    .a0(n19),
    .a1(n20),
    .s(cb_c0),
    .x(cus_mux21_scd_n21));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:129:14 */
  assign n24 = S[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:130:14 */
  assign n25 = S[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:127:3 */
  cus_mux21_Bfrom_verilog cus_mux21_sef (
    .a0(n24),
    .a1(n25),
    .s(cb_c1),
    .x(cus_mux21_sef_n26));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:136:3 */
  cus_mux21_Bfrom_verilog cus_mux21_sgh (
    .a0(seh),
    .a1(sef),
    .s(cb_c0),
    .x(cus_mux21_sgh_n29));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:147:14 */
  assign n32 = S[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:148:14 */
  assign n33 = S[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:145:3 */
  cus_mux21_Bfrom_verilog cus_mux21_seh (
    .a0(n32),
    .a1(n33),
    .s(cb_c1),
    .x(cus_mux21_seh_n34));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:158:14 */
  assign n37 = S[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:154:3 */
  cus_mux21_Bfrom_verilog cus_mux21_ad (
    .a0(ab),
    .a1(cd),
    .s(n37),
    .x(cus_mux21_ad_n38));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:163:3 */
  cus_mux21_Bfrom_verilog cus_mux21_eh (
    .a0(ef),
    .a1(gh),
    .s(seh),
    .x(cus_mux21_eh_n41));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:176:14 */
  assign n44 = S[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:172:3 */
  cus_mux21_Bfrom_verilog cus_mux21_ah (
    .a0(ad),
    .a1(eh),
    .s(n44),
    .x(cus_mux21_ah_n45));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:183:3 */
  cus_mux21_Bfrom_verilog cus_mux21_m_ad (
    .a0(cd),
    .a1(ad),
    .s(cb_c0),
    .x(cus_mux21_m_ad_n48));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/MUX8LUT_frame_config_mux.vhdl:192:3 */
  cus_mux21_Bfrom_verilog cus_mux21_m_ah (
    .a0(eh_gh),
    .a1(ah),
    .s(cb_c1),
    .x(cus_mux21_m_ah_n51));
endmodule

