onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix ascii /bram_tb/READDATA
add wave -noupdate /bram_tb/clk
add wave -noupdate /bram_tb/CS
add wave -noupdate /bram_tb/WR_EN
add wave -noupdate /bram_tb/RD_EN
add wave -noupdate -radix hexadecimal /bram_tb/WRITEDATA
add wave -noupdate -radix hexadecimal /bram_tb/ADD
add wave -noupdate /bram_tb/state
add wave -noupdate -radix decimal /bram_tb/INTERVAL_0
add wave -noupdate -radix decimal /bram_tb/INTERVAL_1
add wave -noupdate -radix decimal /bram_tb/counter
add wave -noupdate -radix decimal /bram_tb/address
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {230000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 170
configure wave -valuecolwidth 90
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {145520 ps} {314480 ps}
