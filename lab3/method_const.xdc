## Switches
set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports  a ];
set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports  b ];
set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports  c ];
set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports  d ];

## LEDs
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports  out ]; 
