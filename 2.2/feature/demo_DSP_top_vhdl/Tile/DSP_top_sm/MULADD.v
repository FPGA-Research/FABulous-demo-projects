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
  wire [15:0] product;
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
  wire [15:0] n13;
  wire [15:0] n14;
  wire [15:0] n15;
  wire [19:0] n17;
  wire n18;
  wire n19;
  wire [19:0] n20;
  wire n21;
  wire n22;
  wire [1:0] n23;
  wire n24;
  wire [2:0] n25;
  wire n26;
  wire [3:0] n27;
  wire [19:0] n28;
  wire [19:0] n29;
  wire n30;
  wire n31;
  wire [19:0] n32;
  wire [19:0] n37;
  reg [7:0] n43;
  reg [7:0] n44;
  reg [19:0] n45;
  reg [19:0] n46;
  assign Q = n32; //(module output)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:51:10  */
  assign a_reg_data = n43; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:52:10  */
  assign b_reg_data = n44; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:53:10  */
  assign c_reg_data = n45; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:55:10  */
  assign opa = n3; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:56:10  */
  assign opb = n6; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:57:10  */
  assign opc = n9; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:59:10  */
  assign acc_data = n46; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:60:10  */
  assign sum = n29; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:61:10  */
  assign sum_in = n12; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:63:10  */
  assign product = n15; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:64:10  */
  assign product_extended = n20; // (signal)
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:68:28  */
  assign n1 = ConfigBits[0]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:68:32  */
  assign n2 = ~n1;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:68:12  */
  assign n3 = n2 ? A : a_reg_data;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:70:28  */
  assign n4 = ConfigBits[1]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:70:32  */
  assign n5 = ~n4;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:70:12  */
  assign n6 = n5 ? B : b_reg_data;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:72:28  */
  assign n7 = ConfigBits[2]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:72:32  */
  assign n8 = ~n7;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:72:12  */
  assign n9 = n8 ? C : c_reg_data;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:75:33  */
  assign n10 = ConfigBits[3]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:75:37  */
  assign n11 = ~n10;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:75:17  */
  assign n12 = n11 ? opc : acc_data;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:78:28  */
  assign n13 = {8'b0, opa};  //  uext
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:78:28  */
  assign n14 = {8'b0, opb};  //  uext
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:78:28  */
  assign n15 = n13 * n14; // umul
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:81:30  */
  assign n17 = {4'b0000, product};
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:81:56  */
  assign n18 = ConfigBits[4]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:81:60  */
  assign n19 = ~n18;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:81:40  */
  assign n20 = n19 ? n17 : n28;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:82:31  */
  assign n21 = product[15]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:82:55  */
  assign n22 = product[15]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:82:46  */
  assign n23 = {n21, n22};
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:83:32  */
  assign n24 = product[15]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:82:70  */
  assign n25 = {n23, n24};
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:83:56  */
  assign n26 = product[15]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:83:47  */
  assign n27 = {n25, n26};
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:83:71  */
  assign n28 = {n27, product};
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:85:27  */
  assign n29 = product_extended + sum_in;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:87:46  */
  assign n30 = ConfigBits[5]; // extract
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:87:50  */
  assign n31 = ~n30;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:87:30  */
  assign n32 = n31 ? sum : acc_data;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:97:7  */
  assign n37 = clr ? 20'b00000000000000000000 : sum;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:93:5  */
  always @(posedge UserCLK)
    n43 <= A;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:93:5  */
  always @(posedge UserCLK)
    n44 <= B;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:93:5  */
  always @(posedge UserCLK)
    n45 <= C;
  /* /home/jart/work/uni/FABulous-demo-projects/2.2/feature/demo_DSP_top_verilog/Tile/DSP_top_sm/MULADD.vhdl:93:5  */
  always @(posedge UserCLK)
    n46 <= n37;
endmodule

