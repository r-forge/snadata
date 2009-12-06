\name{Takapoto}
\alias{Takapoto}
\docType{data}
\title{A foodweb network (bipartite matrix, n=18, directed, valued, disconnected)}
\description{
    A bipartite (2-mode) foodweb network.
    The bipartite network can be transformed to a 1-mode adjacency matrix using \code{bipartite::as.one.mode()}.
}
\usage{data(Takapoto,package="NetIndices")}
\format{Bipartite adjacency matrix}
\details{
  See \code{?NetIndices::Takapoto} for further details.

    Network properties:
    number of nodes: 18,
    directed, valued,
    number of edges: 28,
    number of components: 2,
    number of isolates: 0.
}
\source{The \pkg{NetIndices} package.}
\references{
     Niquil, N., Jackson, G.A., Legendre, L., Delesalle, B., 1998.
     Inverse model analysis of the planktonic food web of Takapoto
     Atoll (French Polynesia). Marine Ecology Progress Series 165,
     17..29.
}
\examples{
data(Takapoto,package="NetIndices")
adjmatrix <- as.one.mode(Takapoto)
}
\keyword{datasets}