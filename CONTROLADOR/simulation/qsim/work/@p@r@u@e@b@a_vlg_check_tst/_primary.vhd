library verilog;
use verilog.vl_types.all;
entity PRUEBA_vlg_check_tst is
    port(
        ERROR           : in     vl_logic;
        POS             : in     vl_logic_vector(2 downto 0);
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PRUEBA_vlg_check_tst;
