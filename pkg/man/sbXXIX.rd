\name{sbXXIX}
\alias{sbXXIX}
\alias{sbXXIX_authors}
\alias{sbXXIX_keywords}
\alias{sbXXIX_twomode}
\docType{data}
\title{The sbXXIX Data Set}
\description{
    bla.
}
\usage{data(sbXXIX)}
\details{
    This is a data dump of the INSNA Sunbelt XXIX (2009) abstract database
    for all abstracts accepted for Sunbelt XXIX (2009) poster/presentation.
    \item{sbXXIX_authors}{
    Network properties:\\
    Number of nodes: 112 (58 adjectives, 54 nouns)\\
    undirected, unvalued\\
    Number of edges: 850\\
    Number of components: 1
    }
    \item{sbXXIX_words}{}
    \item{sbXXIX_twomode}{}
}
\source{
    INSNA (2009). Sunbelt XXIX Abstract Data. \url{http://www.insna.org/software/data.html}
}
\examples{
# data preparation from original file (http://www.insna.org/software/sbXXIX.abs.gz):
sb <- file("insna/sbXXIX/sbXXIX.abs")
sb <- readLines(sb)
sb <- sb[nchar(sb)>0]
authors <- sb[seq(1,length(sb),by=5)]
keywords <- sb[seq(2,length(sb),by=5)]
title <- sb[seq(3,length(sb),by=5)]
abstract <- sb[seq(4,length(sb),by=5)]

edgelist <- c()
for (i in seq_along(authors)){
  a <- strsplit(authors[i],split=";")
  if (length(a)>1){
    for (j in seq_along(a)){
      edgelist <- rbind(edgelist,cbind(a[j],a[setdiff(1:length(a),j)],1))
    }
  }
  if (length(a)==1){
    edgelist <- rbind(edgelist,cbind(a[j],a[j],1))
  }
}
sbXXIX_authors <- createedges(edgelist)



}
\keyword{datasets}