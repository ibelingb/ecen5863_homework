transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/repos/ECEN5863_HW/HW4/ram_vhdl_max10.vhd}

