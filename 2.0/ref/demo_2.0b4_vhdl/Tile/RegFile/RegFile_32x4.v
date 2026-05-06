(* BD_reg=32'b00000000000000000000000000000001, AD_reg=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module RegFile_32x4
  (input  [3:0] D,
   input  [4:0] W_ADR,
   input  W_en,
   output [3:0] AD,
   input  [4:0] A_ADR,
   output [3:0] BD,
   input  [4:0] B_ADR,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK,
   (* GLOBAL="TRUE" *) input  [1:0] ConfigBits);
  wire [3:0] ad_reg;
  wire [3:0] bd_reg;
  wire [3:0] ad_signal;
  wire [3:0] bd_signal;
  wire n23;
  wire n24;
  wire [3:0] n25;
  wire n26;
  wire n27;
  wire [3:0] n28;
  reg [3:0] n31;
  reg [3:0] n32;
  wire [3:0] n34; // mem_rd
  wire [3:0] n35; // mem_rd
  assign AD = n25; //(module output)
  assign BD = n28; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:49:10  */
  assign ad_reg = n31; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:50:10  */
  assign bd_reg = n32; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:51:10  */
  assign ad_signal = n35; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:52:10  */
  assign bd_signal = n34; // (signal)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:74:35  */
  assign n23 = ConfigBits[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:74:39  */
  assign n24 = ~n23;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:74:19  */
  assign n25 = n24 ? ad_signal : ad_reg;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:76:35  */
  assign n26 = ConfigBits[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:76:39  */
  assign n27 = ~n26;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:76:19  */
  assign n28 = n27 ? bd_signal : bd_reg;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:68:5  */
  always @(posedge UserCLK)
    n31 <= ad_signal;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:68:5  */
  always @(posedge UserCLK)
    n32 <= bd_signal;
  reg [3:0] mem[31:0] ; // memory
  initial begin
    mem[31] = 4'b0000;
    mem[30] = 4'b0000;
    mem[29] = 4'b0000;
    mem[28] = 4'b0000;
    mem[27] = 4'b0000;
    mem[26] = 4'b0000;
    mem[25] = 4'b0000;
    mem[24] = 4'b0000;
    mem[23] = 4'b0000;
    mem[22] = 4'b0000;
    mem[21] = 4'b0000;
    mem[20] = 4'b0000;
    mem[19] = 4'b0000;
    mem[18] = 4'b0000;
    mem[17] = 4'b0000;
    mem[16] = 4'b0000;
    mem[15] = 4'b0000;
    mem[14] = 4'b0000;
    mem[13] = 4'b0000;
    mem[12] = 4'b0000;
    mem[11] = 4'b0000;
    mem[10] = 4'b0000;
    mem[9] = 4'b0000;
    mem[8] = 4'b0000;
    mem[7] = 4'b0000;
    mem[6] = 4'b0000;
    mem[5] = 4'b0000;
    mem[4] = 4'b0000;
    mem[3] = 4'b0000;
    mem[2] = 4'b0000;
    mem[1] = 4'b0000;
    mem[0] = 4'b0000;
    end
  assign n34 = mem[B_ADR];
  assign n35 = mem[A_ADR];
  always @(posedge UserCLK)
    if (W_en)
      mem[W_ADR] <= D;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:64:20  */
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:63:20  */
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RegFile/RegFile_32x4.vhdl:58:13  */
endmodule

