\name{cran}
\alias{cran}
\title{Creates a network of CRAN developers}
\description{
Creates a network of CRAN developers (\url{http://cran.r-project.org/web/packages/}).
Two developers are connected if they wrote a CRAN package together.
An Internet connection is required as the data will be downloaded from the R web site.
}
\usage{cran.net(correct=TRUE)}
\format{Adjacency matrix.}
\arguments{
\item{correct}{logical. If \code{TRUE} an alias detection procedure will be performed
based on \code{findclusters} and \code{changenames} of the R-Forge \pkgs{snatm} package,
and the \code{take.memory.cran} data set. This way, authors who wrote several packages
under slightly different names (e.g. with/without middle names, titles etc.) are matched.}
}
\details{
Downloads the package information from \url(http://cran.r-project.org/web/packages/packages.rds}
(Internet connection is required) and performs some data preparation procedures including
\code{clean1}, \code{clean2}, and \code{.asplit}. 
Please report data preparation errors to \url{angela.bohn@gmail.com}.
Only developers appearing in the
"Author" field are considered (the "Maintainer" field is ignored). All developers
who appeared in the "Author" field of a specific package are connected by an edge.
The edge weight corresponds to the number of packages the two authors wrote together.
Packages that were created by a single author will cause a loop.

Network properties (if \code{corrected=TRUE}):
    Number of nodes: 2491 (on February 25th, 2010),
    undirected, valued,
    Number of components: 812 (on February 25th, 2010),
    Loops.
}
\value{
A matrix of dimension n x n where n is the number of developers. The matrix
elements tell in how many packages the corresponding developers collaborated.
}
\source{
    \url{http://cran.r-project.org/web/packages/},
    \url(http://cran.r-project.org/web/packages/packages.rds}
}
\examples{
cran()
}
\author{Angela Bohn (\url{angela.bohn@gmail.com})}
\keyword{datasets}