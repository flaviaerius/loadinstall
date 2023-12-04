test_that("input is correct - quotes", {
  expect_error(github_dynamic_require(ggpubr, kassambara/ggpubr))
})

test_that("input is correct - missing parameter", {
  expect_error(github_dynamic_require("ggpubr"))
})
