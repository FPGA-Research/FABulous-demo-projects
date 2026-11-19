#!/usr/bin/env bash
# The timing config needs absolute paths, and the test copies the project to a
# fresh temp directory, so write it from wherever the project sits right now.
set -euo pipefail
proj=$(cd "$(dirname "$0")/.." && pwd)
pdk="$proj/Test/pdk/ihp-sg13g2"
cat > "$proj/.FABulous/timing_model_config.json" <<JSON
{
    "project_dir": "$proj",
    "pdk_name": "ihp-sg13g2",
    "liberty_files": "$pdk/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib",
    "techmap_files": [
        "$pdk/libs.tech/librelane/sg13g2_stdcell/latch_map.v",
        "$pdk/libs.tech/librelane/sg13g2_stdcell/tribuff_map.v"
    ],
    "min_buf_cell_and_ports": "sg13g2_buf_1 A X",
    "synth_executable": "yosys",
    "sta_executable": "sta",
    "mode": "structural"
}
JSON
