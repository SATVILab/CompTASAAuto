#!/usr/bin/env bash

Rscript -e "renv::restore()"
Rscript -e "scripts/run_analysis.R"
