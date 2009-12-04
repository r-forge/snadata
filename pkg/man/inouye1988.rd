\name{inouye1988}
\alias{inouye1988}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=124, undirected, valued, disconnected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
}
\usage{data(inouye1988,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::inouye1988} for further details.

    Network properties:
    number of nodes: 124 (41 plants and 83 visiors),
    undirected, valued,
    number of edges: 268,
    number of components: 3,
    number of isolates: 0.
}
\source{The \pkg{bipartite} package.}
\references{Inouye, D.W. and G.H. Pyke (1988) Pollination biology in the Snowy
     Mountains of Australia: Comparisons with montane Colorado, USA.
     Australian Journal of Ecology, 13:191-210.
}
\examples{
data(inouye1988,package="bipartite")
}
\keyword{datasets}