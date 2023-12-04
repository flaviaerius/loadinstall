test_that("input is correct", {
  expect_error(bioc_dynamic_require(edgeR))
})

test_that("package is from bioconductor", {
  expect_error(bioc_dynamic_require(tidyr))
})
