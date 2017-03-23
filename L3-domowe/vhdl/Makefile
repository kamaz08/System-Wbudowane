all: lfsr lfsr_tb lfsr_tb lfsr.vcd gtkwave

lfsr : lfsr.vhd
	ghdl -a lfsr.vhd
	ghdl -e lfsr
	ghdl -r lfsr

lfsr_tb : lfsr_tb.vhd
	ghdl -a lfsr_tb.vhd
	ghdl -e lfsr_tb

lfsr.vcd : lfsr_tb.vhd
	ghdl -r lfsr_tb --vcd=lfsr.vcd --stop-time=100000ns

gtkwave : lfsr.vcd
	gtkwave lfsr.vcd
