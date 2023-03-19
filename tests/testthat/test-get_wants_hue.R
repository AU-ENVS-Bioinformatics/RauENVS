test_that("happy path", {
  expect_equal(length(get_wants_hue(1)), 1)
})

test_that("0-length", {
  expect_equal(length(get_wants_hue(0)), 0)
})
