onerror {quit -f}
vlib work
vlog -work work salidas.vo
vlog -work work salidas.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.salidas_vlg_vec_tst
vcd file -direction salidas.msim.vcd
vcd add -internal salidas_vlg_vec_tst/*
vcd add -internal salidas_vlg_vec_tst/i1/*
add wave /*
run -all
