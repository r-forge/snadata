\name{jss}
\alias{jss}
\title{Creates a network of coauthorships in the Journal of Statistical Software}
\description{
Creates a network of coauthorships in the Journal of Statistical Software (\url{http://www.jstatsoft.org/})
}
\usage{jss()}
\format{Adjacency matrix.}
\details{
Puts an edge between every two authors who were mentionned in the "creator" field
of a certain article.
Articles who were written by only one author cause loops.

Network properties:
    Number of nodes: 556 (on February 25th, 2010),
    undirected, valued,
    Number of components: 245 (on February 25th, 2010),
    Loops.
    
}
\value{
A matrix of dimension n x n where n is the number of authors. 
The matrix elements contain
the number of articles the authors collaborated in.
}
\source{
    \url{http://www.jstatsoft.org/}
}
\examples{
jss()
}
\author{Kurt Hornik (\url{kurt.hornik@wu.ac.at}) and Angela Bohn (\url{angela.bohn@gmail.com})}
\keyword{datasets}