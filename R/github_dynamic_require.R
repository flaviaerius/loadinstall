#' Load or install a package available at github
#'
#' @param package Name of the package between quotes (character vector).
#' @param repository Repository address in the format "user/package", between quotes (character vector)
#'
#' @return Loading of the package or installing of it. It might ask for permission to update libraries when installing.
#' @export
#'
#' @examples
#'
#'github_dynamic_require("ggpubr", "kassambara/ggpubr")
#'
github_dynamic_require <- function(package, repository) {
  if(!requireNamespace("remotes", quietly = TRUE))
    utils::install.packages("remotes")
  if(!eval(parse(text = paste("requireNamespace(", package, ")")))) {
    remotes::install_github(repository)
    eval(parse(text = paste("requireNamespace(", package, ")")))
  }
}
