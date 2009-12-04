\name{kevan1970}
\alias{kevan1970}
\docType{data}
\title{A biological network indicating which flower visitors were observed on which plants (bipartite matrix, n=145, undirected, valued, disconnected, isolates)}
\description{
    A biological bipartite (2-mode) network indicating which flower visitors were observed on which plants.
    The bipartite network can be transformed into a 1-mode adjacency matrix using \code{as.one.mode()}.
}
\usage{data(kevan1970,package="bipartite")}
\format{A bipartite adjacency matrix.}
\details{
    See \code{?bipartite::kevan1970} for further details.

    Network properties:
    number of nodes: 145 (30 plants and 115 visiors),
    undirected, valued,
    number of edges: 624,
    number of components: 2,
    number of isolates: 1.
}
\source{The \pkg{bipartite} package.}
\references{Kevan, P. G. 1970. High Arctic Insect-Flower Visitor Relations:
     The Inter-Relationships of Arthropods and Flowers at Lake Hazen,
     Ellesmere Island, Northwest Territories. Canada. Ph. D.
Dissertation, University of Alberta,
Edmonton, Alberta, Canada.
}
\examples{
data(kevan1970,package="bipartite")
# transform into 1-mode adjacency matrix:
adjmatrix <- as.one.mode(kevan1970)
}
\keyword{datasets}