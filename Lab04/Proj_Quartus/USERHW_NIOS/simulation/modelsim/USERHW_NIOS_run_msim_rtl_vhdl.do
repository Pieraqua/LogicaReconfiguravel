transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclone10lp
vmap cyclone10lp ./vhdl_libs/cyclone10lp
vcom -93 -work cyclone10lp {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/cyclone10lp_atoms.vhd}
vcom -93 -work cyclone10lp {d:/programfiles/intelfpga_lite/21.1/quartus/eda/sim_lib/cyclone10lp_components.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib unsaved
vmap unsaved unsaved
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_reset_controller.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_ram.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_rom.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0_cpu.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0_cpu_debug_slave_tck.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0_cpu_mult_cell.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_nios2_gen2_0_cpu_test_bench.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/unsaved.v}
vlog -vlog01compat -work work +incdir+D:/Docs/Universidade/LogicaReconfiguravel/LogicaReconfiguravel/Lab04/Proj_Quartus/USERHW_NIOS/db {D:/Docs/Universidade/LogicaReconfiguravel/LogicaReconfiguravel/Lab04/Proj_Quartus/USERHW_NIOS/db/altera_mult_add_hkp2.v}
vlog -vlog01compat -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_master_agent.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_master_translator.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/altera_merlin_traffic_limiter.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_irq_mapper.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_cmd_mux_001.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_router.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_router_001.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_router_002.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_router_003.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_router_005.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_rsp_demux_001.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work unsaved +incdir+d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/unsaved_mm_interconnect_0_rsp_mux_001.sv}
vcom -93 -work unsaved {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/ram.vhd}
vcom -93 -work unsaved {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/userhw_nios.vhd}
vcom -93 -work unsaved {d:/docs/universidade/logicareconfiguravel/logicareconfiguravel/lab04/proj_quartus/userhw_nios/db/ip/unsaved/submodules/reg_32bit.vhd}

