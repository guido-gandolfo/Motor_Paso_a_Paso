onerror {quit -f}
vlib work
vlog -work work CONTROLADOR.vo
vlog -work work CONTROLADOR.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CONTROLADOR_vlg_vec_tst
vcd file -direction CONTROLADOR.msim.vcd
vcd add -internal CONTROLADOR_vlg_vec_tst/*
vcd add -internal CONTROLADOR_vlg_vec_tst/i1/*
add wave /*
run -all
