with_path_on_error <- function(.f, path_on_error = fs::path) {
  function(...)  {
    tryCatch(.f(...), error = function(e) path_on_error(...))
  }
}
