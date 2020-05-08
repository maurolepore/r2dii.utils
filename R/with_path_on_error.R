#' Modify a function to return an alternative path on error
#'
#' @param .f A function able to create paths form `...`.
#' @param path_on_error A function able to create paths form `...`.
#'
#' @return Wrapped functions create paths with `path_on_error` whenever
#'   an error occurs.
#'
#' @export
#'
#' @examples
with_path_on_error <- function(.f, path_on_error = fs::path) {
  function(...)  {
    tryCatch(.f(...), error = function(e) path_on_error(...))
  }
}
