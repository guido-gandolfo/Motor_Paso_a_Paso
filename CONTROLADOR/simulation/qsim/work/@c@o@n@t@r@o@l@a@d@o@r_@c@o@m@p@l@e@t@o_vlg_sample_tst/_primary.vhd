library verilog;
use verilog.vl_types.all;
entity CONTROLADOR_COMPLETO_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        H               : in     vl_logic;
        M               : in     vl_logic;
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CONTROLADOR_COMPLETO_vlg_sample_tst;
