`default_nettype none

// Exercises every DSP (MULADD) block in the fabric.
//
// The fabric has exactly 7 DSP_top_sm supertiles (MULADD bels in column X6), so
// the 7 muladd8 instances below are forced onto all 7 physical DSP tiles by P&R.
// Each MULADD is left in its default (all config bits 0) mode => combinational
// Q = A*B + C. A and B are broadcast from IO to every block; each block adds its
// own index as C, so block i computes Q_i = A*B + i. A 3-bit select mux routes
// one block's Q[19:0] to the output pins; the testbench sweeps A, B and sel and
// checks Q against the same arithmetic done in plain Verilog, so a dead or
// mis-routed block fails when its index is selected.
module dsp_alltest (
    input  wire        clk,
    input  wire [27:0] io_in,
    output wire [27:0] io_out,
    output wire [27:0] io_oeb
);
    wire [ 7:0] A   = io_in[7:0];
    wire [ 7:0] B   = io_in[15:8];
    wire [ 2:0] sel = io_in[18:16];

    wire [19:0] Q [0:6];
    genvar gi;
    generate
        for (gi = 0; gi < 7; gi = gi + 1) begin : dsp
            muladd8 u (.A(A), .B(B), .C(gi[19:0]), .clr(1'b0), .Q(Q[gi]));
        end
    endgenerate

    assign io_out = {8'b0, Q[sel]};
    assign io_oeb = 28'h00FFFFF;  // low 20 bits drive the Q output
endmodule

// Vector-friendly wrapper around the scalar MULADD DSP primitive (whose pins are
// scalar to match the fabric bel pins).
module muladd8 (
    input  wire [ 7:0] A,
    input  wire [ 7:0] B,
    input  wire [19:0] C,
    input  wire        clr,
    output wire [19:0] Q
);
    MULADD u (
        .A0(A[0]),
        .A1(A[1]),
        .A2(A[2]),
        .A3(A[3]),
        .A4(A[4]),
        .A5(A[5]),
        .A6(A[6]),
        .A7(A[7]),
        .B0(B[0]),
        .B1(B[1]),
        .B2(B[2]),
        .B3(B[3]),
        .B4(B[4]),
        .B5(B[5]),
        .B6(B[6]),
        .B7(B[7]),
        .C0(C[0]),
        .C1(C[1]),
        .C2(C[2]),
        .C3(C[3]),
        .C4(C[4]),
        .C5(C[5]),
        .C6(C[6]),
        .C7(C[7]),
        .C8(C[8]),
        .C9(C[9]),
        .C10(C[10]),
        .C11(C[11]),
        .C12(C[12]),
        .C13(C[13]),
        .C14(C[14]),
        .C15(C[15]),
        .C16(C[16]),
        .C17(C[17]),
        .C18(C[18]),
        .C19(C[19]),
        .clr(clr),
        .Q0(Q[0]),
        .Q1(Q[1]),
        .Q2(Q[2]),
        .Q3(Q[3]),
        .Q4(Q[4]),
        .Q5(Q[5]),
        .Q6(Q[6]),
        .Q7(Q[7]),
        .Q8(Q[8]),
        .Q9(Q[9]),
        .Q10(Q[10]),
        .Q11(Q[11]),
        .Q12(Q[12]),
        .Q13(Q[13]),
        .Q14(Q[14]),
        .Q15(Q[15]),
        .Q16(Q[16]),
        .Q17(Q[17]),
        .Q18(Q[18]),
        .Q19(Q[19])
    );
endmodule
`default_nettype wire
