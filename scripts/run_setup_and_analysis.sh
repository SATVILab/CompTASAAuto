#!/usr/bin/env bash

# Ensure git is installed
command -v git >/dev/null 2>&1 || { echo "git is not installed. Exiting."; exit 1; }

# Clone the repository
git clone https://github.com/SATVILab/CompTASAAuto || { echo "Failed to clone repository. Exiting."; exit 1; }
cd CompTASAAuto || { echo "Failed to change directory. Exiting."; exit 1; }

# Ensure Apptainer is installed
command -v apptainer >/dev/null 2>&1 || { echo "apptainer is not installed. Exiting."; exit 1; }

# Get `apptainer` image from GitHub Container Registry:
path_sif="/scratch/$USER/.cache/apptainer/comptasaauto.sif"
mkdir -p "$(dirname "$path_sif")"

image_uri="docker://ghcr.io/SATVILab/CompTASAAuto:latest"
apptainer build --force "$path_sif" "$image_uri" || { echo "Failed to build Apptainer image. Exiting."; exit 1; }

# Ensure run_analysis.sh exists and is executable
if [[ ! -x ./scripts/run_analysis.sh ]]; then
    echo "Error: ./scripts/run_analysis.sh not found or not executable."
    exit 1
fi

# Run analysis
apptainer exec "$path_sif" ./scripts/run_analysis.sh
