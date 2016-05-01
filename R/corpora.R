
## ---------------------------------------------------------------------
#' Load a data set from the corpora package
#'
#' corpora is a collection of small corpora of interesting data
#' for the creation of bots and similar stuff.
#'
#' This project is a collection of static corpora (plural of "corpus") that
#' are potentially useful in the creation of weird internet stuff. I've
#' found that, as a creator, sometimes I am making something that needs
#' access to a lot of adjectives, but not necessarily every adjective in
#' the English language. So for the last year I've been copy/pasting an
#' adjs.json file from project to project. This is kind of awful, so I'm
#' hoping that this project will at least help me keep everything in one
#' place. 
#' 
#' I would like this to help with rapid prototyping of projects. For
#' example: you might use nouns.json to start with, just to see if an idea
#' you had was any good. Once you've built the project quickly around the
#' nouns collection, you can then rip it out and replace it with a more
#' complex or exhaustive data source. 
#' 
#' I'm also hoping that this can be used as a teaching tool: maybe someone
#' has three hours to teach how to make Twitter bots. That doesn't give the
#' student much time to find/scrape/clean/parse interesting data. My hope
#' is that students can be pointed to this project and they can pick and
#' choose different interesting data sources to meld together for the
#' creation of prototypes.
#'
#' See https://github.com/dariusk/corpora
#' 
#' @section Data set categories:
#' \Sexpr[results=rd]{rcorpora:::corpora_manual_1()}
#'
#' @section Data sets:
#' \Sexpr[results=rd]{rcorpora:::corpora_manual_2()}
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
#' @examples
#' corpora()
#' corpora(category = "animals")
#' corpora("foods/pizzaToppings")

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
    fromJSON(readLines(filename, warn = FALSE))
  }
}


#' List data set categories in the corpora package
#'
#' @return Character vector of category names.
#' @export

categories <- function() {
  setdiff(
    list.dirs(my_data_dir(), full.names = FALSE),
    ""
  )
}


## Internal functions --------------------------------------------------

#' @importFrom utils packageName

my_data_dir <- function() {
  data_dir <- file.path("corpora", "data")
  system.file(data_dir, package = packageName())
}


corpora_manual_1 <- function() {
  paste(
    "\\itemize{",
    paste("\\item", categories(), collapse = "\n"),
    "}"
  )
}

corpora_manual_2 <- function() {

  ds <- corpora()
  desc_raw <- sapply(ds, function(x) {
    d <- corpora(x)
    desc <- if ("description" %in% names(d)) d[["description"]] else ""
    src <- if ("source" %in% names(d)) paste("Source:", d[["source"]]) else ""
    paste(desc, src, sep = "\n")
  })


  paste(
    "\\describe{",
    paste("\\item{", ds, "}{", desc_raw, "}", collapse = "\n"),
    "}"
  )
}
