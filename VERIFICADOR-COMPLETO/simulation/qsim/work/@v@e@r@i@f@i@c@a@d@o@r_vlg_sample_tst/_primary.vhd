library verilog;
use verilog.vl_types.all;
entity VERIFICADOR_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Ea              : in     vl_logic;
        Eb              : in     vl_logic;
        RST             : in     vl_logic;
        Sa              : in     vl_logic;
        Sb              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end VERIFICADOR_vlg_sample_tst;
