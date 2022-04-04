library verilog;
use verilog.vl_types.all;
entity salidas_vlg_check_tst is
    port(
        Ea              : in     vl_logic;
        Eb              : in     vl_logic;
        Sa              : in     vl_logic;
        Sb              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end salidas_vlg_check_tst;
