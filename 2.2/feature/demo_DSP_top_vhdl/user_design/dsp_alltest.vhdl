library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- Exercises every DSP (MULADD) block in the fabric (VHDL twin of dsp_alltest.v).
--
-- The fabric has exactly 7 DSP_top_sm supertiles (MULADD bels in column X6), so
-- the 7 muladd8 instances below are forced onto all 7 physical DSP tiles by P&R.
-- Each MULADD is left in its default (all config bits 0) mode => combinational
-- Q = A*B + C. A and B are broadcast from IO to every block; each block adds its
-- own index as C, so block i computes Q_i = A*B + i. A 3-bit select mux routes
-- one block's Q(19 downto 0) to the output pins; the testbench sweeps A, B and
-- sel and checks Q against the same arithmetic done in plain code, so a dead or
-- mis-routed block fails when its index is selected.

entity dsp_alltest is
  port (
    clk    : in    std_logic;
    io_in  : in    std_logic_vector(27 downto 0);
    io_out : out   std_logic_vector(27 downto 0);
    io_oeb : out   std_logic_vector(27 downto 0)
  );
end entity dsp_alltest;

architecture Behavior of dsp_alltest is

  component muladd8 is
    port (
      A   : in    std_logic_vector( 7 downto 0);
      B   : in    std_logic_vector( 7 downto 0);
      C   : in    std_logic_vector(19 downto 0);
      clr : in    std_logic;
      Q   : out   std_logic_vector(19 downto 0)
    );
  end component muladd8;

  type q_array_type is array (0 to 6) of std_logic_vector(19 downto 0);

  signal A   : std_logic_vector( 7 downto 0);
  signal B   : std_logic_vector( 7 downto 0);
  signal sel : std_logic_vector( 2 downto 0);
  signal Q   : q_array_type;

begin

  A   <= io_in(7 downto 0);
  B   <= io_in(15 downto 8);
  sel <= io_in(18 downto 16);

  gen_dsp : for gi in 0 to 6 generate

    u : component muladd8
      port map (
        A   => A,
        B   => B,
        C   => std_logic_vector(to_unsigned(gi, 20)),
        clr => '0',
        Q   => Q(gi)
      );

  end generate gen_dsp;

  io_out <= "00000000" & Q(to_integer(unsigned(sel)));
  io_oeb <= x"00FFFFF";  -- low 20 bits drive the Q output

end architecture Behavior;

library ieee;
  use ieee.std_logic_1164.all;

-- Vector-friendly wrapper around the scalar MULADD DSP primitive (whose pins are
-- scalar to match the fabric bel pins). Left unbound in synthesis so it maps onto
-- the fabric MULADD bel via the Verilog blackbox in custom_prims.v.

entity muladd8 is
  port (
    A   : in    std_logic_vector( 7 downto 0);
    B   : in    std_logic_vector( 7 downto 0);
    C   : in    std_logic_vector(19 downto 0);
    clr : in    std_logic;
    Q   : out   std_logic_vector(19 downto 0)
  );
end entity muladd8;

architecture rtl of muladd8 is

  component MULADD is
    port (
      A0, A1, A2, A3, A4, A5, A6, A7 : in    std_logic;
      B0, B1, B2, B3, B4, B5, B6, B7 : in    std_logic;
      C0, C1, C2, C3, C4, C5, C6, C7, C8, C9,
      C10, C11, C12, C13, C14, C15, C16, C17, C18, C19 : in    std_logic;
      clr : in    std_logic;
      Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9,
      Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19 : out   std_logic
    );
  end component MULADD;

begin

  u : component MULADD
    port map (
      A0 => A(0), A1 => A(1), A2 => A(2), A3 => A(3),
      A4 => A(4), A5 => A(5), A6 => A(6), A7 => A(7),
      B0 => B(0), B1 => B(1), B2 => B(2), B3 => B(3),
      B4 => B(4), B5 => B(5), B6 => B(6), B7 => B(7),
      C0 => C(0), C1 => C(1), C2 => C(2), C3 => C(3), C4 => C(4),
      C5 => C(5), C6 => C(6), C7 => C(7), C8 => C(8), C9 => C(9),
      C10 => C(10), C11 => C(11), C12 => C(12), C13 => C(13), C14 => C(14),
      C15 => C(15), C16 => C(16), C17 => C(17), C18 => C(18), C19 => C(19),
      clr => clr,
      Q0 => Q(0), Q1 => Q(1), Q2 => Q(2), Q3 => Q(3), Q4 => Q(4),
      Q5 => Q(5), Q6 => Q(6), Q7 => Q(7), Q8 => Q(8), Q9 => Q(9),
      Q10 => Q(10), Q11 => Q(11), Q12 => Q(12), Q13 => Q(13), Q14 => Q(14),
      Q15 => Q(15), Q16 => Q(16), Q17 => Q(17), Q18 => Q(18), Q19 => Q(19)
    );

end architecture rtl;
