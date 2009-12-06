\name{small1976}
\alias{small1976}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants 
    (bipartite matrix, n=47, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(small1976,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::small1976} for further details.

    Network properties:
    number of nodes: 47 (13 plants and 34 visiors),
    undirected, valued,
    number of edges: 282,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{Small, E. 1976. Insect pollinators of the Mer Bleue peat bog of
     Ottawa. Canadian Field Naturalist 90:22-28.
}
\examples{
data(small1976,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(small1976)
}
\keyword{datasets}