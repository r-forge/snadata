\name{motten1982}
\alias{motten1982}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=57, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(motten1982,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::motten1982} for further details.

    Network properties:
    number of nodes: 57 (13 plants and 44 visiors),
    undirected, valued,
    number of edges: 286,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{Motten, A. F. 1982. Pollination Ecology of the Spring Wildflower
     Community in the Deciduous Forests of Piedmont North Carolina.
     Doctoral Dissertation thesis, Duke University, Duhram, North Car
     Motten, A. F. 1986. Pollination ecology of the spring wildflower
     community of a temperate deciduous forest. Ecological Monographs
     56:21-42.
}
\examples{
data(motten1982,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(motten1982)
}
\keyword{datasets}