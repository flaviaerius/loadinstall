
<!-- README.md is generated from README.Rmd. Please edit that file -->

# :package: loadinstall :package:

<!-- badges: start -->
<!-- badges: end -->

**{loadinstall}** is a package for *loading* or *installing* a package
in R.

It works very simply: if you already have the package installed, it will
just load it; if not, it will both install and load the package.

No more needing to know which package is present or not in the
environment you are working on!

Sharing your Rmarkdown or Wuarto documents will be easier by using the
dynamic_require() set of functions.

## Installation

You can install the development version of **{loadinstall}** from
[GitHub](https://github.com/flaviaerius/loadinstall) with:

``` r
# install.packages("devtools")
devtools::install_github("flaviaerius/loadinstall")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(loadinstall)
## basic example code
dynamic_require("dplyr")
#> Loading required package: dplyr
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

## github install
github_dynamic_require("ggpubr", "kassambara/ggpubr")
#> Loading required package: ggpubr
#> Loading required package: ggplot2

## bioconductor install
bioc_dynamic_require("edgeR")
#> Bioconductor version '3.17' is out-of-date; the current release version '3.18'
#>   is available with R version '4.3'; see https://bioconductor.org/install
#> Loading required package: edgeR
#> Loading required package: limma
```

## Obs.:

Since **{loadinstall}** per se is a package that needs to be installed,
a workaround is to include the following block of code in the beggining
of your R script or an initial chunk in Quarto or Rmarkdown to install
or load the package:

``` r
if(!require("loadinstall")) {
  if(!require("remotes", quietly = TRUE)) {
    utils::install.packages("remotes", repos = "http://cran.us.r-project.org")
  }
  remotes::install_github("flaviaerius/loadinstall")
  require("loadinstall")
}
```
