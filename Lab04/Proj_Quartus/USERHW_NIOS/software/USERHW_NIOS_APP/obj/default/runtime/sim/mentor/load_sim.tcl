# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force d:/Docs/Universidade/LogicaReconfiguravel/LogicaReconfiguravel/Lab04/Proj_Quartus/USERHW_NIOS/software/USERHW_NIOS_APP/mem_init/hdl_sim/unsaved_RAM.dat ./ 
file copy -force d:/Docs/Universidade/LogicaReconfiguravel/LogicaReconfiguravel/Lab04/Proj_Quartus/USERHW_NIOS/software/USERHW_NIOS_APP/mem_init/hdl_sim/unsaved_ROM.dat ./ 
file copy -force d:/Docs/Universidade/LogicaReconfiguravel/LogicaReconfiguravel/Lab04/Proj_Quartus/USERHW_NIOS/software/USERHW_NIOS_APP/mem_init/unsaved_RAM.hex ./ 
file copy -force d:/Docs/Universidade/LogicaReconfiguravel/LogicaReconfiguravel/Lab04/Proj_Quartus/USERHW_NIOS/software/USERHW_NIOS_APP/mem_init/unsaved_ROM.hex ./ 
