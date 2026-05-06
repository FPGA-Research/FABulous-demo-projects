(* BelMap="TRUE", FABulous="TRUE" *) module IO_1_bidirectional_frame_config_pass
  (input  I,
   input  T,
   output O,
   output Q,
   output I_top,
   output T_top,
   input  O_top,
   (* SHARED_PORT="TRUE", EXTERNAL="TRUE" *) input  UserCLK);
  wire n9;
  reg n10;
  assign O = O_top; //(module output)
  assign Q = n10; //(module output)
  assign I_top = I; //(module output)
  assign T_top = n9; //(module output)
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/W_IO/IO_1_bidirectional_frame_config_pass.vhdl:62:12  */
  assign n9 = ~T;
  /* /home/jart/work/uni/FABulous/demo_2.0b4_vhdl/Tile/W_IO/IO_1_bidirectional_frame_config_pass.vhdl:56:5  */
  always @(posedge UserCLK)
    n10 <= O_top;
endmodule

