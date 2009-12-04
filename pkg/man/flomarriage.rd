\name{flomarriage}
\alias{flomarriage}
\docType{data}
\title{Marriage ties between Florentine families (edgelist, n=16, undirected, unvalued, disconnected, isolates)}
\description{
    This is a data set of Padgett (1994), consisting of weddings among
     leading renaissance Florentine families.
}
\usage{data(flomarriage,package="ergm")}
\format{\pkg{network} (edgelist)}
\details{
    An \pkg{network} object (edgelist) containing the marriage links between 16
    Florentine families. See \code{?ergm::flomarriage} for further details.

    Network properties:
    number of nodes: 16,
    undirected, unvalued,
    number of edges: 20,
    number of components: 2,
    number of isolates: 1.
}
\source{The \pkg{ergm} package.}
\examples{
data(flomarriage,package="ergm")
}
\keyword{datasets}