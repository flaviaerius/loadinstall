#' Load or install a package available at CRAN
#'
#' @param package
#' character vector with name of the package you need to load/install.
#'
#' @return The function loads the package if you already have it installed, or installs from CRAN if it is not installed yet.
#' It might ask for permission to update libraries when installing.
#' @export
#'
#' @examples
#' dynamic_require("usethis")
#'
#' x <- "wesanderson"
#' dynamic_require("wesanderson")
#'
dynamic_require <- function(package){
  if(!require(package, character.only = TRUE)){
    utils::install.packages(package, repos = "http://cran.us.r-project.org")
    require(package, character.only = TRUE)
  }
}
