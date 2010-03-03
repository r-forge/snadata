\name{cran.depends}
\alias{cran.depends}
\title{Creates a network CRAN packages that depend on each-other}
\description{
Creates a network of CRAN packages (\url{http://cran.r-project.org/web/packages/}).
A package sends an arc (rows) to another if it depends on this other package.
An Internet connection is required as the data will be downloaded from the R web site.
}
\usage{cran.depends()}
\format{Adjacency matrix.}
\details{
Downloads the package information from \url{http://cran.r-project.org/web/packages/packages.rds}
(Internet connection is required).
A package A sends an arc (rows) to another package B if B is listet in the "Depends" field of A's package description.
Packages that do not depend on any other package cause loops.
The rownames represent packages that depend on others.
The colnames represent packages which other packages depend on.

Network properties (if \code{corrected=TRUE}):
    Number of nodes: 2263 (on February 26th, 2010),
    directed, unvalued,
    Number of components: 650 weak, 2263 strong (on February 26th, 2010),
    Loops. Isolates.
}
\value{
A matrix of dimension n x n where n is the number of packages.
}
\source{
    \url{http://cran.r-project.org/web/packages/},
    \url{http://cran.r-project.org/web/packages/packages.rds}
}
\examples{
cran.depends()
}
\author{Angela Bohn (\url{angela.bohn@gmail.com})}
\keyword{datasets}