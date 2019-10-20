transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Projects/Implementation-on-FPGA-Quartus-II-VHDL-Verilog/mux/mux.vhd}

vcom -93 -work work {E:/Projects/Implementation-on-FPGA-Quartus-II-VHDL-Verilog/mux/mux.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  mux

add wave *
view structure
view signals
run -all
