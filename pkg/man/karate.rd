\name{karate}
\alias{karate}
\docType{data}
\title{The karate Data Set}
\description{
    A network containing the network of friendships between members of a karate club.
}
\usage{data(adjnoun)}
\details{
    An \pkg{igraph} object containing the network of friendships between the 34
    members of a karate club at a US university, as described by Wayne Zachary
    in 1977.\\\\
    
    Network properties:\\
    Number of nodes: 34\\
    undirected, unvalued\\
    Number of edges: 156\\
    Number of components: 1
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
list.vertex.attributes(karate)
# to analyse with \pkg{sna}:
get.adjacency(karate)
}
\keyword{datasets}