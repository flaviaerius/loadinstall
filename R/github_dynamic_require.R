#' Load or install a package available at github
#'
#' @param package
#' character vector with name of the package you need to load/install.
#' @param repository
#' character vector with github repository address in the format "user/package".
#'
#' @return
#' The function loads the package if you already have it installed, or installs from github if it is not installed yet.
#' It might ask for permission to update libraries when installing.
#' @export
#'
#' @examples
#'
#'github_dynamic_require("ggpubr", "kassambara/ggpubr")
#'
github_dynamic_require <- function(package, repository) {
  if(length(package) == 0 | length(repository) == 0)
    stop("Missing package or repository.")
  if(!requireNamespace("remotes", quietly = TRUE))
    utils::install.packages("remotes", repos = "http://cran.us.r-project.org")
  if(!requireNamespace(package, quietly = TRUE)) {
    remotes::install_github(repository) }
    library(package, character.only = TRUE)
}
