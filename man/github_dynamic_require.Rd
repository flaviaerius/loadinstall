% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/github_dynamic_require.R
\name{github_dynamic_require}
\alias{github_dynamic_require}
\title{Load or install a package available at github}
\usage{
github_dynamic_require(package, repository)
}
\arguments{
\item{package}{character vector with name of the package you need to load/install.}

\item{repository}{character vector with github repository address in the format "user/package".}
}
\value{
The function loads the package if you already have it installed, or installs from github if it is not installed yet.
It might ask for permission to update libraries when installing.
}
\description{
Load or install a package available at github
}
\examples{

github_dynamic_require("ggpubr", "kassambara/ggpubr")

}
