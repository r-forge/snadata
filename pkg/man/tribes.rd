\name{tribes}
\alias{tribes}
\docType{data}
\title{Political alliances and enmities among 16 tribes of New Guinea 
(edgelist, n=16, undirected, valued, disconnected, isolates)}
\description{
    A network of political alliances and enmities among the 16
     Gahuku-Gama sub-tribes of Eastern Central Highlands of New Guinea.
}
\usage{data(tribes,package="latentnet")}
\format{\pkg{network} (edgelist)}
\details{
    The network is complete (all nodes are connected to all other nodes), but comes with edge attributes that
    can be used as line values (See Section Examples). See \code{?latentnet::tribes} for further details.

    Network properties:
    number of nodes: 16,
    undirected, valued,
    number of edges: (58,58,240),
    number of components: (2,2,1),
    number of isolates: (1,0,0).
}
\source{The \pkg{latentnet} package.}
\references{Hage P. and
     Harary F. (1983). Structural models in anthropology. Cambridge:
     Cambridge University Press. (See p 56-60).  
     
     Read K. (1954).
     Cultures of the central highlands, New Guinea. Southwestern
     Journal of Anthropology, 10:1-43.
}
\examples{
data(tribes,package="latentnet")
network::list.edge.attributes(tribes)
tribes.neg <- as.matrix.network(tribes,matrix.type="adjacency",attrname="neg")
tribes.pos <- as.matrix.network(tribes,matrix.type="adjacency",attrname="pos")
tribes.sign <- as.matrix.network(tribes,matrix.type="adjacency",attrname="sign")
tribes.sign012 <- as.matrix.network(tribes,matrix.type="adjacency",attrname="sign.012")
}
\keyword{datasets}