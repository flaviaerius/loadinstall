#' Load or install a package available at Biocinductor
#'
#' @param package
#' character vector with name of the package you need to load/install.
#'
#' @return
#' The function loads the package if you already have it installed, or installs from bioconductor if it is not installed yet.
#' It might ask for permission to update libraries when installing.
#' @export
#'
#' @examples
#'
#' bioc_dynamic_require("edgeR")
#'
bioc_dynamic_require <- function(package) {
  if(!require("BiocManager", quietly = TRUE))
    remotes::install_github("Bioconductor/BiocManager")
  if(!require(package, character.only = TRUE)) {
    BiocManager::install(package)
    require(package, character.only = TRUE)
  }
}
