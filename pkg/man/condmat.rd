\name{condmat}
\alias{condmat}
\alias{condmat1999}
\alias{condmat2003}
\alias{condmat2005}
\docType{data}
\title{The condmat Data Set}
\description{
    A scientific collaboration network.
}
\usage{data(condmat1999)}
\details{
    \code{condmat1999}
    is an igraph object containing the collaboration network of scientists
    posting preprints on the condensed matter archive at www.arxiv.org,
    1995-1999, as compiled by M. Newman.  The network is weighted, with weights
    assigned as described in the original papers.\\\\

    Network properties:\\
    Number of nodes: 16726\\
    undirected, valued\\
    Number of components: 1188
    
    \code{condmat2003}
    is an updated version of condmat1999, the
    collaboration network of scientists posting preprints on the condensed
    matter archive at www.arxiv.org.  This version is based on preprints posted
    to the archive between January 1, 1995 and June 30, 2003.  The largest
    component of this network, which contains 27519 scientists, has been used
    by several authors as a test-bed for community-finding algorithms for large
    networks; see for example J. Duch and A. Arenas, Phys. Rev. E 72, 027104
    (2005).\\\\
    Network properties:\\
    Number of nodes: 31163\\
    undirected, valued\\
    Number of components: 1599
    
    \code{condmat2005}
    is an updated version of condmat1999, the
    collaboration network of scientists posting preprints on the condensed
    matter archive at www.arxiv.org.  This version is based on preprints posted
    to the archive between January 1, 1995 and March 31, 2005.  The network is
    weighted, with weights assigned as described in M. E. J. Newman,
    Phys. Rev. E 64, 016132 (2001).\\\\
    Network properties:\\
    Number of nodes: 40421\\
    undirected, valued\\
    Number of components: 1798
}
\references{
  M. E. J. Newman. The structure of scientific collaboration networks. 2001.
  Proc. Natl. Acad. Sci. USA 98, 404-409.
  \url{http://www.pnas.org/content/98/2/404.full.pdf}.

  M. E. J. Newman, Scientific collaboration networks: I. Network
  construction and fundamental results. 2001. Phys. Rev. E 64, 016131.
  \url{http://www-personal.umich.edu/~mejn/papers/016131.pdf}.

  M. E. J. Newman, Scientific collaboration networks: II. Shortest paths,
  weighted networks, and centrality. 2001. Phys. Rev. E 64, 016132.
  \url{http://www-personal.umich.edu/~mejn/papers/016132.pdf}.
  
  M. E. J. Newman. Fast algorithm for detecting community structure in
  networks. 2004. Phys. Rev. E 69, 066133.  This paper describes the 2003
  version.
}
\source{
    \url{http://www-personal.umich.edu/~mejn/netdata/}
}
\examples{
data(condmat1999)
}
\keyword{datasets}