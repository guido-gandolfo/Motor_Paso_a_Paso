library verilog;
use verilog.vl_types.all;
entity VERIFICADOR_vlg_check_tst is
    port(
        ERROR           : in     vl_logic;
        INC             : in     vl_logic_vector(2 downto 0);
        POS             : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end VERIFICADOR_vlg_check_tst;
