library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        ERRORPOSICION   : out    vl_logic;
        Ea              : in     vl_logic;
        Eb              : in     vl_logic;
        PASOACTUAL      : out    vl_logic_vector(2 downto 0);
        Sb              : in     vl_logic;
        Sa              : in     vl_logic
    );
end encoder;
