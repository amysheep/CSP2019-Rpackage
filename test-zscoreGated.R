context("Test Gated Score")
library(zscorehelperfun)

test_that("Correct gated values", {
  expect_equal(zscoreGated(df = data.frame(a = c(1,0,5,4,9)), "a")$gated, c(3,2,3,3,4))
})
