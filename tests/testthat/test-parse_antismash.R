test_that("parsing regions work", {
  json <- antismash_directory <- system.file(
    "antismash_example_directory/antismash.json",package =  "RauENVS"
  )
  get_antismash_features(json) |>
    get_antismash_regions() |>
    testthat::expect_snapshot()
})


test_that("parsing modules work", {
  json <- antismash_directory <- system.file(
    "antismash_example_directory/antismash.json",package =  "RauENVS"
  )
  get_antismash_features(json) |>
    get_antismash_modules() |>
    testthat::expect_snapshot()
})
