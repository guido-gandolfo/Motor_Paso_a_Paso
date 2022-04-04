onerror {quit -f}
vlib work
vlog -work work VERIFICADOR.vo
vlog -work work VERIFICADOR.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.VERIFICADOR_vlg_vec_tst
vcd file -direction VERIFICADOR.msim.vcd
vcd add -internal VERIFICADOR_vlg_vec_tst/*
vcd add -internal VERIFICADOR_vlg_vec_tst/i1/*
add wave /*
run -all
