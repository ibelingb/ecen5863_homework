transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/repos/ECEN5863_HW/HW4/HW4P1 {E:/repos/ECEN5863_HW/HW4/HW4P1/HW4P1.v}

