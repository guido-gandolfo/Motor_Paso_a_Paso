library verilog;
use verilog.vl_types.all;
entity PRUEBA_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        HORARIO         : in     vl_logic;
        MODO            : in     vl_logic;
        nRST            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PRUEBA_vlg_sample_tst;
