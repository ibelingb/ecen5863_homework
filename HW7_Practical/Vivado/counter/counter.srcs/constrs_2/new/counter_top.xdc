set_property PACKAGE_PIN D18 [get_ports TCout]


create_clock -period 30.000 -name clock -waveform {0.000 15.000} [get_ports clock]
set_input_delay -clock [get_clocks clock] -min -add_delay 7.000 [get_ports enable]
set_input_delay -clock [get_clocks clock] -max -add_delay 8.000 [get_ports enable]
set_input_delay -clock [get_clocks clock] -min -add_delay 7.000 [get_ports reset]
set_input_delay -clock [get_clocks clock] -max -add_delay 8.000 [get_ports reset]
set_output_delay -clock [get_clocks clock] -min -add_delay 7.000 [get_ports TCout]
set_output_delay -clock [get_clocks clock] -max -add_delay 8.000 [get_ports TCout]
