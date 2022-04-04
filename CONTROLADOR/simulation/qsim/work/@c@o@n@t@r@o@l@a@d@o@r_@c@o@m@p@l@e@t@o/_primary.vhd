library verilog;
use verilog.vl_types.all;
entity CONTROLADOR_COMPLETO is
    port(
        Ea              : out    vl_logic;
        RESET           : in     vl_logic;
        M               : in     vl_logic;
        CLK             : in     vl_logic;
        H               : in     vl_logic;
        Sa              : out    vl_logic;
        Eb              : out    vl_logic;
        Sb              : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic
    );
end CONTROLADOR_COMPLETO;
