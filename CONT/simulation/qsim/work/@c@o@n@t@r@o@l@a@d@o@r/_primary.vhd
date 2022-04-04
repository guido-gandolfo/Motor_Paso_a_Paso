library verilog;
use verilog.vl_types.all;
entity CONTROLADOR is
    port(
        SALIDA_Q2       : out    vl_logic;
        nRST            : in     vl_logic;
        MODO            : in     vl_logic;
        CLK             : in     vl_logic;
        HORARIO         : in     vl_logic;
        SALIDA_Q1       : out    vl_logic;
        SALIDA_Q0       : out    vl_logic
    );
end CONTROLADOR;
