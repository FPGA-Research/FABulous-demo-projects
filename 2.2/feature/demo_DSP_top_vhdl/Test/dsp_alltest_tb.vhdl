library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use std.env.finish;
  use std.textio.all;

-- Testbench for dsp_alltest: exercises all 7 DSP (MULADD) blocks in the fabric
-- (VHDL twin of dsp_alltest_tb.v).
--
-- A = O_top(7 downto 0), B = O_top(15 downto 8), sel = O_top(18 downto 16) are
-- driven into the fabric; the fabric routes A*B+sel from DSP block `sel` back
-- onto I_top(19 downto 0). The golden value is just A*B+sel computed here, so a
-- dead or mis-routed block fails when its index is selected.

entity dsp_alltest_tb is
end entity dsp_alltest_tb;

architecture Behavior of dsp_alltest_tb is

  component eFPGA_top is
    generic (
      FrameBitsPerRow  : integer := 32;
      FrameSelectWidth : integer := 5;
      MaxFramesPerCol  : integer := 20;
      NumberOfCols     : integer := 10;
      NumberOfRows     : integer := 14;
      RowSelectWidth   : integer := 5;
      desync_flag      : integer := 20;
      include_eFPGA    : integer := 1
    );
    port (
      I_top          : out   std_logic_vector(NumberOfRows * 2 - 1 downto 0);
      T_top          : out   std_logic_vector(NumberOfRows * 2 - 1 downto 0);
      O_top          : in    std_logic_vector(NumberOfRows * 2 - 1 downto 0);
      A_config_C     : out   std_logic_vector(NumberOfRows * 4 - 1 downto 0);
      B_config_C     : out   std_logic_vector(NumberOfRows * 4 - 1 downto 0);
      Config_accessC : out   std_logic_vector( 55 downto 0);

      CLK             : in    std_logic;
      resetn          : in    std_logic;
      ComActive       : out   std_logic;
      ReceiveLED      : out   std_logic;
      Rx              : in    std_logic;
      s_clk           : in    std_logic;
      s_data          : in    std_logic;
      SelfWriteData   : in    std_logic_vector(31 downto 0);
      SelfWriteStrobe : in    std_logic
    );
  end component eFPGA_top;

  constant MAX_BITBYTES : integer := 16384;

  -- test operands: A(v), B(v)
  constant NVEC : integer := 6;
  type operand_array is array (0 to NVEC - 1) of integer;
  constant Av : operand_array := (1, 3, 17, 255, 100, 16);
  constant Bv : operand_array := (1, 5, 19, 255, 7, 16);

  signal I_top         : std_logic_vector(27 downto 0);
  signal T_top         : std_logic_vector(27 downto 0);
  signal O_top         : std_logic_vector(27 downto 0) := (others => '0');
  signal A_cfg         : std_logic_vector(55 downto 0);
  signal B_cfg         : std_logic_vector(55 downto 0);
  signal Config_access : std_logic_vector(55 downto 0);

  signal CLK             : std_logic;
  signal resetn          : std_logic;
  signal SelfWriteStrobe : std_logic;
  signal SelfWriteData   : std_logic_vector(31 downto 0);
  signal ComActive       : std_logic;
  signal Rx              : std_logic;
  signal s_clk           : std_logic;
  signal s_data          : std_logic;
  signal ReceiveLED      : std_logic;

  type bitstream_Type is array (MAX_BITBYTES downto 0) of std_logic_vector(7 downto 0);

  signal bitstream : bitstream_Type;

  impure function readmemh (
    filename : string
  ) return bitstream_Type is

    variable bs        : bitstream_Type;
    file     read_file : text open read_mode is "build/dsp_alltest.hex";
    variable counter   : integer;
    variable L         : LINE;
    variable temp      : std_logic_vector(7 downto 0);
    variable good_v    : boolean;

  begin

    counter := 0;

    while not endfile(read_file) loop

      readline (read_file, L);
      hread (L, temp, good_v);
      bs(counter) := temp;
      counter     := counter + 1;

    end loop;

    return bs;

  end function readmemh;

begin

  init_efpga : component eFPGA_top
    generic map (
      FrameBitsPerRow  => 32,
      FrameSelectWidth => 5,
      MaxFramesPerCol  => 20,
      NumberOfCols     => 10,
      NumberOfRows     => 14,
      RowSelectWidth   => 5,
      desync_flag      => 20,
      include_eFPGA    => 1
    )
    port map (
      I_top          => I_top,
      T_top          => T_top,
      O_top          => O_top,
      A_config_C     => A_cfg,
      B_config_C     => B_cfg,
      Config_accessC => Config_access,

      CLK             => CLK,
      resetn          => resetn,
      SelfWriteStrobe => SelfWriteStrobe,
      SelfWriteData   => SelfWriteData,

      Rx         => Rx,
      ComActive  => ComActive,
      ReceiveLED => ReceiveLED,
      s_clk      => s_clk,
      s_data     => s_data

    );

  -- Quiescent stimulus inputs (never change during the test)
  Rx     <= '1';
  s_clk  <= '0';
  s_data <= '0';

  process is
  begin

    CLK <= '0';
    wait for 5000 ps;

    loop

      CLK <= not CLK;
      wait for 5000 ps;

    end loop;

  end process;

  process is

    variable i        : integer;
    variable A        : integer;
    variable B        : integer;
    variable expected : std_logic_vector(19 downto 0);
    variable have_err : boolean := false;

  begin

    resetn          <= '0';
    SelfWriteStrobe <= '0';
    SelfWriteData   <= (others => '0');

    i := 0;

    while i < MAX_BITBYTES loop

      bitstream(i) <= x"00";
      i            := i + 1;

    end loop;

    bitstream <= readmemh("bitstream.hex");
    wait for 100 ps;
    report "Bitstream loaded into memory array";
    resetn    <= '0';
    wait for 10000 ps;
    resetn    <= '1';
    wait for 10000 ps;

    for Verilog_Repeat in 1 to 20 loop

      wait until rising_edge(CLK);

    end loop;

    wait for 2500 ps;

    i := 0;

    while i < MAX_BITBYTES loop

      SelfWriteData <= bitstream(i) & bitstream(i + 1) & bitstream(i + 2) & bitstream(i + 3);
      -- wait 2 clock cycles
      wait until rising_edge(CLK);
      wait until rising_edge(CLK);

      SelfWriteStrobe <= '1';
      wait until rising_edge(CLK);
      SelfWriteStrobe <= '0';

      -- wait another 2 clock cycles
      wait until rising_edge(CLK);
      wait until rising_edge(CLK);

      i := i + 4;

    end loop;

    -- wait 100 clock cycles
    for Verilog_Repeat in 1 to 100 loop

      wait until rising_edge(CLK);

    end loop;

    report "Configuration completed";

    -- Sweep every DSP block (sel) across every operand vector.
    for s in 0 to 6 loop

      for v in 0 to NVEC - 1 loop

        A := Av(v);
        B := Bv(v);
        -- O_top: (18 downto 16)=sel, (15 downto 8)=B, (7 downto 0)=A
        O_top <= "000000000" &
                 std_logic_vector(to_unsigned(s, 3)) &
                 std_logic_vector(to_unsigned(B, 8)) &
                 std_logic_vector(to_unsigned(A, 8));

        -- settle: three negedges (comb path through the selected DSP block)
        for Verilog_Repeat in 1 to 3 loop

          wait until falling_edge(CLK);

        end loop;

        expected := std_logic_vector(to_unsigned((A * B + s) mod 1048576, 20));

        report "DSP" & integer'image(s) &
               ": A=" & integer'image(A) &
               " B=" & integer'image(B) &
               "  Q=0x" & to_hstring(I_top(19 downto 0)) &
               " expected=0x" & to_hstring(expected);

        if (I_top(19 downto 0) /= expected) then
          report "DSP" & integer'image(s) & " MISMATCH: Q=0x" &
                 to_hstring(I_top(19 downto 0)) & " expected=0x" & to_hstring(expected)
            severity error;
          have_err := true;
        end if;

      end loop;

    end loop;

    if (have_err) then
      report "DSP test FAILED" severity failure;
    else
      report "DSP test PASSED: all 7 DSP blocks correct";
    end if;

    wait for 5000 ps;
    finish;

  end process;

end architecture Behavior;
