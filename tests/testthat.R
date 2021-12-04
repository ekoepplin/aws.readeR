Sys.setenv("R_TESTS" = "")

library(testthat)
library(aws.readeR)

test_check("aws.readeR")
