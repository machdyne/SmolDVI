CHIPNAME=smoldvi_keks
DOTF=$(HDL)/fpga/smoldvi_fpga_keks.f

DEVICE=hx8k
PACKAGE=ct256
SYNTH_OPT=-retime
PNR_OPT=--pre-pack smoldvi_icebreaker_prepack.py --timing-allow-fail

include $(SCRIPTS)/synth_ice40.mk

prog: bit
	iceprog $(CHIPNAME).bin
