library verilog;
use verilog.vl_types.all;
entity salidas is
    port(
        Ea              : out    vl_logic;
        Q1              : in     vl_logic;
        Q0              : in     vl_logic;
        Sa              : out    vl_logic;
        Q2              : in     vl_logic;
        Eb              : out    vl_logic;
        Sb              : out    vl_logic
    );
end salidas;
