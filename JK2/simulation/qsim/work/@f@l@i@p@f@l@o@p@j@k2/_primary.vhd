library verilog;
use verilog.vl_types.all;
entity FLIPFLOPJK2 is
    port(
        Q2              : out    vl_logic;
        reset           : in     vl_logic;
        Q1              : in     vl_logic;
        Q0              : in     vl_logic;
        H               : in     vl_logic;
        M               : in     vl_logic;
        clk             : in     vl_logic
    );
end FLIPFLOPJK2;
