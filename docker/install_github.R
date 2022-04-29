
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

# seuratdisk
devtools::install_github("mojaveazure/seurat-disk", 
                         #ref = "HEAD", # package hasn't been versioned on github and therefore cant call a specific release
                         dependencies = TRUE, 
                         upgrade = FALSE)

# seurat data
devtools::install_github("satijalab/seurat-data", 
                         #ref = "HEAD", # package hasn't been versioned on github and therefore cant call a specific release
                         dependencies = TRUE, 
                         upgrade = FALSE)

# SeuratWrappers
devtools::install_github("satijalab/seurat-wrappers", 
                         #ref = "HEAD", # package hasn't been versioned on github and therefore cant call a specific release
                         dependencies = TRUE, 
                         upgrade = FALSE)


# sctransform
devtools::install_github("satijalab/sctransform", 
                         ref = "v0.3.3", # seurat v4.1.0 require version >0.3.3
                         dependencies = TRUE, 
                         upgrade = FALSE)

# Seurat object
devtools::install_github("mojaveazure/seurat-object",
                         ref = "v4.0.4", # seurat v4.1.0 requires this version
                         dependencies = TRUE,
                         upgrade = FALSE)

# Seurat
devtools::install_github("satijalab/seurat", 
                         ref = "v4.1.0", # require version >4.0.5 for scCust to work
                         dependencies = TRUE, 
                         upgrade = FALSE)

# scCustomize
devtools::install_github("samuel-marsh/scCustomize", 
                         ref = "v0.7.0",
                         dependencies = TRUE, 
                         upgrade = FALSE)

# dynverse
devtools::install_github("dynverse/dyno", 
                         #ref = "HEAD", # package hasn't been versioned on github and therefore cant call a specific release
                         dependencies = TRUE, 
                         upgrade = FALSE)
