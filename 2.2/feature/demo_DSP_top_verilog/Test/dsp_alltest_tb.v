`timescale 1ps / 1ps
`default_nettype none

// Testbench for dsp_alltest: exercises all 7 DSP (MULADD) blocks in the fabric.
//
// A = O_top[7:0], B = O_top[15:8], sel = O_top[18:16] are driven into the fabric;
// the fabric routes A*B+sel from DSP block `sel` back onto I_top[19:0]. The golden
// value is just A*B+sel computed here, so a dead or mis-routed block fails when
// its index is selected.
module dsp_alltest_tb ();
    reg  [27:0] O_top = 0;
    wire [27:0] I_top, T_top;
    wire [55:0] A_cfg, B_cfg;

    reg         CLK               = 1'b0;
    reg         resetn            = 1'b1;
    reg         self_write_strobe = 1'b0;
    reg  [31:0] self_write_data   = 32'b0;
    reg         rx                = 1'b1;
    wire        com_active, receive_led;
    reg         s_clk       = 1'b0;
    reg         s_data      = 1'b0;
    reg         config_done = 1'b0;

    eFPGA_top top_i (
        .I_top          (I_top            ),
        .T_top          (T_top            ),
        .O_top          (O_top            ),
        .A_config_C     (A_cfg            ),
        .B_config_C     (B_cfg            ),
        .CLK            (CLK              ),
        .resetn         (resetn           ),
        .SelfWriteStrobe(self_write_strobe),
        .SelfWriteData  (self_write_data  ),
        .Rx             (rx               ),
        .ComActive      (com_active       ),
        .ReceiveLED     (receive_led      ),
        .s_clk          (s_clk            ),
        .s_data         (s_data           )
    );

    localparam integer MAX_BITBYTES = 16384;
    reg [7:0] bitstream [MAX_BITBYTES];

    always #500000 CLK = (CLK === 1'b0);

    integer      i, v, s;
    reg          have_errors = 1'b0;
    reg [2047:0] output_waveform_arg;
    reg [2047:0] bitstream_hex_arg;

    // test operands: {A, B}
    localparam integer NVEC = 6;
    reg [7:0] Av [0:NVEC-1];
    reg [7:0] Bv [0:NVEC-1];

    reg [7:0]  A, B;
    reg [19:0] expected;

    initial begin
        Av[0]=8'd1;   Bv[0]=8'd1;
        Av[1]=8'd3;   Bv[1]=8'd5;
        Av[2]=8'd17;  Bv[2]=8'd19;
        Av[3]=8'd255; Bv[3]=8'd255;
        Av[4]=8'd100; Bv[4]=8'd7;
        Av[5]=8'd16;  Bv[5]=8'd16;

        if ($value$plusargs("output_waveform=%s", output_waveform_arg)) begin
            $dumpfile(output_waveform_arg);
            $dumpvars(0, dsp_alltest_tb);
        end

        if ($value$plusargs("bitstream_hex=%s", bitstream_hex_arg)) begin
            $readmemh(bitstream_hex_arg, bitstream);
            $display("Read bitstream hex from %s", bitstream_hex_arg);
        end else begin
            $display("Error: No bitstream provided as $plusargs bitstream_hex.");
            $fatal;
        end

        #100;
        resetn = 1'b0;
        #10000;
        resetn = 1'b1;
        #10000;
        repeat (20) @(posedge CLK);
        #2500;
        for (i = 0; i < MAX_BITBYTES; i = i + 4) begin
            self_write_data <= {bitstream[i], bitstream[i+1], bitstream[i+2], bitstream[i+3]};
            repeat (2) @(posedge CLK);
            self_write_strobe <= 1'b1;
            @(posedge CLK);
            self_write_strobe <= 1'b0;
            repeat (2) @(posedge CLK);
        end
        config_done = 1'b1;
        repeat (100) @(posedge CLK);

        // Sweep every DSP block (sel) across every operand vector.
        for (s = 0; s < 7; s = s + 1) begin
            for (v = 0; v < NVEC; v = v + 1) begin
                A = Av[v];
                B = Bv[v];
                O_top = {9'b0, s[2:0], B, A};   // [18:16]=sel, [15:8]=B, [7:0]=A
                repeat (3) @(negedge CLK);
                expected = (A * B + s) & 20'hFFFFF;
                $display("DSP%0d: A=%0d B=%0d  Q=0x%05X expected=0x%05X %s",
                    s, A, B, I_top[19:0], expected,
                    (I_top[19:0] === expected) ? "" : "<-- MISMATCH");
                if (I_top[19:0] !== expected) have_errors = 1'b1;
            end
        end

        if (have_errors) begin
            $display("DSP test FAILED");
            $fatal;
        end else begin
            $display("DSP test PASSED: all 7 DSP blocks correct");
            $finish;
        end
    end
endmodule
`default_nettype wire
