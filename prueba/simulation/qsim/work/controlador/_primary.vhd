library verilog;
use verilog.vl_types.all;
entity controlador is
    port(
        Q0              : out    vl_logic;
        nRST            : in     vl_logic;
        MODO            : in     vl_logic;
        CLK             : in     vl_logic;
        Q1              : out    vl_logic;
        HORARIO         : in     vl_logic;
        Q2              : out    vl_logic;
        Ea              : out    vl_logic;
        Sa              : out    vl_logic;
        Eb              : out    vl_logic;
        Sb              : out    vl_logic
    );
end controlador;
