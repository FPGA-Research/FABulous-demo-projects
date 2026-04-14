DEMO_DIR    := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
CACHE_DIR   := $(DEMO_DIR)/.fab_test_cache
FAB_GIT_URL := https://github.com/FPGA-Research/FABulous.git
CONFIG_FILE := $(DEMO_DIR)/reference_projects_config.yaml

# Override FAB_REPO to use a local checkout, e.g.:
#   make test FAB_REPO=~/work/uni/FABulous
FAB_REPO ?= $(CACHE_DIR)/FABulous

# Branch to clone from GitHub (only used when FAB_REPO is the default cache path)
FAB_BRANCH ?=

# Extra pytest args: make test ARGS="-v -k run_legacy_1.3_verilog_demo"
ARGS ?= -vvvv --pdb

.PHONY: test update clean

test: $(FAB_REPO)
	cd $(FAB_REPO) && uv run \
		--with-editable . \
		--group dev \
		pytest \
		tests/reference_test/reference_projects_test.py \
		--projects-dir=$(DEMO_DIR) \
		--reference-projects-config=$(CONFIG_FILE) \
		$(ARGS)

# Only triggered when FAB_REPO is the default cache path (not a user override)
$(CACHE_DIR)/FABulous:
	mkdir -p $(CACHE_DIR)
	git clone --depth=1 $(if $(FAB_BRANCH),--branch $(FAB_BRANCH)) $(FAB_GIT_URL) $(CACHE_DIR)/FABulous

update:
	git -C $(CACHE_DIR)/FABulous pull --ff-only

clean:
	rm -rf $(CACHE_DIR)
