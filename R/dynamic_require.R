dynamic_require <- function(package){
  if(!eval(parse(text = paste("require(", package, ")")))) {
    install.packages(package)
    eval(parse(text = paste("require(", package, ")")))
  }
}
