\name{coleman}
\alias{coleman}
\docType{data}
\title{Coleman's high school friendship networks (matrix, n=73, directed, unvalued, disconnected, isolates, longitudinal)}
\description{
    James Coleman (1964) reports research on self-reported friendship
     ties among 73 boys in a small high school in Illinois over the
     1957-1958 academic year.
}
\usage{data(coleman,package="sna")}
\format{Adjacency matrix}
\details{
    Two adjacency matrices. See \code{?sna::coleman} for further details.

    Network properties:
    number of nodes: 73 and 73,
    directed, unvalued,
    number of edges: 243 and 263,
    number of components: 5 and 5
    number of isolates: 3 and 4.
}
\source{The \pkg{sna} package.}
\references{Coleman, J. S.  (1964).  Introduction to Mathermatical
     Sociology. New York: Free Press.}
\examples{
data(coleman,package="sna")
}
\keyword{datasets}