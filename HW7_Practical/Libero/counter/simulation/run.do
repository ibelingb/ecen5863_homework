quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "E:/repos/ECEN5863_HW/HW7_Practical/Libero/counter"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "E:/Microsemi/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/impl1/counter_ba.v"

vsim -L smartfusion -L postlayout  -t 1ps -sdfmax /counter=${PROJECT_DIR}/designer/impl1/counter_ba.sdf postlayout.counter
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns