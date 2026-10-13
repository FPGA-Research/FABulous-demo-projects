 // NumberOfConfigBits: 0
module DSP_top_sm_switch_matrix
    (
 //SJUMP inputs from child tiles
        input  DSP_top_sm_top_A0,
        input  DSP_top_sm_top_A1,
        input  DSP_top_sm_top_A2,
        input  DSP_top_sm_top_A3,
        input  DSP_top_sm_top_B0,
        input  DSP_top_sm_top_B1,
        input  DSP_top_sm_top_B2,
        input  DSP_top_sm_top_B3,
        input  DSP_top_sm_top_C0,
        input  DSP_top_sm_top_C1,
        input  DSP_top_sm_top_C2,
        input  DSP_top_sm_top_C3,
        input  DSP_top_sm_top_C4,
        input  DSP_top_sm_top_C5,
        input  DSP_top_sm_top_C6,
        input  DSP_top_sm_top_C7,
        input  DSP_top_sm_top_C8,
        input  DSP_top_sm_top_C9,
        input  DSP_top_sm_bot_A0,
        input  DSP_top_sm_bot_A1,
        input  DSP_top_sm_bot_A2,
        input  DSP_top_sm_bot_A3,
        input  DSP_top_sm_bot_B0,
        input  DSP_top_sm_bot_B1,
        input  DSP_top_sm_bot_B2,
        input  DSP_top_sm_bot_B3,
        input  DSP_top_sm_bot_C0,
        input  DSP_top_sm_bot_C1,
        input  DSP_top_sm_bot_C2,
        input  DSP_top_sm_bot_C3,
        input  DSP_top_sm_bot_C4,
        input  DSP_top_sm_bot_C5,
        input  DSP_top_sm_bot_C6,
        input  DSP_top_sm_bot_C7,
        input  DSP_top_sm_bot_C8,
        input  DSP_top_sm_bot_C9,
        input  DSP_top_sm_bot_clr0,
 //BEL input ports (SM outputs)
        output  DSP_A0,
        output  DSP_A1,
        output  DSP_A2,
        output  DSP_A3,
        output  DSP_A4,
        output  DSP_A5,
        output  DSP_A6,
        output  DSP_A7,
        output  DSP_B0,
        output  DSP_B1,
        output  DSP_B2,
        output  DSP_B3,
        output  DSP_B4,
        output  DSP_B5,
        output  DSP_B6,
        output  DSP_B7,
        output  DSP_C0,
        output  DSP_C1,
        output  DSP_C2,
        output  DSP_C3,
        output  DSP_C4,
        output  DSP_C5,
        output  DSP_C6,
        output  DSP_C7,
        output  DSP_C8,
        output  DSP_C9,
        output  DSP_C10,
        output  DSP_C11,
        output  DSP_C12,
        output  DSP_C13,
        output  DSP_C14,
        output  DSP_C15,
        output  DSP_C16,
        output  DSP_C17,
        output  DSP_C18,
        output  DSP_C19,
        output  DSP_clr,
 //BEL output ports (SM inputs)
        input  DSP_Q0,
        input  DSP_Q1,
        input  DSP_Q2,
        input  DSP_Q3,
        input  DSP_Q4,
        input  DSP_Q5,
        input  DSP_Q6,
        input  DSP_Q7,
        input  DSP_Q8,
        input  DSP_Q9,
        input  DSP_Q10,
        input  DSP_Q11,
        input  DSP_Q12,
        input  DSP_Q13,
        input  DSP_Q14,
        input  DSP_Q15,
        input  DSP_Q16,
        input  DSP_Q17,
        input  DSP_Q18,
        input  DSP_Q19,
 //Reverse SJUMP outputs (SM -> child tile)
        output  DSP_top_sm_top_Q0,
        output  DSP_top_sm_top_Q1,
        output  DSP_top_sm_top_Q2,
        output  DSP_top_sm_top_Q3,
        output  DSP_top_sm_top_Q4,
        output  DSP_top_sm_top_Q5,
        output  DSP_top_sm_top_Q6,
        output  DSP_top_sm_top_Q7,
        output  DSP_top_sm_top_Q8,
        output  DSP_top_sm_top_Q9,
        output  DSP_top_sm_bot_Q0,
        output  DSP_top_sm_bot_Q1,
        output  DSP_top_sm_bot_Q2,
        output  DSP_top_sm_bot_Q3,
        output  DSP_top_sm_bot_Q4,
        output  DSP_top_sm_bot_Q5,
        output  DSP_top_sm_bot_Q6,
        output  DSP_top_sm_bot_Q7,
        output  DSP_top_sm_bot_Q8,
        output  DSP_top_sm_bot_Q9
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer DSP_A0 MUX-1
assign DSP_A0 = DSP_top_sm_top_A0;

 //switch matrix multiplexer DSP_A1 MUX-1
assign DSP_A1 = DSP_top_sm_top_A1;

 //switch matrix multiplexer DSP_A2 MUX-1
assign DSP_A2 = DSP_top_sm_top_A2;

 //switch matrix multiplexer DSP_A3 MUX-1
assign DSP_A3 = DSP_top_sm_top_A3;

 //switch matrix multiplexer DSP_A4 MUX-1
assign DSP_A4 = DSP_top_sm_bot_A0;

 //switch matrix multiplexer DSP_A5 MUX-1
assign DSP_A5 = DSP_top_sm_bot_A1;

 //switch matrix multiplexer DSP_A6 MUX-1
assign DSP_A6 = DSP_top_sm_bot_A2;

 //switch matrix multiplexer DSP_A7 MUX-1
assign DSP_A7 = DSP_top_sm_bot_A3;

 //switch matrix multiplexer DSP_B0 MUX-1
assign DSP_B0 = DSP_top_sm_top_B0;

 //switch matrix multiplexer DSP_B1 MUX-1
assign DSP_B1 = DSP_top_sm_top_B1;

 //switch matrix multiplexer DSP_B2 MUX-1
assign DSP_B2 = DSP_top_sm_top_B2;

 //switch matrix multiplexer DSP_B3 MUX-1
assign DSP_B3 = DSP_top_sm_top_B3;

 //switch matrix multiplexer DSP_B4 MUX-1
assign DSP_B4 = DSP_top_sm_bot_B0;

 //switch matrix multiplexer DSP_B5 MUX-1
assign DSP_B5 = DSP_top_sm_bot_B1;

 //switch matrix multiplexer DSP_B6 MUX-1
assign DSP_B6 = DSP_top_sm_bot_B2;

 //switch matrix multiplexer DSP_B7 MUX-1
assign DSP_B7 = DSP_top_sm_bot_B3;

 //switch matrix multiplexer DSP_C0 MUX-1
assign DSP_C0 = DSP_top_sm_top_C0;

 //switch matrix multiplexer DSP_C1 MUX-1
assign DSP_C1 = DSP_top_sm_top_C1;

 //switch matrix multiplexer DSP_C2 MUX-1
assign DSP_C2 = DSP_top_sm_top_C2;

 //switch matrix multiplexer DSP_C3 MUX-1
assign DSP_C3 = DSP_top_sm_top_C3;

 //switch matrix multiplexer DSP_C4 MUX-1
assign DSP_C4 = DSP_top_sm_top_C4;

 //switch matrix multiplexer DSP_C5 MUX-1
assign DSP_C5 = DSP_top_sm_top_C5;

 //switch matrix multiplexer DSP_C6 MUX-1
assign DSP_C6 = DSP_top_sm_top_C6;

 //switch matrix multiplexer DSP_C7 MUX-1
assign DSP_C7 = DSP_top_sm_top_C7;

 //switch matrix multiplexer DSP_C8 MUX-1
assign DSP_C8 = DSP_top_sm_top_C8;

 //switch matrix multiplexer DSP_C9 MUX-1
assign DSP_C9 = DSP_top_sm_top_C9;

 //switch matrix multiplexer DSP_C10 MUX-1
assign DSP_C10 = DSP_top_sm_bot_C0;

 //switch matrix multiplexer DSP_C11 MUX-1
assign DSP_C11 = DSP_top_sm_bot_C1;

 //switch matrix multiplexer DSP_C12 MUX-1
assign DSP_C12 = DSP_top_sm_bot_C2;

 //switch matrix multiplexer DSP_C13 MUX-1
assign DSP_C13 = DSP_top_sm_bot_C3;

 //switch matrix multiplexer DSP_C14 MUX-1
assign DSP_C14 = DSP_top_sm_bot_C4;

 //switch matrix multiplexer DSP_C15 MUX-1
assign DSP_C15 = DSP_top_sm_bot_C5;

 //switch matrix multiplexer DSP_C16 MUX-1
assign DSP_C16 = DSP_top_sm_bot_C6;

 //switch matrix multiplexer DSP_C17 MUX-1
assign DSP_C17 = DSP_top_sm_bot_C7;

 //switch matrix multiplexer DSP_C18 MUX-1
assign DSP_C18 = DSP_top_sm_bot_C8;

 //switch matrix multiplexer DSP_C19 MUX-1
assign DSP_C19 = DSP_top_sm_bot_C9;

 //switch matrix multiplexer DSP_clr MUX-1
assign DSP_clr = DSP_top_sm_bot_clr0;

 //switch matrix multiplexer DSP_top_sm_top_Q0 MUX-1
assign DSP_top_sm_top_Q0 = DSP_Q0;

 //switch matrix multiplexer DSP_top_sm_top_Q1 MUX-1
assign DSP_top_sm_top_Q1 = DSP_Q1;

 //switch matrix multiplexer DSP_top_sm_top_Q2 MUX-1
assign DSP_top_sm_top_Q2 = DSP_Q2;

 //switch matrix multiplexer DSP_top_sm_top_Q3 MUX-1
assign DSP_top_sm_top_Q3 = DSP_Q3;

 //switch matrix multiplexer DSP_top_sm_top_Q4 MUX-1
assign DSP_top_sm_top_Q4 = DSP_Q4;

 //switch matrix multiplexer DSP_top_sm_top_Q5 MUX-1
assign DSP_top_sm_top_Q5 = DSP_Q5;

 //switch matrix multiplexer DSP_top_sm_top_Q6 MUX-1
assign DSP_top_sm_top_Q6 = DSP_Q6;

 //switch matrix multiplexer DSP_top_sm_top_Q7 MUX-1
assign DSP_top_sm_top_Q7 = DSP_Q7;

 //switch matrix multiplexer DSP_top_sm_top_Q8 MUX-1
assign DSP_top_sm_top_Q8 = DSP_Q8;

 //switch matrix multiplexer DSP_top_sm_top_Q9 MUX-1
assign DSP_top_sm_top_Q9 = DSP_Q9;

 //switch matrix multiplexer DSP_top_sm_bot_Q0 MUX-1
assign DSP_top_sm_bot_Q0 = DSP_Q10;

 //switch matrix multiplexer DSP_top_sm_bot_Q1 MUX-1
assign DSP_top_sm_bot_Q1 = DSP_Q11;

 //switch matrix multiplexer DSP_top_sm_bot_Q2 MUX-1
assign DSP_top_sm_bot_Q2 = DSP_Q12;

 //switch matrix multiplexer DSP_top_sm_bot_Q3 MUX-1
assign DSP_top_sm_bot_Q3 = DSP_Q13;

 //switch matrix multiplexer DSP_top_sm_bot_Q4 MUX-1
assign DSP_top_sm_bot_Q4 = DSP_Q14;

 //switch matrix multiplexer DSP_top_sm_bot_Q5 MUX-1
assign DSP_top_sm_bot_Q5 = DSP_Q15;

 //switch matrix multiplexer DSP_top_sm_bot_Q6 MUX-1
assign DSP_top_sm_bot_Q6 = DSP_Q16;

 //switch matrix multiplexer DSP_top_sm_bot_Q7 MUX-1
assign DSP_top_sm_bot_Q7 = DSP_Q17;

 //switch matrix multiplexer DSP_top_sm_bot_Q8 MUX-1
assign DSP_top_sm_bot_Q8 = DSP_Q18;

 //switch matrix multiplexer DSP_top_sm_bot_Q9 MUX-1
assign DSP_top_sm_bot_Q9 = DSP_Q19;

endmodule