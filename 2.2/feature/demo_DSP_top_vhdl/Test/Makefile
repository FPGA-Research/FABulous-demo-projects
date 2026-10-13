# DSP all-blocks test: place dsp_alltest on all 7 MULADD blocks, then simulate
# the bitstream on the generated fabric RTL and check every block (nvc).
FAB_PROJ_ROOT = ..
BUILD_DIR     = build
DESIGN        = dsp_alltest
MAX_BITBYTES  = 16384
USER_DESIGN   = $(FAB_PROJ_ROOT)/user_design
YOSYS   ?= $(or $(FAB_YOSYS_PATH),yosys)
NEXTPNR ?= $(or $(FAB_NEXTPNR_PATH),nextpnr-generic)

# models_pack first; the golden model lives in the testbench, so the user design
# itself is not simulated.
VHDL_SRCS = $(FAB_PROJ_ROOT)/Fabric/models_pack.vhdl \
	$(shell find $(FAB_PROJ_ROOT)/Tile $(FAB_PROJ_ROOT)/Fabric -name '*.vhdl' ! -name models_pack.vhdl) \
	$(DESIGN)_tb.vhdl

NVC = nvc --std=2008 -H 2g -M 1g --ieee-warnings=off --work=$(BUILD_DIR)/work

.PHONY: sim build_test_design run_simulation clean

sim: build_test_design run_simulation clean

# top_wrapper stays Verilog: it is the pin constraint for yosys.
build_test_design:
	mkdir -p $(BUILD_DIR)
	$(YOSYS) -m ghdl -p "ghdl $(USER_DESIGN)/$(DESIGN).vhdl -e $(DESIGN); read_verilog $(USER_DESIGN)/$(DESIGN)_top.v; \
		synth_fabulous -top top_wrapper -json $(BUILD_DIR)/$(DESIGN).json -extra-plib $(USER_DESIGN)/custom_prims.v"
	FAB_ROOT=$(FAB_PROJ_ROOT) $(NEXTPNR) --uarch fabulous --json $(BUILD_DIR)/$(DESIGN).json -o fasm=$(BUILD_DIR)/$(DESIGN).fasm
	bit_gen -genBitstream $(BUILD_DIR)/$(DESIGN).fasm $(FAB_PROJ_ROOT)/.FABulous/bitStreamSpec.bin $(BUILD_DIR)/$(DESIGN).bin
	python3 makehex.py $(BUILD_DIR)/$(DESIGN).bin $(MAX_BITBYTES) $(BUILD_DIR)/$(DESIGN).hex

run_simulation:
	ulimit -s unlimited; $(NVC) -a $(VHDL_SRCS) -e -O2 $(DESIGN)_tb -r

clean:
	rm -rf $(BUILD_DIR)
