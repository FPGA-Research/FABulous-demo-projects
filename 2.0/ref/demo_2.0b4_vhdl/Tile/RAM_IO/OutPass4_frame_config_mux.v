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
  wire break_comb_loop_inst0_n25;
  wire break_comb_loop_inst1_n28;
  wire n31;
  wire n33;
  wire n34;
  wire n36;
  wire [1:0] n38;
  reg n39;
  wire [1:0] n40;
  assign x = n39; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:588:10  */
  assign sel = s; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:597:10  */
  assign ain = n40; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:602:3  */
  break_comb_loop break_comb_loop_inst0 (
    .a(a0),
    .x(break_comb_loop_inst0_n25));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:607:3  */
  break_comb_loop break_comb_loop_inst1 (
    .a(a1),
    .x(break_comb_loop_inst1_n28));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:614:13  */
  assign n31 = ain[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:614:18  */
  assign n33 = sel == 1'b0;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:615:13  */
  assign n34 = ain[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:615:18  */
  assign n36 = sel == 1'b1;
  assign n38 = {n36, n33};
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Fabric/models_pack.vhdl:613:3  */
  always @*
    case (n38)
      2'b10: n39 = n34;
      2'b01: n39 = n31;
      default: n39 = 1'bX;
    endcase
  assign n40 = {break_comb_loop_inst1_n28, break_comb_loop_inst0_n25};
endmodule

(* O3_reg=32'b00000000000000000000000000000011, O2_reg=32'b00000000000000000000000000000010, O1_reg=32'b00000000000000000000000000000001, O0_reg=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module OutPass4_frame_config_mux
  (input  [3:0] I,
   (* EXTERNAL="TRUE" *) output [3:0] O,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK,
   (* GLOBAL="TRUE" *) input  [3:0] ConfigBits);
  wire [3:0] q;
  wire \cus_mux21_inst.x ;
  wire n6;
  wire n7;
  wire n8;
  wire \cus_mux21_inst1.x ;
  wire n10;
  wire n11;
  wire n12;
  wire \cus_mux21_2_inst2.x ;
  wire n14;
  wire n15;
  wire n16;
  wire \cus_mux21_inst3.x ;
  wire n18;
  wire n19;
  wire n20;
  wire [3:0] n22;
  reg [3:0] n23;
  assign O = n22; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:52:10  */
  assign q = n23; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:65:3  */
  cus_mux21 cus_mux21_inst (
    .a0(n6),
    .a1(n7),
    .s(n8),
    .x(\cus_mux21_inst.x ));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:68:12  */
  assign n6 = I[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:69:12  */
  assign n7 = q[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:70:21  */
  assign n8 = ConfigBits[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:74:3  */
  cus_mux21 cus_mux21_inst1 (
    .a0(n10),
    .a1(n11),
    .s(n12),
    .x(\cus_mux21_inst1.x ));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:77:12  */
  assign n10 = I[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:78:12  */
  assign n11 = q[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:79:21  */
  assign n12 = ConfigBits[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:82:3  */
  cus_mux21 cus_mux21_2_inst2 (
    .a0(n14),
    .a1(n15),
    .s(n16),
    .x(\cus_mux21_2_inst2.x ));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:85:12  */
  assign n14 = I[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:86:12  */
  assign n15 = q[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:87:21  */
  assign n16 = ConfigBits[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:90:3  */
  cus_mux21 cus_mux21_inst3 (
    .a0(n18),
    .a1(n19),
    .s(n20),
    .x(\cus_mux21_inst3.x ));
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:93:12  */
  assign n18 = I[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:94:12  */
  assign n19 = q[3]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:95:21  */
  assign n20 = ConfigBits[3]; // extract
  assign n22 = {\cus_mux21_inst3.x , \cus_mux21_2_inst2.x , \cus_mux21_inst1.x , \cus_mux21_inst.x };
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/OutPass4_frame_config_mux.vhdl:58:5  */
  always @(posedge UserCLK)
    n23 <= I;
endmodule

