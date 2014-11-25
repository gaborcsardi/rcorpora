
## ---------------------------------------------------------------------

#' Load a data set from the corpora package
#'
#' @param which The data set to load, a string. If not given, then
#'   all data sets in the package are listed.
#' @param category If given, \code{which} must be missing,
#'   and the data sets in the given category are listed.
#' @return A data frame containing the data set (if \code{which} is
#'   given), or a character vector of data set names.
#'
#' @export
#' @importFrom jsonlite fromJSON

corpora <- function(which, category) {

  stopifnot(missing(which) || missing(category))

  if (missing(which) && missing(category)) {
    files <- dir(my_data_dir(), recursive = TRUE, pattern = "\\.json$")
    sub("\\.json$", "", files)

  } else if (! missing(category)) {
    stopifnot(category %in% categories())
    sub("\\.json$", "",
        dir(file.path(my_data_dir(), category), pattern = "\\.json$"))

  } else {
    filename <- paste0(file.path(my_data_dir(), which), ".json")
    if (!file.exists(filename)) stop("Corpus does not exist: ", which)
    fromJSON(readLines(filename))
  }
}


#' List data set categories in the corpora package
#'
#' @return Character vector of category names.
#' @export

categories <- function() {
  dir(my_data_dir())
}


## Internal functions --------------------------------------------------

my_data_dir <- function() {
  data_dir <- file.path("corpora", "data")
  system.file(data_dir, package = packageName())
}
