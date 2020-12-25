vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ipshared/11bb/hdl/LED_v1_0_S0_AXI.v" \
"../../../bd/design_1/ipshared/11bb/hdl/LED_v1_0.v" \
"../../../bd/design_1/ip/design_1_LED_0_2/sim/design_1_LED_0_2.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../oled.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../oled.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/install/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

