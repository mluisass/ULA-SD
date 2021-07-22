onerror {exit -code 1}
vlib work
vlog -work work ULA.vo
<<<<<<< HEAD
vlog -work work Waveform20.vwf.vt
vsim -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.somador_completo_vlg_vec_tst
vcd file -direction ULA.msim.vcd
vcd add -internal somador_completo_vlg_vec_tst/*
vcd add -internal somador_completo_vlg_vec_tst/i1/*
=======
vlog -work work Waveform6.vwf.vt
vsim -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Mux8_1_vetor_vlg_vec_tst
vcd file -direction ULA.msim.vcd
vcd add -internal Mux8_1_vetor_vlg_vec_tst/*
vcd add -internal Mux8_1_vetor_vlg_vec_tst/i1/*
>>>>>>> 61c76b4bc868c347221f6b15a9d30183ae1b7918
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
<<<<<<< HEAD
=======

>>>>>>> 61c76b4bc868c347221f6b15a9d30183ae1b7918
