library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library work;
use work.zpu_config.all;
use work.zpuino_config.all;
use work.zpuinopkg.all;
use work.zpupkg.all;
use work.wishbonepkg.all;

library unisim;
use unisim.vcomponents.all;

entity sram_ctrl is
  port (
    wb_clk_i: in std_logic;
	 	wb_rst_i: in std_logic;

    wb_dat_o: out std_logic_vector(31 downto 0);
    wb_dat_i: in std_logic_vector(31 downto 0);
    wb_adr_i: in std_logic_vector(maxIOBit downto minIOBit);
--    wb_sel_i: in std_logic_vector(3 downto 0);
    wb_cti_i: in std_logic_vector(2 downto 0);
    wb_we_i:  in std_logic;
    wb_cyc_i: in std_logic;
    wb_stb_i: in std_logic;
    wb_ack_o: out std_logic;
    -- extra clocking
    clk_we: in std_logic;
    clk_wen: in std_logic;
    -- SRAM signals
    sram_addr:  out std_logic_vector(18 downto 0);
    sram_data:  inout std_logic_vector(15 downto 0);
    sram_ce:    out std_logic := '1';
    sram_we:    out std_logic;
    sram_oe:    out std_logic;
    sram_be:    out std_logic
  );

end entity sram_ctrl;


architecture behave of sram_ctrl is

signal sram_data_write: std_logic_vector(15 downto 0);
signal out_write_enable: std_logic;

type state_type is (
  idle,
  waitburst,
  operation,
  finish,
  waitfinish
);

signal state: state_type;

signal strobe_addr: std_logic;
signal even_odd: std_logic;
signal sram_addr_q: std_logic_vector(18 downto 0);
signal bus_tristate: std_logic;
signal sram_data_read: std_logic_vector(15 downto 0);
signal sram_data_write_i: std_logic_vector(15 downto 0);

signal sram_data_read_q: std_logic_vector(31 downto 0);

attribute IOB : string;
attribute IOB of sram_data_write: signal is "FORCE";
--attribute IOB of sram_ce: signal is "FORCE";
--attribute IOB of sram_we: signal is "FORCE";
--attribute IOB of sram_oe: signal is "FORCE";
--attribute IOB of sram_be: signal is "FORCE";
attribute IOB of sram_addr_q: signal is "FORCE";


begin

sram_be <= '0';

--bus_tristate<='0' when wb_we_i='1' and wb_cyc_i='1' else '0';

sram_data <= sram_data_write_i when wb_we_i='1' and wb_cyc_i='1' else (others => 'Z');

sram_data_write_i <= transport sram_data_write after 1.7 ns;
--outbuffers: block
--  begin
-- sramdatabuf: for i in 0 to 15 generate
--    dbuf: BUFT
--      port map (
--        I => sram_data_write(i),
--        O => sram_data(i),
--        T => bus_tristate
--      );
--  end generate;
--end block;

ODDR2_nWE : ODDR2
   generic map(
      DDR_ALIGNMENT => "NONE",    -- Sets output alignment to "NONE", "C0", "C1" 
      INIT          => '1',     -- Sets initial state of the Q output to '0' or '1'
      SRTYPE        => "ASYNC") -- Specifies "SYNC" or "ASYNC" set/reset
   port map (
      Q  => sram_we,              -- 1-bit output data
      C0 => clk_we,              -- 1-bit clock input
      C1 => wb_clk_i,--clk_wen,             -- 1-bit clock input
      CE => '1',                  -- 1-bit clock enable input
      D0 => '1', -- 1-bit data input (associated with C0)
      D1 => out_write_enable, -- 1-bit data input (associated with C1)
      R  => '0',                   -- 1-bit reset input
      S  => '0'                   -- 1-bit set input
   );



process(state,wb_cyc_i,wb_stb_i,wb_we_i)
begin
  if (state=idle or state=waitburst) and wb_cyc_i='1' and wb_stb_i='1' then
    out_write_enable <= not wb_we_i;
  else
    out_write_enable <= '1';
  end if;
end process;

sram_addr <= sram_addr_q;

sram_data_read <= transport sram_data after 3 ns;

saq: for index in 1 to 18 generate
  addrff: FDE
    port map (
      D => wb_adr_i(index+1),
      Q => sram_addr_q(index),
      C => wb_clk_i,
      CE => strobe_addr
    );

end generate;

  sram_addr_q_0: FDE
    generic map (
      INIT => '1'
    )
    port map (
      D => even_odd,
      Q => sram_addr_q(0),
      C => wb_clk_i,
      CE => strobe_addr
    );

process(state,wb_cyc_i,wb_stb_i)
begin
  strobe_addr <='0';
  even_odd <= DontCareValue;
  case state is
    when idle =>
      if wb_cyc_i='1' and wb_stb_i='1' then
        strobe_addr<='1';
        even_odd <= '0';
      end if;
    when waitburst =>
      strobe_addr<='1';
      even_odd <= '1';
    when others =>
  end case;
end process;


process(clk_wen)
begin
  if rising_edge(clk_wen) then
    sram_data_read_q(31 downto 16) <= sram_data_read;
    sram_data_read_q(15 downto 0) <= sram_data_read_q(31 downto 16);
  end if;
end process;

process(wb_clk_i)
begin
  if rising_edge(wb_clk_i) then
    if wb_rst_i='1' then
      wb_ack_o <= '0';
      state <= idle;
      --out_write_enable<='1';
      --sram_we <= '1';
      sram_ce <= '1';
      sram_oe <= '1';
    else

      wb_ack_o <= '0';
      case state is

        when idle =>
          if wb_cyc_i='1' and wb_stb_i='1' then

            --sram_addr_q <= unsigned(wb_adr_i(19 downto 2)) & '0';
            sram_data_write <= wb_dat_i(15 downto 0);
            --out_write_enable <= not wb_we_i;
            sram_oe <= wb_we_i;
            sram_ce <= '0';

            --if wb_we_i='1' then
            --  state <= operation;
            --else
              state <= waitburst;
            --end if;
          end if;

        when waitburst =>
          --sram_addr_q(0) <= '1';
          sram_data_write <= wb_dat_i(31 downto 16);
          sram_oe <= wb_we_i;
          --out_write_enable <= not wb_we_i;
          sram_ce <= '0';

          if wb_we_i='1' then
            wb_ack_o<='1';
            state <= finish;
          else
            state <= operation;
          end if;
        when operation =>
          
          --wb_dat_o(31 downto 16) <= sram_data_read;
          --out_write_enable<='1';
          --if wb_cti_i = CTI_CYCLE_INCRADDR then
          --  sram_addr_q <= sram_addr_q + 1;
          --  state <= waitburst;
          --else
            state <= finish;
          --end if;
        when finish =>
          --out_write_enable <= '1';
          wb_dat_o <= sram_data_read_q;
          sram_oe <= '1';
          sram_ce <= '1';
          if wb_we_i='0' then
            wb_ack_o<='1';
            state <= waitfinish;
          else
            state <= idle;
          end if;
        when waitfinish =>
          state <= idle;
        when others =>
      end case;
    end if;
  end if;
end process;


end behave;
