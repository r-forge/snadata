\name{flo}
\alias{flo}
\docType{data}
\title{The flo Data Set: Marriage Ties between Florentine families}
\description{
    This is a data set of Padgett (1994), consisting of weddings among
     leading Florentine families.  This data is stored in symmetric
     adjacency matrix form.
}
\usage{data(flo,package="network")}
\details{
    An adjacency matrix containing the marriage links between the 16
    florentine families. See \code{?network::flo} for further details.

    Network properties:
    Number of nodes: 16,
    undirected, unvalued,
    Number of edges: 20,
    Number of components: 2.
}
\source{The \pkg{network} package.}
\examples{
data(flo,package="network")
}
\keyword{datasets}