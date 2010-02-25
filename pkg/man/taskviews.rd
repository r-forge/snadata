\name{taskviews}
\alias{taskviews}
\title{Creates a network of R packages and Task Views}
\description{
Creates a network of R packages and Task Views mentionned on
\url{http://cran.r-project.org/web/views/}.
An Internet connection is required as the data is downloaded from the R page.
}
\usage{taskview.net()}
\format{Edgelist.}
\details{
The R Task Views is an assignment of certain R packages to fields of research or applications.
The function downloads the Task Views information from \url(http://cran.r-project.org/web/packages/packages.rds}
(Internet connection is required) and generates an edgelist having the package names
in the first column and the task in which it is mentionned in the second column.
Packages may appear several times (as well as tasks, of course).
To create a 2-mode-network use \code{snatm::adjacency}.
To create a 1-mode-network consisting of either the packages
or the tasks use \code{snatm::shrink}.

Network properties:
    Number of nodes: 996 (971 packages and 25 tasks) (on February 25th, 2010),
    undirected, valued,
    Number of components: 1 (on February 25th, 2010),
    Loops.
    
}
\value{
A matrix with 2 columns. First column contains the package names, second column
contains the task in which the package was mentionned.
}
\source{
    \url{http://cran.r-project.org/web/views/},
    \url(http://CRAN.R-project.org/src/contrib/Views.rds}
}
\examples{
taskviews()
}
\author{Kurt Hornik (\url{kurt.hornik@wu.ac.at}) and Angela Bohn (\url{angela.bohn@gmail.com})}
\keyword{datasets}