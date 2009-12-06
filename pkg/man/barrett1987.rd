\name{barrett1987}
\alias{barrett1987}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants 
    (bipartite matrix, n=114, undirected, valued, disconnected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(barrett1987,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::barrett1987} for further details.

    Network properties:
    number of nodes: 114 (9 plants and 105 visiors),
    undirected, valued,
    number of edges: 224,
    number of components: 2,
    number of isolates: 0.
}
\source{The \pkg{bipartite} package.}
\references{Barrett, S. C. H. and Helenurm, K. (1987) The Reproductive-Biology
     Of Boreal Forest Herbs. 1. Breeding Systems And Pollination.
     Canadian Journal Of Botany-Revue Canadienne De Botanique, 65:2036-2046.
}
\examples{
data(barrett1987,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(barrett1987)
}
\keyword{datasets}