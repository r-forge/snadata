\name{mosquin1967}
\alias{mosquin1967}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants 
    (bipartite matrix, n=29, undirected, valued, disconnected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(mosquin1967,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::mosquin1967} for further details.

    Network properties:
    number of nodes: 29 (11 plants and 18 visiors),
    undirected, valued,
    number of edges: 224,
    number of components: 3,
    number of isolates: 0.
}
\source{The \pkg{bipartite} package.}
\references{Mosquin, T., and J. E. H. Martin. 1967. Observations on the
     pollination biology of plants on Melville Island, N.W.T., Canada.
     Canadian Field Naturalist 81:201-205.
}
\examples{
data(mosquin1967,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(mosquin1967)
}
\keyword{datasets}