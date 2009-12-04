\name{elberling1999}
\alias{elberling1999}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=141, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode(elberling1999)}.
}
\usage{data(elberling1999,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::elberling1999} for further details.

    Network properties:
    number of nodes: 141 (12 plants and 118 visiors),
    undirected, valued,
    number of edges: 476,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{Elberling H. and Olesen J.M. (1999) The structure of a high
     latitude plant-flower visitor system: The dominance of flies.
     Ecography, 22, 314-323}
\examples{
data(elberling1999,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(elberling1999)
}
\keyword{datasets}