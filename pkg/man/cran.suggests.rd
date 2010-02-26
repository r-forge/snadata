\name{cran.suggests}
\alias{cran.suggests}
\title{Creates a network CRAN packages that suggest on each-other}
\description{
Creates a network of CRAN packages (\url{http://cran.r-project.org/web/packages/}).
A package sends an arc (rows) to another if it suggeststhis other package.
An Internet connection is required as the data will be downloaded from the R web site.
}
\usage{cran.suggests()}
\format{Adjacency matrix.}
\details{
Downloads the package information from \url(http://cran.r-project.org/web/packages/packages.rds}
(Internet connection is required).
A package A sends an arc (rows) to another package B if B is listet in the "Suggests" field of A's package description.
Packages that do not suggest any other package cause loops.
The rows represent packages that suggest other packages.
The columns represent packages that are suggested by other packages.

Network properties (if \code{corrected=TRUE}):
    Number of nodes: 1481 (on February 26th, 2010),
    directed, unvalued,
    Number of components: 2240 weak, 2263 strong (on February 26th, 2010),
    Loops. Isolates.
}
\value{
A matrix of dimension n x n where n is the number of packages.
}
\source{
    \url{http://cran.r-project.org/web/packages/},
    \url(http://cran.r-project.org/web/packages/packages.rds}
}
\examples{
cran.suggests()
}
\author{Angela Bohn (\url{angela.bohn@gmail.com})}
\keyword{datasets}