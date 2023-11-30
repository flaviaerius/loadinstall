#' Load or install a package available at Biocinductor
#'
#' @param package Name of the package between quotes (character vector).
#'
#' @return Loading of the package or installing of it. It might ask for permission to update libraries when installing.
#' @export
#'
#' @examples
#'
#' bioc_dynamic_require("edgeR")
bioc_dynamic_require <- function(package) {
  if(!requireNamespace("BiocManager", quietly = TRUE))
    utils::install.packages("BiocManager")
  if(!eval(parse(text = paste("requireNamespace(", package, ")")))) {
    BiocManager::install(package)
    eval(parse(text = paste("requireNamespace(", package, ")")))
  }
}
