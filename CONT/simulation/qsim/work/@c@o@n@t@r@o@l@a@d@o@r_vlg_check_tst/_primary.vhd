library verilog;
use verilog.vl_types.all;
entity CONTROLADOR_vlg_check_tst is
    port(
        SALIDA_Q0       : in     vl_logic;
        SALIDA_Q1       : in     vl_logic;
        SALIDA_Q2       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CONTROLADOR_vlg_check_tst;
