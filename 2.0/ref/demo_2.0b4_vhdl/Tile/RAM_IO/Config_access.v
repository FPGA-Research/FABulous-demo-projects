(* C_bit3=32'b00000000000000000000000000000011, C_bit2=32'b00000000000000000000000000000010, C_bit1=32'b00000000000000000000000000000001, C_bit0=32'b00000000000000000000000000000000, BelMap="TRUE", FABulous="TRUE" *) module Config_access
  ((* EXTERNAL="TRUE" *) output [3:0] C,
   (* GLOBAL="TRUE" *) input  [3:0] ConfigBits);
  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire [3:0] n5;
  assign C = n5; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/Config_access.vhdl:39:21  */
  assign n1 = ConfigBits[0]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/Config_access.vhdl:40:21  */
  assign n2 = ConfigBits[1]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/Config_access.vhdl:41:21  */
  assign n3 = ConfigBits[2]; // extract
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/RAM_IO/Config_access.vhdl:42:21  */
  assign n4 = ConfigBits[3]; // extract
  assign n5 = {n4, n3, n2, n1};
endmodule

