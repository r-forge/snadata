\name{olesen2002flores}
\alias{olesen2002flores}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=22, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(olesen2002flores,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::olesen2002flores} for further details.

    Network properties:
    number of nodes: 22 (10 plants and 12 visiors),
    undirected, valued,
    number of edges: 60,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{Olesen, J. M., L. I. Eskildsen, and S. Venkatasamy. 2002. Invasion
     of pollination networks on oceanic islands: Importance of invader
     complexes and endemic super generalists. Divers Distrib 8:181–192.
}
\examples{
data(olesen2002flores,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(olesen2002flores)
}
\keyword{datasets}