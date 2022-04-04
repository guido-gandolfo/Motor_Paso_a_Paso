library verilog;
use verilog.vl_types.all;
entity MOTOR is
    port(
        ERROR           : out    vl_logic;
        MODO            : in     vl_logic;
        HORARIO         : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Ea              : out    vl_logic;
        Sa              : out    vl_logic;
        Eb              : out    vl_logic;
        Sb              : out    vl_logic;
        POSICION        : out    vl_logic_vector(2 downto 0)
    );
end MOTOR;
