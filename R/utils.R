.onLoad <- function (...) {
    .options$set("BioC_Version", "devel")
}

.options <- local({
    options <- list(
        versions = "BioC_Version"
    )
    env <- new.env(parent=emptyenv())

    list(set = function(variable, value) {
        stopifnot(
            is.character(variable), length(variable) == 1L, !is.na(variable),
            is.character(value), length(value) == 1L, !is.na(value),
            variable %in% unlist(options, use.names = FALSE)
        )
        env[[variable]] <- value

        }, get = function(variable) {
        stopifnot(variable %in% unlist(options, use.names = FALSE))
        env[[variable]]
    })
})
