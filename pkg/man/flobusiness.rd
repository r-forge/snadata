\name{flobusiness}
\alias{flobusiness}
\docType{data}
\title{Business ties between Florentine families (edgelist, n=16, undirected, unvalued, disconnected, isolates)}
\description{
     A \pkg{network} object (edgelist) of business ties among Renaissance Florentine families.
}
\usage{data(florentine,package="network")}
\format{\pkg{network} (edgelist)}
\details{
    An \pkg{network} object (edgelist) containing the business links between 16
    Florentine families. See \code{?ergm::flobusiness} for further details.

    Network properties:
    number of nodes: 16,
    undirected, unvalued,
    number of edges: 15,
    number of components: 6,
    number of isolates: 5.
}
\source{The \pkg{ergm} package.}
\references{ Wasserman, S. and Faust, K. (1994) _Social Network Analysis:
     Methods and Applications_, Cambridge University Press, Cambridge,
     England.

     Breiger R. and Pattison P. (1986). _Cumulated social roles: The
     duality of persons and their algebras_, Social Networks, 8,
     215-256.
}
\examples{
data(florentine,package="ergm")
}
\keyword{datasets}