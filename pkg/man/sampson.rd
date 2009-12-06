\name{sampson}
\alias{sampson}
\docType{data}
\title{A friendship network of monks in a monastry (edgelist, n=18, directed, unvalued, connected)}
\description{
     A friendship network of monks in a monastry.
}
\usage{data(sampson,package="ergm")}
\format{\pkg{network} (edgelist)}
\details{
    The object's name is \code{samplike}. An \pkg{network} object (edgelist) containing the friendship ties between
    18 monks in a monastry. See \code{?ergm::sampson} for further details.

    Network properties:
    number of nodes: 18,
    directed, unvalued,
    number of edges: 88,
    number of components: 1.
}
\source{The \pkg{ergm} package.}
\references{
     White, H.C., Boorman, S.A. and Breiger, R.L. (1976).  _Social
     structure from multiple networks. I. Blockmodels of roles and
     positions._ American Journal of Sociology, 81(4), 730-780.
}
\examples{
data(sampson,package="ergm")
}
\keyword{datasets}