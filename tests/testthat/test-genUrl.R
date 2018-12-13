context("genUrl function")

test_that("errors generated for bad input", {
    expect_error(genUrl(), "missing, with no default")
})
