library verilog;
use verilog.vl_types.all;
entity FLIPFLOPJK2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        H               : in     vl_logic;
        M               : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FLIPFLOPJK2_vlg_sample_tst;
