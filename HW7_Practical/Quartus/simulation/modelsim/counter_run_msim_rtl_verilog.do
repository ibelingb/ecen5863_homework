transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/repos/ECEN5863_HW/HW7_Practical/Quartus {E:/repos/ECEN5863_HW/HW7_Practical/Quartus/counter.v}
vlog -sv -work work +incdir+E:/repos/ECEN5863_HW/HW7_Practical/Quartus {E:/repos/ECEN5863_HW/HW7_Practical/Quartus/counter_top.v}

