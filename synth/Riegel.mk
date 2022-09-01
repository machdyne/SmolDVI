CHIPNAME=smoldvi_riegel
DOTF=$(HDL)/fpga/smoldvi_fpga_riegel.f

DEVICE=hx4k
PACKAGE=bg121
SYNTH_OPT=-retime
PNR_OPT=--pre-pack smoldvi_icebreaker_prepack.py --timing-allow-fail

include $(SCRIPTS)/synth_ice40.mk

prog: bit
	iceprog $(CHIPNAME).bin
