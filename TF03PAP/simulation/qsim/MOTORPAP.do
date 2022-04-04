onerror {quit -f}
vlib work
vlog -work work MOTORPAP.vo
vlog -work work MOTORPAP.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MOTORPAP_vlg_vec_tst
vcd file -direction MOTORPAP.msim.vcd
vcd add -internal MOTORPAP_vlg_vec_tst/*
vcd add -internal MOTORPAP_vlg_vec_tst/i1/*
add wave /*
run -all
