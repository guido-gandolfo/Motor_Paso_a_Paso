library verilog;
use verilog.vl_types.all;
entity PRUEBA is
    port(
        Q1              : out    vl_logic;
        MODO            : in     vl_logic;
        HORARIO         : in     vl_logic;
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        Q0              : out    vl_logic;
        Q2              : out    vl_logic;
        ERROR           : out    vl_logic;
        POS             : out    vl_logic_vector(2 downto 0)
    );
end PRUEBA;
