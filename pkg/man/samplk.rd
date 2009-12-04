\name{samplk}
\alias{samplk}
\alias{samplk1}
\alias{samplk2}
\alias{samplk3}
\docType{data}
\title{Three friendship networks of monks in a monastry (edgelist, n=18, directed, unvalued, connected, longitudinal)}
\description{
     Three friendship networks of monks in a monastry.
}
\usage{data(samplk,package="ergm")}
\format{\pkg{network} (edgelist)}
\details{
    The objects' names are \code{samplk1, samplk2, samplk3}. 
    \pkg{network} objects (edgelists) containing the friendship ties between
    18 monks in a monastry at three points in time. See \code{?ergm::samplk} for further details.

    Network properties:
    number of nodes: 18,
    directed, unvalued,
    number of edges: (55,57,56),
    number of components: 1.
}
\source{The \pkg{ergm} package.}
\examples{
data(samplk,package="ergm")
}
\keyword{datasets}