library verilog;
use verilog.vl_types.all;
entity VERIFICADOR is
    port(
        ERROR           : out    vl_logic;
        Ea              : in     vl_logic;
        Sa              : in     vl_logic;
        Eb              : in     vl_logic;
        Sb              : in     vl_logic;
        INC             : out    vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        POS             : out    vl_logic_vector(2 downto 0)
    );
end VERIFICADOR;
