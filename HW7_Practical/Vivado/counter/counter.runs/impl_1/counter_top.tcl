proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir E:/repos/ECEN5863_HW/HW7_Practical/Vivado/counter/counter.cache/wt [current_project]
  set_property parent.project_path E:/repos/ECEN5863_HW/HW7_Practical/Vivado/counter/counter.xpr [current_project]
  set_property ip_repo_paths e:/repos/ECEN5863_HW/HW7_Practical/Vivado/counter/counter.cache/ip [current_project]
  set_property ip_output_repo e:/repos/ECEN5863_HW/HW7_Practical/Vivado/counter/counter.cache/ip [current_project]
  add_files -quiet E:/repos/ECEN5863_HW/HW7_Practical/Vivado/counter/counter.runs/synth_1/counter_top.dcp
  read_xdc E:/repos/ECEN5863_HW/HW7_Practical/Vivado/counter/counter.srcs/constrs_2/new/counter_top.xdc
  link_design -top counter_top -part xc7z020clg400-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force counter_top_opt.dcp
  catch {report_drc -file counter_top_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file counter_top.hwdef}
  place_design 
  write_checkpoint -force counter_top_placed.dcp
  catch { report_io -file counter_top_io_placed.rpt }
  catch { report_utilization -file counter_top_utilization_placed.rpt -pb counter_top_utilization_placed.pb }
  catch { report_control_sets -verbose -file counter_top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force counter_top_routed.dcp
  catch { report_drc -file counter_top_drc_routed.rpt -pb counter_top_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file counter_top_timing_summary_routed.rpt -rpx counter_top_timing_summary_routed.rpx }
  catch { report_power -file counter_top_power_routed.rpt -pb counter_top_power_summary_routed.pb }
  catch { report_route_status -file counter_top_route_status.rpt -pb counter_top_route_status.pb }
  catch { report_clock_utilization -file counter_top_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

