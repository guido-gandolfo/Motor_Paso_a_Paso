library verilog;
use verilog.vl_types.all;
entity CONTROLADOR is
    port(
        Ea              : out    vl_logic;
        nRST            : in     vl_logic;
        MODO            : in     vl_logic;
        CLK             : in     vl_logic;
        HORARIO         : in     vl_logic;
        Sa              : out    vl_logic;
        Eb              : out    vl_logic;
        Sb              : out    vl_logic
    );
end CONTROLADOR;
