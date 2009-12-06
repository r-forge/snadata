\name{Safariland}
\alias{Safariland}
\docType{data}
\title{Biological network indicating the which pollinators visit which plants 
(2-mode matrix, n=36, undirected, valued, disconnected)}
\description{
    A bipartite (2-mode) biological network indicating which of the 27 pollinators visit which of the 9 plants.
    The bipartite network can be transformed to a 1-mode adjacency matrix using \code{bipartite::as.one.mode()}.
}
\usage{data(Safariland,package="bipartite")}
\format{Bipartite adjacency matrix}
\details{
  See \code{?bipartite::Safariland} for further details.

    Network properties:
    number of nodes: 36 (9 plants and 27 pullinators),
    undirected, valued,
    number of edges: 78,
    number of components: 2,
    number of isolates: 0.
}
\source{The \pkg{bipartite} package.}
\references{
 Vázquez, D. P. 2002 Interactions among Introduced Ungulates,
     Plants, and Pollinators: A Field Study in the Temperate Forest of
     the Southern Andes. Doctoral Dissertation Thesis, University of
     Tennessee, Knoxville, Tennessee, USA.

     Vázquez, D. P., and D. Simberloff. 2002 Ecological specialization
     and susceptibility to disturbance: conjectures and refutations.
     American Naturalist, 159:606-623.

     Vázquez, D. P., and D. Simberloff. 2003 Changes in interaction
     biodiversity induced by an introduced ungulate. Ecology Letters, 6:1077-1083.
}
\examples{
data(Safariland,package="bipartite")
adjmatrix <- bipartite::as.one.mode(Safariland)
}
\keyword{datasets}