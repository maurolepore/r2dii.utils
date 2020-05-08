#' Does this computer have a local copy of 2dii's dropbox folder?
#'
#' @family miscellaneous utility functions
#'
#' @return Logical.
#'
#' @export
#' @examples
#' dropbox_2dii_exists()
#'
#' # The name of this function is bad because it promises to be more general
#' # than what it actually is. Don't use it.
#' dropbox_exists()
dropbox_2dii_exists <- function() {
  fs::dir_exists(path_dropbox_2dii())
}

#' @export
#' @rdname dropbox_2dii_exists
dropbox_exists <- function() {
  .Deprecated("dropbox_2dii_exists")
  dropbox_2dii_exists()
}
