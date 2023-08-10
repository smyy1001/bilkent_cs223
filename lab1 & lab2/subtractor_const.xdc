## Switches
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { a }];
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { b }];
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { bin }];

## LEDs
set_property -dict { PACKAGE_PIN U16    IOSTANDARD LVCMOS33 } [get_ports { diff }]; 
set_property -dict { PACKAGE_PIN E19    IOSTANDARD LVCMOS33 } [get_ports { bout }];
