transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Docs/Universidade/LogicaReconfiguravel/Lab01/cont_57/cont_57.vhd}
vcom -93 -work work {D:/Docs/Universidade/LogicaReconfiguravel/Lab01/cont_57/cont_4.vhd}

