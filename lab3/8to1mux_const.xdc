## Switches
set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports  s[2]  ];
set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports  s[1]  ];
set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports  s[0]  ];
set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports  in[7] ];
set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports  in[6] ];
set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports  in[5] ];
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports  in[4] ];
set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports  in[3] ];
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports  in[2] ];
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports  in[1] ];
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports  in[0] ];

## LEDs
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports  out ];  
