
<!-- README.md is generated from README.Rmd. Please edit that file -->

# loadinstall

<!-- badges: start -->
<!-- badges: end -->

The goal of loadinstall is to either load a package if you already have
it installed, or install it if you need.

## Installation

You can install the development version of loadinstall from
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
#> Loading required namespace: dplyr

## github install
github_dynamic_require("ggpubr", "kassambara/ggpubr")
#> Loading required package: ggpubr
#> Loading required package: ggplot2

## bioconductor install
bioc_dynamic_require("edgeR")
#> Loading required package: edgeR
#> Loading required package: limma
```
