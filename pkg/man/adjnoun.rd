\name{adjnoun}
\alias{adjnoun}
\docType{data}
\title{The adjnoun Data Set}
\description{
    A network containing adjacency links between adjactives and nouns for the novel
    ''David Copperfield`` by Charles Dickens.
}
\usage{data(adjnoun)}
\details{
    An \pkg{igraph} object containing the 
    network representing juxtapositions
    of words in 
    the novel David Copperfield by Charles Dickens. To construct
    this network, the 60 most commonly
    occurring nouns in the novel and the 60 most commonly
    occurring adjectives were considered. The vertices in the
    network represent words and an edge connects any two
    words that appear adjacent to one another at any point
    in the book. Eight of the words never appear adjacent
    to any of the others and are excluded from the network,
    leaving a total of 112 vertices (Newman, 2006). 
    Node values \code{(get.vertex.attribute(adjnoun,"value"))}
    are 0 for adjectives and 1
    for nouns.\\\\
    Network properties:\\
    Number of nodes: 112 (58 adjectives, 54 nouns)\\
    undirected, unvalued\\
    Number of edges: 850\\
    Number of components: 1
}
\references{
    M. E. J. Newman. Finding community
    structure in networks using the eigenvectors of matrices. 2006. Preprint
    physics/0605087.
    \url{http://arxiv.org/PS_cache/physics/pdf/0605/0605087v3.pdf}.
}
\source{
    \url{http://www-personal.umich.edu/~mejn/netdata/}
}
\examples{
data(adjnoun)
list.vertex.attributes(adjnoun)
# to analyse with \pkg{sna}:
get.adjacency(adjnoun)
}
\keyword{datasets}