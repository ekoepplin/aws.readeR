Sys.setenv("R_TESTS" = "")

library(testthat)
library(aws.connectoR)

test_check("aws.connectoR")
