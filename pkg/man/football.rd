\name{football}
\alias{football}
\docType{data}
\title{An American football network}
\description{
    An American football network (igraph, n=115, undirected, valued, connected, known community structure).
}
\usage{data(football)}
\details{
    An \pkg{igraph} object containing the network of American football (not soccer) games
    between Division I colleges during regular season Fall 2000, as compiled
    by M. Girvan and M. Newman. 
    Vertices in the graph represent teams
    (identified by their college names) and edges indicate whether there 
    were regular season games between two teams.
    The nodes have values that indicate to which
    conferences they belong.  
    The values (\code{get.vertex.attribute(football,''value``)}) are as follows:

  0 = Atlantic Coast,
  1 = Big East,
  2 = Big Ten,
  3 = Big Twelve,
  4 = Conference USA,
  5 = Independents,
  6 = Mid-American,
  7 = Mountain West,
  8 = Pacific Ten,
  9 = Southeastern,
 10 = Sun Belt,
 11 = Western Athletic.
 
What makes this network interesting is that it incorporates
a known community structure. The teams
are divided into conferences containing around 8 to 12
teams each. Games are more frequent between members
of the same conference than between members of different
conferences, with teams playing an average of about
7 intra-conference games and 4 inter-conference games
in the 2000 season. Inter-conference play is not uniformly
distributed; teams that are geographically close
to one another but belong to different conferences are
more likely to play one another than teams separated by
large geographic distances (Newman, 2002).
 
    Network properties:
    number of nodes: 115,
    undirected, valued,
    number of edges: 1226,
    number of components: 1.
}
\references{
    M. Girvan and M. E. J. Newman. 2002.
    Community structure in social and biological networks.
    Proc. Natl. Acad. Sci. USA 99, 7821-7826.
    \url{http://arxiv.org/PS_cache/cond-mat/pdf/0112/0112110v1.pdf}.
}
\source{
    \url{http://www-personal.umich.edu/~mejn/netdata/}
}

\keyword{datasets}