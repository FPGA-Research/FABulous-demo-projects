
// DSP multiply-add BEL. Pins are scalar and match the fabric bel pins after the
// "DSP_" prefix is stripped (DSP_A0.. -> A0..). ConfigBits come from the config
// frame via the BelMap parameters below (all default 0 => combinational Q=A*B+C).
(* blackbox, keep *)
module MULADD (
    input  A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7, C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19, clr,
    output Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19
);
    parameter A_reg = 0;
    parameter B_reg = 0;
    parameter C_reg = 0;
    parameter ACC = 0;
    parameter signExtension = 0;
    parameter ACCout = 0;
endmodule

//Warning: The primitive InPass4_frame_config_mux was added by FABulous automatically.
(* blackbox, keep *)
module InPass4_frame_config_mux (
    output O0,
    output O1,
    output O2,
    output O3,
    (* iopad_external_pin *)
    input I0,
    (* iopad_external_pin *)
    input I1,
    (* iopad_external_pin *)
    input I2,
    (* iopad_external_pin *)
    input I3,
    input CLK
);
    parameter I0_reg = 0;
    parameter I1_reg = 0;
    parameter I2_reg = 0;
    parameter I3_reg = 0;
endmodule

//Warning: The primitive OutPass4_frame_config_mux was added by FABulous automatically.
(* blackbox, keep *)
module OutPass4_frame_config_mux (
    input I0,
    input I1,
    input I2,
    input I3,
    (* iopad_external_pin *)
    output O0,
    (* iopad_external_pin *)
    output O1,
    (* iopad_external_pin *)
    output O2,
    (* iopad_external_pin *)
    output O3,
    input CLK
);
    parameter I0_reg = 0;
    parameter I1_reg = 0;
    parameter I2_reg = 0;
    parameter I3_reg = 0;
endmodule
