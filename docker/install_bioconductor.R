library(devtools)

devtools::install_version("BiocManager", 
                          version = "1.30.16",
                          repos = "http://cran.us.r-project.org", 
                          upgrade = "never", 
                          force = FALSE)


BiocManager::install(version = '3.14', 
                     update = FALSE, 
                     ask = FALSE)

bioconductor.packages <- c("limma", "edgeR", "Nebulosa", "clusterProfiler", "org.Hs.eg.db", "enrichplot", "EnhancedVolcano", "clustifyr", "formattable", "circlize", "singleCellHaystack",
                           "ComplexHeatmap", "harmony", "remedy", "dplyr",  "rstudioapi","cowplot", "gplots", "ggplot2", "gridExtra", "styler", "stringr", 
                           "inlmisc", "RColorBrewer", "readxl", "devtools", "tidyverse", "hdf5r", "scales", "useful", "renv", "pROC", "ggfittext", "ggalluvial", "RVenn",
                           "fgsea", "biomaRt", "GSEABase", "pcaMethods", "org.Mm.eg.db", "SingleCellExperiment", "batchelor", "fs",
                           "DelayedArray", "DelayedMatrixStats", "SeuratObject", "Seurat", "scRepertoire", "BiocParallel", "usethis",
                           "SummarizedExperiment", "SingleR", "progeny", "RcisTarget", "patchwork", "AUCell", "doParallel", "gghalves", "singscore", "GSVA", "ggtree", "checkmate", "reactome.db",
                           "graphite", "ReactomePA", "ggsci", "RobustRankAggreg", "future", "future.apply", "reticulate", "ggbeeswarm", "MLmetrics", "caret", "kernlab", "pbapply",
                           "lubridate", "ggrepel", "ggthemes", "viridis", "pals", "paletteer", "rmarkdown", "data.table", "survival",
                           "doMC", "doRNG", "DT", "visNetwork", "readr", "pheatmap", "tibble", "janitor", "igraph", "ggnewscale", "anndata", "msigdbr", "distill", "R.utils")

bioconductor.packages <- unique(bioconductor.packages)

BiocManager::install(bioconductor.packages, 
                     ask = FALSE, 
                     update = FALSE,
                     version="3.14")


# Packages that failed to load on build include 
# Seurat, Nebulosa, clusterProfiler, enrichplot, EnhancedVolcano, batchelor, reactome.db, ReactomePA, hdf5r, inlmisc
# Error s with igraph loading 

# error is 
#Error: package or namespace load failed for ‘igraph’ in dyn.load(file, DLLpath = DLLpath, ...):
#  unable to load shared object '/usr/local/lib/R/site-library/igraph/libs/igraph.so':
#  libglpk.so.40: cannot open shared object file: No such file or directory
