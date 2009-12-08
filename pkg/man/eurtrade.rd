\name{eutrade}
\alias{eutrade08}
\alias{eutrade07}
\alias{eutrade06}
\alias{eutrade05}
\alias{eutrade04}
\alias{eutrade03}
\alias{eutrade02}
\alias{eutrade01}
\alias{eutrade00}
\docType{data}
\title{Nine EU trade networks (matrix, n=27, directed, valued, connected, longitudinal)}
\description{
    Trade networks between 27 EU countries in 2000 to 2008.
}
\usage{data(eutrade08)}
\format{Adjacency matrix}
\details{
    \pkg{sna} objects (adjacency matrix) containing the trade network of the 27
    EU countries.
    \code{rownames(eutrade08)} indicate the name of countries.
    The matrix elements contain the value in Euro of exchanged goods.
    The element in the ith row and jth column indicates the value exported from
    country i to country j. No loops (internal trade).
    \code{eutrade08}:Trade in 2008.
    \code{eutrade07}:Trade in 2007.
    \code{eutrade06}:Trade in 2006.
    \code{eutrade05}:Trade in 2005.
    \code{eutrade04}:Trade in 2004.
    \code{eutrade03}:Trade in 2003.
    \code{eutrade02}:Trade in 2002.
    \code{eutrade01}:Trade in 2001.
    \code{eutrade00}:Trade in 2000.

    Network properties:
    number of nodes: 27,
    directed, valued,
    number of edges: 702,
    number of components: 1.
}
\source{
    \url{http://ec.europa.eu/eurostat}
}
\examples{
data(eutrade08)
dim(eutrade08)
}
\keyword{datasets}