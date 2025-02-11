# add R code to run analysis
# path to data given by Sys.getenv("PATH_RAW_DATA")
# path to store the results, could be a temporary folder that can be downloaded via a link by Sys.getenv("PATH_RESULT_FOLDER")
gate_satvi_tasa(fcs_location = PATH_RAW_DATA ,results_location = PATH_RESULT_FOLDER)
