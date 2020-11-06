# Created by Microsemi Libero Software 11.8.0.26
# Tue Nov 03 17:11:23 2020

# (OPEN DESIGN)

open_design "counter16.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "counter16_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {E:\repos\ECEN5863_HW\HW7\HW7P3\HW7P3\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
