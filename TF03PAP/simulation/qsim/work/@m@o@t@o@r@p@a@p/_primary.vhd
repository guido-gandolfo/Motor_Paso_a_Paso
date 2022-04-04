library verilog;
use verilog.vl_types.all;
entity MOTORPAP is
    port(
        ERRORPOSICION   : out    vl_logic;
        MODO            : in     vl_logic;
        HORARIO         : in     vl_logic;
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        INCREMENTO      : out    vl_logic_vector(2 downto 0);
        POSICION        : out    vl_logic_vector(2 downto 0)
    );
end MOTORPAP;
