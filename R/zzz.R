.onLoad <- function(...) {
    .options$set("biocVersion", numeric_version("3.7"))
}

.options <- local({
    options <- list(
        biocVersion = numeric_version(c("3.6", "3.7"))
    )
    env <- new.env(parent = emptyenv())
    list(set = function(variable , value) {
    stopifnot(
        is.character(variable), length(variable) == 1L, !is.na(variable),
        is.numeric_version(value), length(value) == 1L, !is.na(value),
        variable %in% unlist(options, use.names = FALSE)
    )
    env[[variable]] <- value
    },
    get = function(variable) {
    stopifnot(variable %in% unlist(options, use.names = FALSE))
    env[[variable]]
    })
})

