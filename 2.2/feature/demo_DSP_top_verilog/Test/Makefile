# DSP all-blocks test: place dsp_alltest on all 7 MULADD blocks, then simulate
# the bitstream on the generated fabric RTL and check every block (iverilog).
FAB_PROJ_ROOT = ..
BUILD_DIR     = build
DESIGN        = dsp_alltest
MAX_BITBYTES  = 16384
USER_DESIGN   = $(FAB_PROJ_ROOT)/user_design
YOSYS   ?= $(or $(FAB_YOSYS_PATH),yosys)
NEXTPNR ?= $(or $(FAB_NEXTPNR_PATH),nextpnr-generic)

.PHONY: sim build_test_design run_simulation clean

sim: build_test_design run_simulation clean

build_test_design:
	mkdir -p $(BUILD_DIR)
	$(YOSYS) -p "synth_fabulous -top top_wrapper -json $(BUILD_DIR)/$(DESIGN).json -extra-plib $(USER_DESIGN)/custom_prims.v" \
		$(USER_DESIGN)/$(DESIGN).v $(USER_DESIGN)/$(DESIGN)_top.v
	FAB_ROOT=$(FAB_PROJ_ROOT) $(NEXTPNR) --uarch fabulous --json $(BUILD_DIR)/$(DESIGN).json -o fasm=$(BUILD_DIR)/$(DESIGN).fasm
	bit_gen -genBitstream $(BUILD_DIR)/$(DESIGN).fasm $(FAB_PROJ_ROOT)/.FABulous/bitStreamSpec.bin $(BUILD_DIR)/$(DESIGN).bin
	python3 makehex.py $(BUILD_DIR)/$(DESIGN).bin $(MAX_BITBYTES) $(BUILD_DIR)/$(DESIGN).hex

# Fabric sources are flattened into one dir so shared BELs (e.g. Config_access.v
# in W_IO and RAM_IO) are compiled once. The golden model lives in the testbench.
run_simulation:
	mkdir -p $(BUILD_DIR)/fabric
	find $(FAB_PROJ_ROOT)/Tile $(FAB_PROJ_ROOT)/Fabric -name '*.v' -exec cp {} $(BUILD_DIR)/fabric/ \;
	iverilog -g2012 -s $(DESIGN)_tb -o $(BUILD_DIR)/$(DESIGN).vvp $(BUILD_DIR)/fabric/*.v $(DESIGN)_tb.v
	vvp $(BUILD_DIR)/$(DESIGN).vvp +bitstream_hex=$(BUILD_DIR)/$(DESIGN).hex

clean:
	rm -rf $(BUILD_DIR)
