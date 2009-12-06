\name{memmott1999}
\alias{memmott1999}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants 
    (bipartite matrix, n=104, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(memmott1999,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::barrett1987} for further details.

    Network properties:
    number of nodes: 104 (25 plants and 79 visiors),
    undirected, valued,
    number of edges: 598,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{Memmott, J. 1999. The structure of a plant-pollinator food web.
     Ecology Letters 2:276-280.
}
\examples{
data(memmott1999,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(memmott1999)
}
\keyword{datasets}