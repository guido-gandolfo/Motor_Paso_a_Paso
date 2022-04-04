onerror {quit -f}
vlib work
vlog -work work MOTOR.vo
vlog -work work MOTOR.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MOTOR_vlg_vec_tst
vcd file -direction MOTOR.msim.vcd
vcd add -internal MOTOR_vlg_vec_tst/*
vcd add -internal MOTOR_vlg_vec_tst/i1/*
add wave /*
run -all
