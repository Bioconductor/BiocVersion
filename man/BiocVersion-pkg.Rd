\docType{package}
\name{BiocVersion-pkg}
\alias{BiocVersion}
\title{Determine Bioconductor version in use}
\description{
  The 'major' and 'minor' version of this package determines the version
  of Bioconductor software packages to be installed by the
  \code{\link[BiocManager]{install}} function.
}

\examples{
packageVersion("BiocVersion")[,1:2]
}
