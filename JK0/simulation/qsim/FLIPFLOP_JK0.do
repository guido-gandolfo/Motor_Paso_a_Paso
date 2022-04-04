onerror {quit -f}
vlib work
vlog -work work FLIPFLOP_JK0.vo
vlog -work work FLIPFLOP_JK0.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FLIPFLOP_JK0_vlg_vec_tst
vcd file -direction FLIPFLOP_JK0.msim.vcd
vcd add -internal FLIPFLOP_JK0_vlg_vec_tst/*
vcd add -internal FLIPFLOP_JK0_vlg_vec_tst/i1/*
add wave /*
run -all
