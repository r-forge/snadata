\name{clean2}
\alias{clean2}
\title{Used by \code{cran.net} for data preparation}
\description{
Used by \code{cran.net} for data preparation. Function is not intended to be called seperately.
}
\usage{clean2(x,pattern,replacement)}
\arguments{
\item{x}{A vector of author names to be cleaned.}
\item{pattern}{A vector of elements that should be replaced by the corresponding list elements in \code{replacement}.
Example: The nth element of pattern should be replaced by the nth element of replacement.}
\item{replacement}{A list of replacement vectors.}
}
\value{
A cleaned vector.
}
\author{Angela Bohn (\url{angela.bohn@gmail.com})}