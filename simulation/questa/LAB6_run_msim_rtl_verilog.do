transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA/AS1/LAB6/RTL {D:/FPGA/AS1/LAB6/RTL/LAB6.v}

vlog -vlog01compat -work work +incdir+D:/FPGA/AS1/LAB6/SIM {D:/FPGA/AS1/LAB6/SIM/tb_LAB6.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_LAB6

add wave *
view structure
view signals
run 1 us
