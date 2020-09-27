transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/repos/ECEN5863_HW/HW4/HW4P4 {E:/repos/ECEN5863_HW/HW4/HW4P4/ram_verilog_max10.v}

