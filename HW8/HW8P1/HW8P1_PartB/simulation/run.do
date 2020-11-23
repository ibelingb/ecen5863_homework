quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "E:/repos/ECEN5863_HW/HW8/HW8P1/HW8P1_PartB"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap smartfusion "E:/Microsemi/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/DFF.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/HW8P1.v"

vsim -L smartfusion -L presynth  -t 1ps presynth.CDC3FF
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
