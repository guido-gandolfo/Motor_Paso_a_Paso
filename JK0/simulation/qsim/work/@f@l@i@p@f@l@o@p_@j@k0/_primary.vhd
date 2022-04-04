library verilog;
use verilog.vl_types.all;
entity FLIPFLOP_JK0 is
    port(
        SALIDA_Q0       : out    vl_logic;
        RESET           : in     vl_logic;
        M               : in     vl_logic;
        CLK             : in     vl_logic
    );
end FLIPFLOP_JK0;
