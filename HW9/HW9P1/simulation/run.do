quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "E:/repos/ECEN5863_HW/HW9/HW9P1"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap smartfusion "E:/Microsemi/Designer/lib/modelsim/precompiled/vlog/smartfusion"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/receiver.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/counter.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/sender.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/top_level_model.v"

vsim -L smartfusion -L presynth  -t 1ps presynth.top_level_model
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
