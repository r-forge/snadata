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
\usage{data(condmat1999), data(condmat2003), data(condmat2005)}
\details{
    \item{condmat1999}{
    An igraph object containing the collaboration network of scientists
    posting preprints on the condensed matter archive at www.arxiv.org,
    1995-1999, as compiled by M. Newman.  The network is weighted, with weights
    assigned as described in the original papers.\\\\

    Network properties:\\
    Number of nodes: 16726\\
    undirected, valued\\
    Number of components: 1188
    }
    \item{condmat2003}{
    The file cond-mat-2003.gml contains an updated version of cond-mat1999, the
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
    }
    \item{condmat2005}{
    The file cond-mat-2005.gml contains an updated version of condmat1999, the
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
}
\references{
  \item{M. E. J. Newman. The structure of scientific collaboration networks. 2001.
  Proc. Natl. Acad. Sci. USA 98, 404-409.
  \url{http://www.pnas.org/content/98/2/404.full.pdf}.}

  \item{M. E. J. Newman, Scientific collaboration networks: I. Network
  construction and fundamental results. 2001. Phys. Rev. E 64, 016131.
  \url{http://www-personal.umich.edu/~mejn/papers/016131.pdf}.}

  \item{M. E. J. Newman, Scientific collaboration networks: II. Shortest paths,
  weighted networks, and centrality. 2001. Phys. Rev. E 64, 016132.
  \url{http://www-personal.umich.edu/~mejn/papers/016132.pdf}.}
  
  \item{M. E. J. Newman. Fast algorithm for detecting community structure in
  networks. 2004. Phys. Rev. E 69, 066133.  This paper describes the 2003
  version.}
}
\source{
    \url{http://www-personal.umich.edu/~mejn/netdata/}
}
\examples{
data(condmat1999)
list.vertex.attributes(condmat1999)
list.edge.attributes(condmat1999)
}
\keyword{datasets}