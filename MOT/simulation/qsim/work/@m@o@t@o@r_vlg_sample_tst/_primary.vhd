library verilog;
use verilog.vl_types.all;
entity MOTOR_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        HORARIO         : in     vl_logic;
        MODO            : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MOTOR_vlg_sample_tst;
