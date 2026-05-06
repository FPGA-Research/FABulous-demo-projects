module cus_mux41_buf
  (input  a0,
   input  a1,
   input  a2,
   input  a3,
   input  s0,
   input  s0n,
   input  s1,
   input  s1n,
   output x);
  wire [3:0] ain;
  wire b0;
  wire b1;
  wire break_comb_loop_inst0_n97;
  wire break_comb_loop_inst1_n100;
  wire break_comb_loop_inst2_n103;
  wire break_comb_loop_inst3_n106;
  wire n109;
  wire n110;
  wire n111;
  wire n112;
  wire n113;
  wire n114;
  wire n115;
  wire [3:0] n116;
  assign x = n115; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:446:10  */
  assign ain = n116; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:447:10  */
  assign b0 = n110; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:448:10  */
  assign b1 = n113; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:459:3  */
  break_comb_loop break_comb_loop_inst0 (
    .a(a0),
    .x(break_comb_loop_inst0_n97));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:464:3  */
  break_comb_loop break_comb_loop_inst1 (
    .a(a1),
    .x(break_comb_loop_inst1_n100));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:469:3  */
  break_comb_loop break_comb_loop_inst2 (
    .a(a2),
    .x(break_comb_loop_inst2_n103));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:474:3  */
  break_comb_loop break_comb_loop_inst3 (
    .a(a3),
    .x(break_comb_loop_inst3_n106));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:480:12  */
  assign n109 = ain[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:480:16  */
  assign n110 = s0 ? n109 : n111;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:480:38  */
  assign n111 = ain[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:481:12  */
  assign n112 = ain[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:481:16  */
  assign n113 = s0 ? n112 : n114;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:481:38  */
  assign n114 = ain[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:482:11  */
  assign n115 = s1 ? b1 : b0;
  assign n116 = {break_comb_loop_inst3_n106, break_comb_loop_inst2_n103, break_comb_loop_inst1_n100, break_comb_loop_inst0_n97};
endmodule

module break_comb_loop
  (input  a,
   output x);
  assign x = a; //(module output)
endmodule

module cus_mux161_buf
  (input  a0,
   input  a1,
   input  a10,
   input  a11,
   input  a12,
   input  a13,
   input  a14,
   input  a15,
   input  a2,
   input  a3,
   input  a4,
   input  a5,
   input  a6,
   input  a7,
   input  a8,
   input  a9,
   input  s0,
   input  s0n,
   input  s1,
   input  s1n,
   input  s2,
   input  s2n,
   input  s3,
   input  s3n,
   output x);
  wire cus_mux41_buf_out0;
  wire cus_mux41_buf_out1;
  wire cus_mux41_buf_out2;
  wire cus_mux41_buf_out3;
  wire x_readable;
  wire cus_mux41_buf_inst0_n80;
  wire cus_mux41_buf_inst1_n83;
  wire cus_mux41_buf_inst2_n86;
  wire cus_mux41_buf_inst3_n89;
  wire cus_mux41_buf_inst4_n92;
  assign x = x_readable; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:340:10  */
  assign cus_mux41_buf_out0 = cus_mux41_buf_inst0_n80; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:341:10  */
  assign cus_mux41_buf_out1 = cus_mux41_buf_inst1_n83; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:342:10  */
  assign cus_mux41_buf_out2 = cus_mux41_buf_inst2_n86; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:343:10  */
  assign cus_mux41_buf_out3 = cus_mux41_buf_inst3_n89; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:358:10  */
  assign x_readable = cus_mux41_buf_inst4_n92; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:360:3  */
  cus_mux41_buf cus_mux41_buf_inst0 (
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_buf_inst0_n80));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:373:3  */
  cus_mux41_buf cus_mux41_buf_inst1 (
    .a0(a4),
    .a1(a5),
    .a2(a6),
    .a3(a7),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_buf_inst1_n83));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:386:3  */
  cus_mux41_buf cus_mux41_buf_inst2 (
    .a0(a8),
    .a1(a9),
    .a2(a10),
    .a3(a11),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_buf_inst2_n86));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:399:3  */
  cus_mux41_buf cus_mux41_buf_inst3 (
    .a0(a12),
    .a1(a13),
    .a2(a14),
    .a3(a15),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_buf_inst3_n89));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:413:3  */
  cus_mux41_buf cus_mux41_buf_inst4 (
    .a0(cus_mux41_buf_out0),
    .a1(cus_mux41_buf_out1),
    .a2(cus_mux41_buf_out2),
    .a3(cus_mux41_buf_out3),
    .s0(s2),
    .s0n(s2n),
    .s1(s3),
    .s1n(s3n),
    .x(cus_mux41_buf_inst4_n92));
endmodule

module cus_mux21
  (input  a0,
   input  a1,
   input  s,
   output x);
  wire sel;
  wire [1:0] ain;
  wire break_comb_loop_inst0_n63;
  wire break_comb_loop_inst1_n66;
  wire n69;
  wire n71;
  wire n72;
  wire n74;
  wire [1:0] n76;
  reg n77;
  wire [1:0] n78;
  assign x = n77; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:588:10  */
  assign sel = s; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:597:10  */
  assign ain = n78; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:602:3  */
  break_comb_loop break_comb_loop_inst0 (
    .a(a0),
    .x(break_comb_loop_inst0_n63));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:607:3  */
  break_comb_loop break_comb_loop_inst1 (
    .a(a1),
    .x(break_comb_loop_inst1_n66));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:614:13  */
  assign n69 = ain[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:614:18  */
  assign n71 = sel == 1'b0;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:615:13  */
  assign n72 = ain[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:615:18  */
  assign n74 = sel == 1'b1;
  assign n76 = {n74, n71};
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:613:3  */
  always @*
    case (n76)
      2'b10: n77 = n72;
      2'b01: n77 = n69;
      default: n77 = 1'bX;
    endcase
  assign n78 = {break_comb_loop_inst1_n66, break_comb_loop_inst0_n63};
endmodule

(* SET_NORESET=32'b00000000000000000000000000010010, IOmux=32'b00000000000000000000000000010001, FAB_ATTR_FF=32'b00000000000000000000000000010000, INIT_15=32'b00000000000000000000000000001111, INIT_14=32'b00000000000000000000000000001110, INIT_13=32'b00000000000000000000000000001101, INIT_12=32'b00000000000000000000000000001100, INIT_11=32'b00000000000000000000000000001011, INIT_10=32'b00000000000000000000000000001010, INIT_9=32'b00000000000000000000000000001001, INIT_8=32'b00000000000000000000000000001000, INIT_7=32'b00000000000000000000000000000111, INIT_6=32'b00000000000000000000000000000110, INIT_5=32'b00000000000000000000000000000101, INIT_4=32'b00000000000000000000000000000100, INIT_3=32'b00000000000000000000000000000011, INIT_2=32'b00000000000000000000000000000010, INIT_1=32'b00000000000000000000000000000001, INIT=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module LUT4c_frame_config_dffesr
  (input  [3:0] I,
   output O,
   input  Ci,
   output Co,
   input  SR,
   input  EN,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK,
   (* GLOBAL="TRUE" *) input  [18:0] ConfigBits);
  wire [15:0] lut_values;
  wire [3:0] lut_index;
  wire lut_index_0n;
  wire lut_index_1n;
  wire lut_index_2n;
  wire lut_index_3n;
  wire lut_out;
  wire lut_flop;
  wire i0mux;
  wire c_out_mux;
  wire c_i0mux;
  wire c_reset_value;
  wire [15:0] n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n8;
  wire n9;
  wire [1:0] n10;
  wire n11;
  wire [2:0] n12;
  wire [3:0] n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire \cus_mux21_o.x ;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n56;
  wire n60;
  reg n61;
  assign O = \cus_mux21_o.x ; //(module output)
  assign Co = n52; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:79:10  */
  assign lut_values = n2; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:81:10  */
  assign lut_index = n13; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:82:10  */
  assign lut_index_0n = n15; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:83:10  */
  assign lut_index_1n = n17; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:84:10  */
  assign lut_index_2n = n19; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:85:10  */
  assign lut_index_3n = n21; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:88:10  */
  assign lut_flop = n61; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:90:10  */
  assign c_out_mux = n3; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:90:21  */
  assign c_i0mux = n4; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:90:30  */
  assign c_reset_value = n5; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:94:30  */
  assign n2 = ConfigBits[15:0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:95:30  */
  assign n3 = ConfigBits[16]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:96:30  */
  assign n4 = ConfigBits[17]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:97:30  */
  assign n5 = ConfigBits[18]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:104:3  */
  cus_mux21 inst_cus_mux21_i0mux (
    .a0(n6),
    .a1(Ci),
    .s(c_i0mux),
    .x(i0mux));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:107:12  */
  assign n6 = I[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:112:17  */
  assign n8 = I[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:112:24  */
  assign n9 = I[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:112:21  */
  assign n10 = {n8, n9};
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:112:31  */
  assign n11 = I[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:112:28  */
  assign n12 = {n10, n11};
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:112:35  */
  assign n13 = {n12, i0mux};
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:117:32  */
  assign n14 = lut_index[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:117:19  */
  assign n15 = ~n14;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:118:32  */
  assign n16 = lut_index[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:118:19  */
  assign n17 = ~n16;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:119:32  */
  assign n18 = lut_index[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:119:19  */
  assign n19 = ~n18;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:120:32  */
  assign n20 = lut_index[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:120:19  */
  assign n21 = ~n20;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:122:3  */
  cus_mux161_buf inst_cus_mux161_buf (
    .a0(n22),
    .a1(n23),
    .a10(n24),
    .a11(n25),
    .a12(n26),
    .a13(n27),
    .a14(n28),
    .a15(n29),
    .a2(n30),
    .a3(n31),
    .a4(n32),
    .a5(n33),
    .a6(n34),
    .a7(n35),
    .a8(n36),
    .a9(n37),
    .s0(n38),
    .s0n(lut_index_0n),
    .s1(n39),
    .s1n(lut_index_1n),
    .s2(n40),
    .s2n(lut_index_2n),
    .s3(n41),
    .s3n(lut_index_3n),
    .x(lut_out));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:125:22  */
  assign n22 = lut_values[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:126:22  */
  assign n23 = lut_values[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:135:22  */
  assign n24 = lut_values[10]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:136:22  */
  assign n25 = lut_values[11]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:137:22  */
  assign n26 = lut_values[12]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:138:22  */
  assign n27 = lut_values[13]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:139:22  */
  assign n28 = lut_values[14]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:140:22  */
  assign n29 = lut_values[15]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:127:22  */
  assign n30 = lut_values[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:128:22  */
  assign n31 = lut_values[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:129:22  */
  assign n32 = lut_values[4]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:130:22  */
  assign n33 = lut_values[5]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:131:22  */
  assign n34 = lut_values[6]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:132:22  */
  assign n35 = lut_values[7]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:133:22  */
  assign n36 = lut_values[8]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:134:22  */
  assign n37 = lut_values[9]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:141:21  */
  assign n38 = lut_index[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:143:21  */
  assign n39 = lut_index[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:145:21  */
  assign n40 = lut_index[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:147:21  */
  assign n41 = lut_index[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:151:3  */
  cus_mux21 cus_mux21_o (
    .a0(lut_out),
    .a1(lut_flop),
    .s(c_out_mux),
    .x(\cus_mux21_o.x ));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:18  */
  assign n44 = I[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:13  */
  assign n45 = Ci & n44;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:35  */
  assign n46 = I[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:30  */
  assign n47 = Ci & n46;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:23  */
  assign n48 = n45 | n47;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:45  */
  assign n49 = I[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:54  */
  assign n50 = I[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:49  */
  assign n51 = n49 & n50;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:161:40  */
  assign n52 = n48 | n51;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:167:9  */
  assign n56 = SR ? c_reset_value : lut_out;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:165:5  */
  assign n60 = EN ? n56 : lut_flop;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:165:5  */
  always @(posedge UserCLK)
    n61 <= n60;
endmodule

