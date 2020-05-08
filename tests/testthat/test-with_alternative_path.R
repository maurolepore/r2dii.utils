test_that("on error defaults to fs::path()", {
  skip_if(dropbox_exists())
  make_path <- with_path_on_error(find_dropbox_2dii)
  expect_equal(make_path("a", "path"), fs::path("a", "path"))
})

test_that("on error uses alternative path_on_error", {
  skip_if(dropbox_exists())
  make_path <- with_path_on_error(find_dropbox_2dii, path_on_error = paste)
  expect_equal(make_path("a", "path"), "a path")
})


test_that("on success uses primary path", {
  out <- with_path_on_error(path_dropbox_2dii)("a", "path")
  expect_equal(out, path_dropbox_2dii("a", "path"))
})
