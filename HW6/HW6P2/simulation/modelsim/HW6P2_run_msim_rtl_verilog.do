transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/repos/ECEN5863_HW/HW6/HW6P2 {E:/repos/ECEN5863_HW/HW6/HW6P2/HW6P2.v}

