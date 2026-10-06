module cus_mux21_Bfrom_verilog
  (input  a0,
   input  a1,
   input  s,
   output x);
  wire n33;
  wire n34;
  wire n35;
  assign x = n34; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:18 */
  assign n33 = ~s;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:11 */
  assign n34 = n33 ? a0 : n35;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Fabric/models_pack.vhdl:303:24 */
  assign n35 = s ? a1 : 1'bX;
endmodule

(* I3_reg=32'b00000000000000000000000000000011, I2_reg=32'b00000000000000000000000000000010, I1_reg=32'b00000000000000000000000000000001, I0_reg=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module InPass4_frame_config_mux
  ((* EXTERNAL="TRUE" *) input  [3:0] I,
   output [3:0] O,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK,
   (* GLOBAL="TRUE" *) input  [3:0] ConfigBits);
  wire [3:0] q;
  wire n6;
  wire n7;
  wire n8;
  wire cus_mux21_inst0_n9;
  wire n12;
  wire n13;
  wire n14;
  wire cus_mux21_inst1_n15;
  wire n18;
  wire n19;
  wire n20;
  wire cus_mux21_inst2_n21;
  wire n24;
  wire n25;
  wire n26;
  wire cus_mux21_inst3_n27;
  wire [3:0] n30;
  reg [3:0] n31;
  assign O = n30; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:61:10 */
  assign q = n31; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:85:14 */
  assign n6 = I[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:86:14 */
  assign n7 = q[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:87:23 */
  assign n8 = ConfigBits[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:83:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst0 (
    .a0(n6),
    .a1(n7),
    .s(n8),
    .x(cus_mux21_inst0_n9));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:93:14 */
  assign n12 = I[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:94:14 */
  assign n13 = q[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:95:23 */
  assign n14 = ConfigBits[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:91:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst1 (
    .a0(n12),
    .a1(n13),
    .s(n14),
    .x(cus_mux21_inst1_n15));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:101:14 */
  assign n18 = I[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:102:14 */
  assign n19 = q[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:103:23 */
  assign n20 = ConfigBits[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:99:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst2 (
    .a0(n18),
    .a1(n19),
    .s(n20),
    .x(cus_mux21_inst2_n21));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:109:14 */
  assign n24 = I[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:110:14 */
  assign n25 = q[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:111:23 */
  assign n26 = ConfigBits[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:107:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst3 (
    .a0(n24),
    .a1(n25),
    .s(n26),
    .x(cus_mux21_inst3_n27));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:31:5 */
  assign n30 = {cus_mux21_inst3_n27, cus_mux21_inst2_n21, cus_mux21_inst1_n15, cus_mux21_inst0_n9};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/InPass4_frame_config_mux.vhdl:77:5 */
  always @(posedge UserCLK)
    n31 <= I;
endmodule

