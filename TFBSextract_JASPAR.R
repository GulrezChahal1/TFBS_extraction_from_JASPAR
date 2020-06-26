if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("TFBSTools")
browseVignettes("TFBSTools")
library(TFBSTools)
library(JASPAR2014)
BiocManager::install("JASPAR2016")
library(JASPAR2016)
opts <- list()
opts[["species"]] <- 9606
opts[["name"]] <- "RUNX1"
opts[["type"]] <- "SELEX"
opts[["all_versions"]] <- TRUE
PFMatrixList <- getMatrixSet(JASPAR2016, opts)
PFMatrixList
