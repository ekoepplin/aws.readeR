# ----------------------------#
# https://usethis.r-lib.org/  #
# ----------------------------#
# intiniate project
devtools::load_all()
# Create NAMESPACE
devtools::document()
# Exclude from top level
devtools::use_build_ignore(c("maintain_Package.R"))
# Test package locally
devtools::check(document = FALSE)
# test one specific file
file_to_test <- system.file("tests/testthat", "test-sometest.R", package = "aws.connectoR")
testthat::test_file(file_to_test)
# Determine code coverage
cov <- covr::package_coverage()
report(cov)
print(cov,group = 'function')
# Rather than automatically fixing problems, a linter just warns you about them
lintr::lint_package()
