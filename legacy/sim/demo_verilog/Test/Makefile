MAX_BITBYTES=16384
FAB_PROJ_ROOT=..
BUILD_DIR=build
YOSYS?=$(or $(FAB_YOSYS_PATH),yosys)
NEXTPNR?=$(or $(FAB_NEXTPNR_PATH),nextpnr-generic)
DESIGN=sequential_16bit_en
TESTBENCH=${DESIGN}_tb
TOP_WRAPPER=top_wrapper

FABRIC_FILES_DIR=${BUILD_DIR}/fabric_files
USER_DESIGN_DIR=${FAB_PROJ_ROOT}/user_design
USER_DESIGN_VERILOG=${USER_DESIGN_DIR}/${DESIGN}.v
TOP_WRAPPER_VERILOG=${USER_DESIGN_DIR}/${TOP_WRAPPER}.v
WAVEFORM_TYPE=fst

VVP_ARGS=+output_waveform=${BUILD_DIR}/${DESIGN}.${WAVEFORM_TYPE}
VVP_ARGS+=+bitstream_hex=${BUILD_DIR}/${DESIGN}.hex

#only add if custom_prims.v exists
ifneq ($(wildcard ${USER_DESIGN_DIR}/custom_prims.v),)
	CUSTOM_PRIMS=-extra-plib ${USER_DESIGN_DIR}/custom_prims.v
endif

.PHONY: sim build_test_design run_simulation mkdir_build mkdir_fabric_files clean copy_files run_yosys run_nextpnr run_bitgen

sim: build_test_design run_simulation clean

build_test_design: run_yosys run_nextpnr run_bitgen copy_files

run_yosys: mkdir_build
	${YOSYS} -p "synth_fabulous -top ${TOP_WRAPPER} -json ${BUILD_DIR}/${DESIGN}.json ${CUSTOM_PRIMS}" ${USER_DESIGN_VERILOG} ${TOP_WRAPPER_VERILOG}

run_nextpnr: mkdir_build
	FAB_ROOT=${FAB_PROJ_ROOT} ${NEXTPNR} --uarch fabulous --json ${BUILD_DIR}/${DESIGN}.json -o fasm=${BUILD_DIR}/${DESIGN}.fasm

run_bitgen: mkdir_build
	bit_gen -genBitstream ${BUILD_DIR}/${DESIGN}.fasm ${FAB_PROJ_ROOT}/.FABulous/bitStreamSpec.bin ${BUILD_DIR}/${DESIGN}.bin
	python3 makehex.py ${BUILD_DIR}/${DESIGN}.bin ${MAX_BITBYTES} ${BUILD_DIR}/${DESIGN}.hex

copy_files: mkdir_fabric_files
	find ${FAB_PROJ_ROOT}/Tile/ -name '*.v' -type f -exec cp -n {} ${FABRIC_FILES_DIR}/ \;
	find ${FAB_PROJ_ROOT}/Fabric/ -name '*.v' -type f -exec cp -n {} ${FABRIC_FILES_DIR}/ \;

mkdir_build:
	mkdir -p ${BUILD_DIR}

mkdir_fabric_files:
	mkdir -p ${FABRIC_FILES_DIR}

run_simulation:
	iverilog -g2012 -s ${TESTBENCH} -o ${BUILD_DIR}/${DESIGN}.vvp ${FABRIC_FILES_DIR}/* ${USER_DESIGN_VERILOG} ${TESTBENCH}.v
	vvp ${BUILD_DIR}/${DESIGN}.vvp ${VVP_ARGS}

clean:
	rm -rf ${BUILD_DIR}
