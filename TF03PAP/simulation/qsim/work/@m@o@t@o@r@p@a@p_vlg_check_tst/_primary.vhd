library verilog;
use verilog.vl_types.all;
entity MOTORPAP_vlg_check_tst is
    port(
        ERRORPOSICION   : in     vl_logic;
        INCREMENTO      : in     vl_logic_vector(2 downto 0);
        POSICION        : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end MOTORPAP_vlg_check_tst;
