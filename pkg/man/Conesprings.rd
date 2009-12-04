\name{Conesprings}
\alias{Conesprings}
\docType{data}
\title{A foodweb network (bipartite matrix, n=13, directed, valued, connected)}
\description{
    A bipartite (2-mode) foodweb network.
    The bipartite network can be transformed to a 1-mode adjacency matrix using \code{bipartite::as.one.mode()}.
}
\usage{data(Conesprings,package="NetIndices")}
\format{Bipartite adjacency matrix}
\details{
  See \code{?NetIndices::Conesprings} for further details.

    Network properties:
    number of nodes: 13,
    directed, valued,
    number of edges: 36,
    number of components: 1.
}
\source{The \pkg{NetIndices} package.}
\references{
 Latham LG. 2006. Network flow analysis algorithms.  Ecological
     Modelling 192:586-600.

     Szyrmer, J., & Ulanowicz, R. E. (1987). Total flows in ecosystems.
     Ecol. Model. 35:123-136.

     Tilly, L. J. (1968). The structure and dynamics of Cone Spring.
     Ecol. Monogr. 38:169-197.

     Ulanowicz, R. E., & Norden, J. S. (1990). Symmetrical overhead in
     flow networks. Int. J. Systems Sci. 21:429-437.

     Williams, M., & Crouthamel, D. (1972). Systems analysis of Cone
     Spring.  Unpublished manuscript. University of Georgia, Athens,
     Georgia.
}
\examples{
data(Conesprings,package="NetIndices")
adjmatrix <- as.one.mode(Conesprings)
}
\keyword{datasets}