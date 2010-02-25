\name{.asplit}
\alias{.asplit}
\title{Used by \code{cran.net} for data preparation}
\description{
Used by \code{cran.net} for data preparation. Function is not intended to be called seperately.
}
\usage{.asplit(x)}
\arguments{
\item{x}{A character string containing a number of names.}
}
\value{
A vector of character strings with each element containing exactely one name (first and last name).
}
\details{
Splits a character string containing a number of names
by "and", "amd" (misspelling), "&", and ",".
}
\author{Kurt Hornik (\url{kurt.hornik@wu.ac.at}) and Angela Bohn (\url{angela.bohn@gmail.com})}