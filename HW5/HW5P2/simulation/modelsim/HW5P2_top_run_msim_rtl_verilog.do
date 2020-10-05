transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/repos/ECEN5863_HW/HW5/HW5P2 {E:/repos/ECEN5863_HW/HW5/HW5P2/HW5P2_clocked.v}

