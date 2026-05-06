# FABulous demos

This repository contains a collection of FABulous demo projects to show the versatility of the FABulous framework.
Each demo is designed to highlight different features and capabilities of FABulous,
making it easier for users to understand how to use FABulous and show different features
of FABulous.

The demos are also used for testing FABulous.

## Project layout

| Directory | Description |
|-----------|-------------|
| `legacy/clean/` | Clean FABulous 1.3 projects for error-checking runs |
| `legacy/reference/` | FABulous 1.3 reference outputs for regression diffing (CSV/TXT only) |
| `legacy/sim/` | Full user-flow projects: fabric gen → synthesis → P&R → simulation |
| `2.0/ref/` | FABulous 2.0 reference outputs for regression diffing (compiled with beta 4) |

## Running tests locally

A `Makefile` is provided to run the reference tests against this repo without any manual setup.
It clones FABulous automatically on first use.

```bash
# Run all reference tests
make test

# Verbose output with a filter
make test ARGS="-v -k run_legacy_1.3_verilog_demo"

# Pull the latest FABulous before running
make update && make test

# Test against a specific branch (clones that branch into the cache)
make clean && make test FAB_BRANCH=my-feature-branch

# Use a local FABulous checkout (picks up your uncommitted changes)
make test FAB_REPO=~/path/to/FABulous

# Remove the cached FABulous clone
make clean
```

**How it works:**
- On first run, FABulous is shallow-cloned from GitHub into `.fab_test_cache/FABulous/`.
- `uv` creates a virtual environment and installs FABulous with all test dependencies automatically.
- `--projects-dir` is set to this repo, so tests always run against your local working tree.
- `FAB_BRANCH` selects the branch to clone; `make clean` is needed first to discard an existing cache.
- `FAB_REPO` overrides the cache entirely with a local checkout — useful when developing FABulous and this repo simultaneously.

## Contributing a demo

If you are contributing a demo, please make sure to add the following information:

- Make sure to add a demo directory with a specific name for the demo.
- If not already present, add a .env file for configuring the demo in the .FABulous folder
- Add the following information about the project in the `reference_projects_config.yaml` of this repo.

## Testing configuration (`reference_projects_config.yaml`)

Each project entry supports the following fields:

- `name`: Unique identifier for the project.
- `path`: Path to the project directory (relative to this repo root).
- `language`: `"verilog"` or `"vhdl"`.
- `test_mode`: `"run"` (error checking only) or `"diff"` (regression comparison).
- `description`: Brief description of the project.
- `expected_outputs` *(optional)*: List of files that must exist after the run.
- `include_patterns` *(optional, diff mode)*: Glob patterns for files to compare.
- `exclude_patterns` *(optional, diff mode)*: Glob patterns for files to exclude.
- `fab_commands` *(optional)*: FABulous commands to run. Defaults to `["load_fabric", "run_FABulous_fabric"]`.
- `pre_fab_commands` *(optional)*: List of shell command dicts to run before FABulous commands. Each dict has:
  - `cmd`: the shell command to execute
  - `cwd` *(optional)*: subdirectory relative to the project root
  - `required_tools` *(optional)*: list of tools that must be on PATH; the command is skipped if any are missing
- `post_fab_commands` *(optional)*: List of shell command dicts to run after FABulous commands (e.g. synthesis, P&R, simulation). Each dict has:
  - `cmd`: the shell command to execute
  - `cwd` *(optional)*: subdirectory relative to the project root
  - `required_tools` *(optional)*: list of tools that must be on PATH; the command is skipped if any are missing
- `cleanup_commands` *(optional)*: List of shell command dicts that always run last, even if earlier steps fail (via try/finally). Each dict has:
  - `cmd`: the shell command to execute
  - `cwd` *(optional)*: subdirectory relative to the project root
  - `required_tools` *(optional)*: list of tools that must be on PATH; the command is skipped if any are missing
- `skip_reason` *(optional)*: If set, the test is skipped with this message.
