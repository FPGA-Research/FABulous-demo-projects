(* C_bit3=32'b00000000000000000000000000000011, C_bit2=32'b00000000000000000000000000000010, C_bit1=32'b00000000000000000000000000000001, C_bit0=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module Config_access
  ((* EXTERNAL="TRUE" *) output [3:0] C,
   (* GLOBAL="TRUE" *) input  [3:0] ConfigBits);
  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire [3:0] n5;
  assign C = n5; //(module output)
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/Config_access.vhdl:45:21 */
  assign n1 = ConfigBits[0]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/Config_access.vhdl:46:21 */
  assign n2 = ConfigBits[1]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/Config_access.vhdl:47:21 */
  assign n3 = ConfigBits[2]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/Config_access.vhdl:48:21 */
  assign n4 = ConfigBits[3]; // extract
  /*# /tmp/claude-1000/gen22/demo_2.2.0_vhdl/Tile/RAM_IO/Config_access.vhdl:26:5 */
  assign n5 = {n4, n3, n2, n1};
endmodule

