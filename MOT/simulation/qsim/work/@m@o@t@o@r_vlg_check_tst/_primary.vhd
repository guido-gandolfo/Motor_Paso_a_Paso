library verilog;
use verilog.vl_types.all;
entity MOTOR_vlg_check_tst is
    port(
        Ea              : in     vl_logic;
        Eb              : in     vl_logic;
        ERROR           : in     vl_logic;
        POSICION        : in     vl_logic_vector(2 downto 0);
        Sa              : in     vl_logic;
        Sb              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MOTOR_vlg_check_tst;
