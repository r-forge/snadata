\name{karate}
\alias{karate}
\docType{data}
\title{A friendship network between members of a karate club (igraph, n=34, undirected, unvalued, connected)}
\description{
    A network containing the network of friendships between members of a karate club.
}
\usage{data(adjnoun)}
\format{\pkg{igraph}}
\details{
    An \pkg{igraph} object containing the network of friendships between the 34
    members of a karate club at a US university, as described by Wayne Zachary
    in 1977.
    
    Network properties:
    number of nodes: 34,
    undirected, unvalued,
    number of edges: 156,
    number of components: 1.
}
\references{
    W. W. Zachary. An
    information flow model for conflict and fission in small groups. 1977. Journal of
    Anthropological Research 33, 452-473.
}
\source{
    \url{http://www-personal.umich.edu/~mejn/netdata/}
}
\examples{
data(karate)
}
\keyword{datasets}