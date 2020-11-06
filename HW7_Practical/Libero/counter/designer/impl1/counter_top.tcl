# Created by Microsemi Libero Software 11.8.0.26
# Thu Nov 05 07:58:48 2020

# (OPEN DESIGN)

open_design "counter_top.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "counter_top_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {E:\repos\ECEN5863_HW\HW7_Practical\Libero\counter\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {counter_top_place_and_route_report.txt}
report -type "globalnet" {counter_top_globalnet_report.txt}
report -type "globalusage" {counter_top_globalusage_report.txt}
report -type "iobank" {counter_top_iobank_report.txt}
report -type "pin" -listby "name" {counter_top_report_pin_byname.txt}
report -type "pin" -listby "number" {counter_top_report_pin_bynumber.txt}

save_design
