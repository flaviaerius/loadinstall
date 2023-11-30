github_dynamic_require <- function(package, repository) {
  if(!require("remotes", quietly = TRUE))
    install.packages("remotes")
  if(!eval(parse(text = paste("require(", package, ")")))) {
    remotes::install_github(repository)
    eval(parse(text = paste("require(", package, ")")))
  }
}
