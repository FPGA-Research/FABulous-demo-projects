module cus_mux41_Bfrom_verilog
  (input  a0,
   input  a1,
   input  a2,
   input  a3,
   input  s0,
   input  s0n,
   input  s1,
   input  s1n,
   output x);
  wire b0;
  wire b1;
  wire n90;
  wire n91;
  wire n92;
  assign x = n92; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:178:10 */
  assign b0 = n90; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:179:10 */
  assign b1 = n91; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:183:12 */
  assign n90 = s0 ? a1 : a0;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:185:12 */
  assign n91 = s0 ? a3 : a2;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:187:12 */
  assign n92 = s1 ? b1 : b0;
endmodule

module cus_mux161_Bfrom_verilog
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
  wire cus_mux41_out0;
  wire cus_mux41_out1;
  wire cus_mux41_out2;
  wire cus_mux41_out3;
  wire x_readable;
  wire cus_mux41_inst0_n74;
  wire cus_mux41_inst1_n77;
  wire cus_mux41_inst2_n80;
  wire cus_mux41_inst3_n83;
  wire cus_mux41_inst4_n86;
  assign x = x_readable; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:66:10 */
  assign cus_mux41_out0 = cus_mux41_inst0_n74; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:67:10 */
  assign cus_mux41_out1 = cus_mux41_inst1_n77; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:68:10 */
  assign cus_mux41_out2 = cus_mux41_inst2_n80; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:69:10 */
  assign cus_mux41_out3 = cus_mux41_inst3_n83; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:85:10 */
  assign x_readable = cus_mux41_inst4_n86; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:89:3 */
  cus_mux41_Bfrom_verilog cus_mux41_inst0 (
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_inst0_n74));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:102:3 */
  cus_mux41_Bfrom_verilog cus_mux41_inst1 (
    .a0(a4),
    .a1(a5),
    .a2(a6),
    .a3(a7),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_inst1_n77));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:115:3 */
  cus_mux41_Bfrom_verilog cus_mux41_inst2 (
    .a0(a8),
    .a1(a9),
    .a2(a10),
    .a3(a11),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_inst2_n80));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:128:3 */
  cus_mux41_Bfrom_verilog cus_mux41_inst3 (
    .a0(a12),
    .a1(a13),
    .a2(a14),
    .a3(a15),
    .s0(s0),
    .s0n(s0n),
    .s1(s1),
    .s1n(s1n),
    .x(cus_mux41_inst3_n83));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:143:3 */
  cus_mux41_Bfrom_verilog cus_mux41_inst4 (
    .a0(cus_mux41_out0),
    .a1(cus_mux41_out1),
    .a2(cus_mux41_out2),
    .a3(cus_mux41_out3),
    .s0(s2),
    .s0n(s2n),
    .s1(s3),
    .s1n(s3n),
    .x(cus_mux41_inst4_n86));
endmodule

module cus_mux21_Bfrom_verilog
  (input  a0,
   input  a1,
   input  s,
   output x);
  wire n69;
  wire n70;
  wire n71;
  assign x = n70; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:18 */
  assign n69 = ~s;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:11 */
  assign n70 = n69 ? a0 : n71;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:24 */
  assign n71 = s ? a1 : 1'bX;
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
  wire inst_cus_mux21_i0mux_n7;
  wire n10;
  wire n11;
  wire [1:0] n12;
  wire n13;
  wire [2:0] n14;
  wire [3:0] n15;
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
  wire n42;
  wire n43;
  wire inst_cus_mux161_n44;
  wire cus_mux21_o_n47;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n62;
  wire n66;
  reg n67;
  assign O = cus_mux21_o_n47; //(module output)
  assign Co = n58; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:89:12 */
  assign lut_values = n2; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:91:10 */
  assign lut_index = n15; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:92:10 */
  assign lut_index_0n = n17; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:93:10 */
  assign lut_index_1n = n19; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:94:10 */
  assign lut_index_2n = n21; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:95:10 */
  assign lut_index_3n = n23; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:97:10 */
  assign lut_out = inst_cus_mux161_n44; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:98:10 */
  assign lut_flop = n67; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:99:10 */
  assign i0mux = inst_cus_mux21_i0mux_n7; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:100:10 */
  assign c_out_mux = n3; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:101:10 */
  assign c_i0mux = n4; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:102:10 */
  assign c_reset_value = n5; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:145:30 */
  assign n2 = ConfigBits[15:0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:146:30 */
  assign n3 = ConfigBits[16]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:147:30 */
  assign n4 = ConfigBits[17]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:148:30 */
  assign n5 = ConfigBits[18]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:157:14 */
  assign n6 = I[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:155:3 */
  cus_mux21_Bfrom_verilog inst_cus_mux21_i0mux (
    .a0(n6),
    .a1(Ci),
    .s(c_i0mux),
    .x(inst_cus_mux21_i0mux_n7));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:163:17 */
  assign n10 = I[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:163:24 */
  assign n11 = I[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:163:21 */
  assign n12 = {n10, n11};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:163:31 */
  assign n13 = I[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:163:28 */
  assign n14 = {n12, n13};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:163:35 */
  assign n15 = {n14, i0mux};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:168:32 */
  assign n16 = lut_index[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:168:19 */
  assign n17 = ~n16;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:169:32 */
  assign n18 = lut_index[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:169:19 */
  assign n19 = ~n18;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:170:32 */
  assign n20 = lut_index[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:170:19 */
  assign n21 = ~n20;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:171:32 */
  assign n22 = lut_index[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:171:19 */
  assign n23 = ~n22;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:175:24 */
  assign n24 = lut_values[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:176:24 */
  assign n25 = lut_values[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:185:24 */
  assign n26 = lut_values[10]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:186:24 */
  assign n27 = lut_values[11]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:187:24 */
  assign n28 = lut_values[12]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:188:24 */
  assign n29 = lut_values[13]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:189:24 */
  assign n30 = lut_values[14]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:190:24 */
  assign n31 = lut_values[15]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:177:24 */
  assign n32 = lut_values[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:178:24 */
  assign n33 = lut_values[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:179:24 */
  assign n34 = lut_values[4]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:180:24 */
  assign n35 = lut_values[5]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:181:24 */
  assign n36 = lut_values[6]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:182:24 */
  assign n37 = lut_values[7]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:183:24 */
  assign n38 = lut_values[8]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:184:24 */
  assign n39 = lut_values[9]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:191:23 */
  assign n40 = lut_index[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:193:23 */
  assign n41 = lut_index[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:195:23 */
  assign n42 = lut_index[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:197:23 */
  assign n43 = lut_index[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:173:3 */
  cus_mux161_Bfrom_verilog inst_cus_mux161 (
    .a0(n24),
    .a1(n25),
    .a10(n26),
    .a11(n27),
    .a12(n28),
    .a13(n29),
    .a14(n30),
    .a15(n31),
    .a2(n32),
    .a3(n33),
    .a4(n34),
    .a5(n35),
    .a6(n36),
    .a7(n37),
    .a8(n38),
    .a9(n39),
    .s0(n40),
    .s0n(lut_index_0n),
    .s1(n41),
    .s1n(lut_index_1n),
    .s2(n42),
    .s2n(lut_index_2n),
    .s3(n43),
    .s3n(lut_index_3n),
    .x(inst_cus_mux161_n44));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:202:3 */
  cus_mux21_Bfrom_verilog cus_mux21_o (
    .a0(lut_out),
    .a1(lut_flop),
    .s(c_out_mux),
    .x(cus_mux21_o_n47));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:18 */
  assign n50 = I[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:13 */
  assign n51 = Ci & n50;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:35 */
  assign n52 = I[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:30 */
  assign n53 = Ci & n52;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:23 */
  assign n54 = n51 | n53;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:45 */
  assign n55 = I[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:54 */
  assign n56 = I[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:49 */
  assign n57 = n55 & n56;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:211:40 */
  assign n58 = n54 | n57;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:218:9 */
  assign n62 = SR ? c_reset_value : lut_out;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:216:5 */
  assign n66 = EN ? n62 : lut_flop;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/LUT4AB/LUT4c_frame_config_dffesr.vhdl:216:5 */
  always @(posedge UserCLK)
    n67 <= n66;
endmodule

