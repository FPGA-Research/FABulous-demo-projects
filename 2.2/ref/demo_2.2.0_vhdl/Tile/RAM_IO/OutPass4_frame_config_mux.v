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

(* O3_reg=32'b00000000000000000000000000000011, O2_reg=32'b00000000000000000000000000000010, O1_reg=32'b00000000000000000000000000000001, O0_reg=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module OutPass4_frame_config_mux
  (input  [3:0] I,
   (* EXTERNAL="TRUE" *) output [3:0] O,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK,
   (* GLOBAL="TRUE" *) input  [3:0] ConfigBits);
  wire [3:0] q;
  wire n6;
  wire n7;
  wire n8;
  wire cus_mux21_inst_n9;
  wire n12;
  wire n13;
  wire n14;
  wire cus_mux21_inst1_n15;
  wire n18;
  wire n19;
  wire n20;
  wire cus_mux21_2_inst2_n21;
  wire n24;
  wire n25;
  wire n26;
  wire cus_mux21_inst3_n27;
  wire [3:0] n30;
  reg [3:0] n31;
  assign O = n30; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:59:10 */
  assign q = n31; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:83:14 */
  assign n6 = I[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:84:14 */
  assign n7 = q[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:85:23 */
  assign n8 = ConfigBits[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:81:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst (
    .a0(n6),
    .a1(n7),
    .s(n8),
    .x(cus_mux21_inst_n9));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:91:14 */
  assign n12 = I[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:92:14 */
  assign n13 = q[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:93:23 */
  assign n14 = ConfigBits[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:89:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst1 (
    .a0(n12),
    .a1(n13),
    .s(n14),
    .x(cus_mux21_inst1_n15));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:99:14 */
  assign n18 = I[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:100:14 */
  assign n19 = q[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:101:23 */
  assign n20 = ConfigBits[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:97:3 */
  cus_mux21_Bfrom_verilog cus_mux21_2_inst2 (
    .a0(n18),
    .a1(n19),
    .s(n20),
    .x(cus_mux21_2_inst2_n21));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:107:14 */
  assign n24 = I[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:108:14 */
  assign n25 = q[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:109:23 */
  assign n26 = ConfigBits[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:105:3 */
  cus_mux21_Bfrom_verilog cus_mux21_inst3 (
    .a0(n24),
    .a1(n25),
    .s(n26),
    .x(cus_mux21_inst3_n27));
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:31:5 */
  assign n30 = {cus_mux21_inst3_n27, cus_mux21_2_inst2_n21, cus_mux21_inst1_n15, cus_mux21_inst_n9};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:75:5 */
  always @(posedge UserCLK)
    n31 <= I;
endmodule

