\name{hepth}
\alias{hepth}
\docType{data}
\title{The hepth Data Set}
\description{
    A scientific collaboration network (igraph, n=8361, undirected, valued, disconnected).
}
\usage{data(astroph)}
\details{
    An \pkg{igraph} object containing the collaboration network of scientists
    posting preprints on the high-energy theory archive at www.arxiv.org,
    1995-1999, as compiled by M. Newman.  The network is weighted, with weights
    assigned as described in the original papers.

    Network properties:
    number of nodes: 8361,
    undirected, valued,
    number of components: 1332.
}
\references{
  M. E. J. Newman, The structure of scientific collaboration networks,
  Proc. Natl. Acad. Sci. USA 98, 404-409 (2001).
  \url{http://www.pnas.org/content/98/2/404.full.pdf}.

  M. E. J. Newman, Scientific collaboration networks: I. Network
  construction and fundamental results, Phys. Rev. E 64, 016131 (2001).
  \url{http://www-personal.umich.edu/~mejn/papers/016131.pdf}

  M. E. J. Newman, Scientific collaboration networks: II. Shortest paths,
  weighted networks, and centrality, Phys. Rev. E 64, 016132 (2001).
  \url{http://www-personal.umich.edu/~mejn/papers/016132.pdf}
}
\source{
    \url{http://www-personal.umich.edu/~mejn/netdata/}
}
\examples{
data(hepth)
}
\keyword{datasets}