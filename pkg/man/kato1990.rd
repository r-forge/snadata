\name{kato1990}
\alias{kato1990}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=772, undirected, valued, disconnected, isolates)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(kato1990,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::kato1990} for further details.

    Network properties:
    number of nodes: 772 (93 plants and 679 visiors),
    undirected, valued,
    number of edges: 2412,
    number of components: 5,
    number of isolates: 4.
}
\source{The \pkg{bipartite} package.}
\references{Kato, M., T. Makutani, T. Inoue, and T. Itino. 1990. Insect-flower
     relationship in the primary beech forest of Ashu, Kyoto: An overview of the flowering phenology and the seasonal pattern
     of insect visits. Contrib. Biol. Lab.., Kyoto Univ. 27, 377463.
}
\examples{
data(kato1990,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(kato1990)
}
\keyword{datasets}