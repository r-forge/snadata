\name{schemske1978}
\alias{schemske1978}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=39, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(schemske1978,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::schemske1978} for further details.

    Network properties:
    number of nodes: 39 (7 plants and 32 visiors),
    undirected, valued,
    number of edges: 118,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{Schemske, D. W., M. F. Willson, M. N. Melampy, L. J. Miller, L.
     Verner, K. M. Schemske, and L. B. Best. 1978. Flowering Ecology of
     Some Spring Woodland Herbs. Ecology 59:351-366.
}
\examples{
data(schemske1978,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(schemske1978)
}
\keyword{datasets}