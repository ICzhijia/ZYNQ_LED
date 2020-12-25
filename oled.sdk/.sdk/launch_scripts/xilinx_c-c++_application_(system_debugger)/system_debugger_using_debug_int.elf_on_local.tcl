connect -url tcp:127.0.0.1:3121
source C:/Users/aiai/Desktop/study/FPGA/Xlinx/2020_12_5/oled_test/oled/oled.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 SULEE2001011"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS2 SULEE2001011" && level==0} -index 1
fpga -file C:/Users/aiai/Desktop/study/FPGA/Xlinx/2020_12_5/oled_test/oled/oled.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 SULEE2001011"} -index 0
loadhw -hw C:/Users/aiai/Desktop/study/FPGA/Xlinx/2020_12_5/oled_test/oled/oled.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 SULEE2001011"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 SULEE2001011"} -index 0
dow C:/Users/aiai/Desktop/study/FPGA/Xlinx/2020_12_5/oled_test/oled/oled.sdk/int/Debug/int.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 SULEE2001011"} -index 0
con
