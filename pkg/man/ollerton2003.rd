\name{ollerton2003}
\alias{ollerton2003}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants 
    (bipartite matrix, n=65, undirected, valued, connected)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
}
\usage{data(ollerton2003,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::ollerton2003} for further details.

    Network properties:
    number of nodes: 65 (9 plants and 56 visiors),
    undirected, valued,
    number of edges: 103,
    number of components: 1.
}
\source{The \pkg{bipartite} package.}
\references{ Ollerton, J., S.D. Johnson, L. Cranmer and S. Kellie (2003) The
     pollination ecology of an assemblage of grassland asclepiads in
     South Africa. Annals of Botany, 92:807-834.
}
\examples{
data(ollerton2003,package="bipartite")
}
\keyword{datasets}