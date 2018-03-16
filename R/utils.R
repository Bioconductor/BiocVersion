.subtractVersion <- function(pkg_version, digit) {
    if (!is.package_version(pkg_version))
        stop("<internal> Provide a valid package version")
    as.numeric_version(paste(pkg_version$major,
        pkg_version$minor - digit, sep = "."))
}

.addVersion <- function(pkg_version, digit) {
    if (!is.package_version(pkg_version))
        stop("<internal> Provide a valid package version")
    as.numeric_version(paste(pkg_version$major,
        pkg_version$minor + digit, sep = "."))
}

.isDevel <- function(vers) {
    if (!is.package_version(vers))
        stop("<internal> Provide a valid package version class")
    as.logical(vers$minor %% 2)
}
