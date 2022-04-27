
# Install Github packages

library(devtools)


# UCell
devtools::install_github("carmonalab/UCell", 
                         ref = "v1.3",
                         dependencies = TRUE, 
                         upgrade = FALSE)

# Scillus
devtools::install_github("xmc811/Scillus", 
                         ref = "v0.5.0",
                         dependencies = TRUE, 
                         upgrade = FALSE)

# scPred
devtools::install_github("powellgenomicslab/scPred", 
                         ref = "v1.9.2",
                         dependencies = TRUE, 
                         upgrade = FALSE)

# SeuratWrappers
devtools::install_github("satijalab/seurat-wrappers", 
                         #ref = "development", # seurat wrappers hasn't been versioned on github and therefore cant call a specific release
                         dependencies = FALSE, 
                         upgrade = FALSE)

# dynverse
devtools::install_github("dynverse/dyno", 
                         #ref = "HEAD", # dyno hasn't been versioned on github and therefore cant call a specific release
                         dependencies = TRUE, 
                         upgrade = FALSE)


# packages Not sure that are needed

#library("magrittr")
#library("doParallel")

# Cytotrace
# Download source file from - https://cytotrace.stanford.edu/
#devtools::install_local("PATH/TO/DIRECTORY/CytoTRACE_0.3.3.tar.gz")

# celltalker
#devtools::install_github("arc85/celltalker")

# iTalk
#devtools::install_github("Coolgenome/iTALK", build_vignettes = TRUE)

# Velocity 
#devtools::install_github("velocyto-team/velocyto.R")

# Monocle
#devtools::install_github('cole-trapnell-lab/leidenbase')
#devtools::install_github('cole-trapnell-lab/monocle3')
#devtools::install_github("chuiqin/irGSEA@fd75089d955efe2fa7bae7f064fa2fff2a1897e7",dependencies = F,upgrade = F)


