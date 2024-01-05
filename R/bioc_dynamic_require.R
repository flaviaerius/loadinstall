#' Load or install a package available at Bioconductor
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
  if(!requireNamespace("BiocManager", quietly = TRUE)) {
    if(!requireNamespace("remotes", quietly = TRUE)) {
      utils::install.packages("remotes", repos = "http://cran.us.r-project.org")
    }
    remotes::install_github("Bioconductor/BiocManager")
  }
  if(!requireNamespace(package, quietly = TRUE)) {
    BiocManager::install(package) }
    library(package, character.only = TRUE)
}
