(* ACCout=32'b00000000000000000000000000000101, signExtension=32'b00000000000000000000000000000100, ACC=32'b00000000000000000000000000000011, C_reg=32'b00000000000000000000000000000010, B_reg=32'b00000000000000000000000000000001, A_reg=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module MULADD
  (input  [7:0] A,
   input  [7:0] B,
   input  [19:0] C,
   output [19:0] Q,
   input  clr,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK,
   (* GLOBAL="TRUE" *) input  [5:0] ConfigBits);
  wire [7:0] a_reg_data;
  wire [7:0] b_reg_data;
  wire [19:0] c_reg_data;
  wire [7:0] opa;
  wire [7:0] opb;
  wire [19:0] opc;
  wire [19:0] acc_data;
  wire [19:0] sum;
  wire [19:0] sum_in;
  wire [8:0] opa_extended;
  wire [8:0] opb_extended;
  wire [17:0] product_signed;
  wire [19:0] product_extended;
  wire n1;
  wire n2;
  wire [7:0] n3;
  wire n4;
  wire n5;
  wire [7:0] n6;
  wire n7;
  wire n8;
  wire [19:0] n9;
  wire n10;
  wire n11;
  wire [19:0] n12;
  wire n13;
  wire [8:0] n14;
  wire n15;
  wire [8:0] n16;
  wire [8:0] n18;
  wire n19;
  wire [8:0] n20;
  wire n21;
  wire [8:0] n22;
  wire [8:0] n24;
  wire [17:0] n25;
  wire [17:0] n26;
  wire [17:0] n27;
  wire n28;
  wire n29;
  wire [1:0] n30;
  wire [19:0] n31;
  wire n32;
  wire [19:0] n33;
  wire [19:0] n35;
  wire [19:0] n36;
  wire n37;
  wire n38;
  wire [19:0] n39;
  wire [19:0] n44;
  reg [7:0] n50;
  reg [7:0] n51;
  reg [19:0] n52;
  reg [19:0] n53;
  assign Q = n39; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:51:10 */
  assign a_reg_data = n50; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:52:10 */
  assign b_reg_data = n51; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:53:10 */
  assign c_reg_data = n52; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:55:10 */
  assign opa = n3; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:56:10 */
  assign opb = n6; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:57:10 */
  assign opc = n9; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:59:10 */
  assign acc_data = n53; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:60:10 */
  assign sum = n36; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:61:10 */
  assign sum_in = n12; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:63:10 */
  assign opa_extended = n16; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:64:10 */
  assign opb_extended = n22; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:65:10 */
  assign product_signed = n27; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:66:10 */
  assign product_extended = n33; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:70:28 */
  assign n1 = ConfigBits[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:70:32 */
  assign n2 = ~n1;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:70:12 */
  assign n3 = n2 ? A : a_reg_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:72:28 */
  assign n4 = ConfigBits[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:72:32 */
  assign n5 = ~n4;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:72:12 */
  assign n6 = n5 ? B : b_reg_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:74:28 */
  assign n7 = ConfigBits[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:74:32 */
  assign n8 = ~n7;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:74:12 */
  assign n9 = n8 ? C : c_reg_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:77:33 */
  assign n10 = ConfigBits[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:77:37 */
  assign n11 = ~n10;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:77:17 */
  assign n12 = n11 ? opc : acc_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:80:29 */
  assign n13 = opa[7]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:80:33 */
  assign n14 = {n13, opa};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:80:56 */
  assign n15 = ConfigBits[4]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:80:40 */
  assign n16 = n15 ? n14 : n18;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:81:30 */
  assign n18 = {1'b0, opa};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:82:29 */
  assign n19 = opb[7]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:82:33 */
  assign n20 = {n19, opb};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:82:56 */
  assign n21 = ConfigBits[4]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:82:40 */
  assign n22 = n21 ? n20 : n24;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:83:30 */
  assign n24 = {1'b0, opb};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:85:34 */
  assign n25 = {{9{opa_extended[8]}}, opa_extended}; // sext
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:85:34 */
  assign n26 = {{9{opb_extended[8]}}, opb_extended}; // sext
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:85:34 */
  assign n27 = $signed(n25) * $signed(n26); // smul
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:87:54 */
  assign n28 = product_signed[17]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:87:75 */
  assign n29 = product_signed[17]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:87:59 */
  assign n30 = {n28, n29};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:87:80 */
  assign n31 = {n30, product_signed};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:87:114 */
  assign n32 = ConfigBits[4]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:87:98 */
  assign n33 = n32 ? n31 : n35;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:88:28 */
  assign n35 = {2'b00, product_signed};
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:90:52 */
  assign n36 = product_extended + sum_in;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:92:28 */
  assign n37 = ConfigBits[5]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:92:32 */
  assign n38 = ~n37;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:92:12 */
  assign n39 = n38 ? sum : acc_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:102:7 */
  assign n44 = clr ? 20'b00000000000000000000 : sum;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:98:5 */
  always @(posedge UserCLK)
    n50 <= A;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:98:5 */
  always @(posedge UserCLK)
    n51 <= B;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:98:5 */
  always @(posedge UserCLK)
    n52 <= C;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/DSP/DSP_bot/MULADD.vhdl:98:5 */
  always @(posedge UserCLK)
    n53 <= n44;
endmodule

