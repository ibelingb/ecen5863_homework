transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/repos/ECEN5863_HW/HW5/HW5P1 {E:/repos/ECEN5863_HW/HW5/HW5P1/HW5P1_top.v}

