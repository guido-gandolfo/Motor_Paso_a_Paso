library verilog;
use verilog.vl_types.all;
entity encoder_vlg_sample_tst is
    port(
        Ea              : in     vl_logic;
        Eb              : in     vl_logic;
        Sa              : in     vl_logic;
        Sb              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end encoder_vlg_sample_tst;
