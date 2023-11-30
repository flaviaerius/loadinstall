bioc_dynamic_require <- function(package) {
  if(!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
  if(!eval(parse(text = paste("require(", package, ")")))) {
    BiocManager::install(package)
    eval(parse(text = paste("require(", package, ")")))
  }
}
