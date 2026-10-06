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
  wire [3:0] ad_reg_data;
  wire [3:0] bd_reg_data;
  wire [3:0] ad_signal;
  wire [3:0] bd_signal;
  wire n22;
  wire n23;
  wire [3:0] n24;
  wire n25;
  wire n26;
  wire [3:0] n27;
  reg [3:0] n30;
  reg [3:0] n31;
  wire [3:0] n32; // mem_rd
  wire [3:0] n33; // mem_rd
  assign AD = n24; //(module output)
  assign BD = n27; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:54:10 */
  assign ad_reg_data = n30; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:55:10 */
  assign bd_reg_data = n31; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:56:10 */
  assign ad_signal = n33; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:57:10 */
  assign bd_signal = n32; // (signal)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:85:35 */
  assign n22 = ConfigBits[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:85:39 */
  assign n23 = ~n22;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:85:19 */
  assign n24 = n23 ? ad_signal : ad_reg_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:87:35 */
  assign n25 = ConfigBits[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:87:39 */
  assign n26 = ~n25;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:87:19 */
  assign n27 = n26 ? bd_signal : bd_reg_data;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:78:5 */
  always @(posedge UserCLK)
    n30 <= ad_signal;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:78:5 */
  always @(posedge UserCLK)
    n31 <= bd_signal;
  reg [3:0] mem[31:0] ; // memory
  assign n32 = mem[B_ADR];
  assign n33 = mem[A_ADR];
  always @(posedge UserCLK)
    if (W_en)
      mem[W_ADR] <= D;
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:73:20 */
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:72:20 */
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RegFile/RegFile_32x4.vhdl:66:13 */
endmodule

