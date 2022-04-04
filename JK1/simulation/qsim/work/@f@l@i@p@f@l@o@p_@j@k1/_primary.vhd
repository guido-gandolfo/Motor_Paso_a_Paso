library verilog;
use verilog.vl_types.all;
entity FLIPFLOP_JK1 is
    port(
        SALIDA_Q1       : out    vl_logic;
        RESET           : in     vl_logic;
        Q0              : in     vl_logic;
        M               : in     vl_logic;
        H               : in     vl_logic;
        CLK             : in     vl_logic
    );
end FLIPFLOP_JK1;
