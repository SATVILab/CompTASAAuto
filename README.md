# README


The purpose of this compendium is to
`[briefly describe the compendium's goals and objectives]`

## Contact

For more information, please contact:
- `[Name]`, `[Email Address]`
- `[Name]`, `[Email Address]`

## Links

- `[URLs to data sources (e.g. OneDrive), GitHub repos, publications, etc.]`

## Details

### How to run within a container in a Linux environment automatically

## Details

### How to run a project "automatically" in a container on a "fresh" Linux system using `apptainer`

<!--
- Ensure that `"$HOME"/dotfiles/install-hpc.sh` has been run:
  - Will need to mimick these settings
!-->
- Store raw data in a folder whose path is specified in `~/.Renviron` as `PATH_RAW_DATA` (absolute path).
  - Note: not for us.
- Clone analysis repo:
  - Run `git clone https://github.com/SATVILab/CompTASAAuto`.
  - Run `cd CompTASAAuto`
- Get `apptainer` image from GitHub Container Registry:
  - Run `mkdir -p /scratch/$USER/.cache/apptainer`
  - Run `apptainer build --force /scratch/$USER/.cache/apptainer/comptasaauto.sif docker://ghcr.io/SATVILab/CompTASAAuto:latest`
- Run analysis:
  - `apptainer exec /scratch/$USER/.cache/apptainer/comptasaauto.sif ./scripts/run_analysis.sh`

Or, alternatively, run `scripts/run_setup_and_analysis.sh`.
