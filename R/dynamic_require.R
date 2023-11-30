#' Load or install a package available at CRAN
#'
#' @param package Name of the package between quotes (character vector).
#'
#' @return Loading of the package or installing of it. It might ask for permission to update libraries when installing.
#' @export
#'
#' @examples
#' dynamic_require("usethis")
#'
#' x <- "wesanderson"
#' dynamic_require("wesanderson")
dynamic_require <- function(package){
  if(!eval(parse(text = paste("require(", package, ")")))) {
    utils::install.packages(package)
    eval(parse(text = paste("require(", package, ")")))
  }
}
