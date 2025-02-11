#!/usr/bin/env bash

Rscript -e "renv::restore()"
Rscript "./scripts/run_analysis.R
