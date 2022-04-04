onerror {quit -f}
vlib work
vlog -work work FLIPFLOPJK2.vo
vlog -work work FLIPFLOPJK2.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FLIPFLOPJK2_vlg_vec_tst
vcd file -direction FLIPFLOPJK2.msim.vcd
vcd add -internal FLIPFLOPJK2_vlg_vec_tst/*
vcd add -internal FLIPFLOPJK2_vlg_vec_tst/i1/*
add wave /*
run -all
