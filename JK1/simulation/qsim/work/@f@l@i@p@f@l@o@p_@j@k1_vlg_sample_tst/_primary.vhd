library verilog;
use verilog.vl_types.all;
entity FLIPFLOP_JK1_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        H               : in     vl_logic;
        M               : in     vl_logic;
        Q0              : in     vl_logic;
        RESET           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FLIPFLOP_JK1_vlg_sample_tst;
