\name{davis}
\alias{davis}
\docType{data}
\title{Links of informal interaction between 18 women of different social classes (edgelist, n=32, undirected, unvalued, connected))}
\description{
    Links of informal interaction between 18 women of different social classes.)
}
\usage{data(davis,package="tnet")}
\format{\pkg{network} (edgelist)}
\details{
    An \pkg{network} object (edgelist) containing the marriage links between 16
    Florentine families. See \code{?tnet::davis} for further details.

    Network properties:
    number of nodes: 32,
    undirected, unvalued,
    number of edges: 89,
    number of components: 1.
}
\source{The \pkg{tnet} package.}
\references{Davis, A., Gardner, B. B., Gardner, M. R., 1941. Deep South. University of Chicago Press, Chicago, IL.}
\examples{
data(davis,package="tnet")
}
\keyword{datasets}