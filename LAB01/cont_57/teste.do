modelsim.ini
vcom -reportprogress 300 -work work D:/Docs/Universidade/LogicaReconfiguravel/Lab01/cont_57/cont_4.vhd
vcom -reportprogress 300 -work work D:/Docs/Universidade/LogicaReconfiguravel/Lab01/cont_57/cont_57.vhd
vcom -reportprogress 300 -work work D:/Docs/Universidade/LogicaReconfiguravel/Lab01/cont_57/cont_57_tb.vhd
vsim work.cont_57_tb
add wave -position insertpoint  \
sim:/cont_57_tb/clk \
sim:/cont_57_tb/EN \
sim:/cont_57_tb/clr \
sim:/cont_57_tb/RST
add wave -position insertpoint  \
sim:/cont_57_tb/DUT/q_Out
run 400ns

