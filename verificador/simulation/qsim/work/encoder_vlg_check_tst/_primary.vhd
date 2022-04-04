library verilog;
use verilog.vl_types.all;
entity encoder_vlg_check_tst is
    port(
        ERRORPOSICION   : in     vl_logic;
        PASOACTUAL      : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end encoder_vlg_check_tst;
