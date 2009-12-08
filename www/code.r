library(snadata)
library(igraph)
library(sna)
data(adjnoun)
adjnoun <- set.vertex.attribute(adjnoun,"name",value=get.vertex.attribute(adjnoun,"label"))
net <- get.adjacency(adjnoun)
jpeg("adjnoun.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      label=rownames(net),
      boxed.labels=F,
      edge.col="grey",
      label.cex=(sna::degree(net)^0.4)*0.4,
      edge.lwd=0.1,
      vertex.col="transparent",
      vertex.border="grey"
      )
dev.off()

data(barrett1987)
library(bipartite)
library(sna)
net <- as.one.mode(barrett1987)
jpeg("barrett1987.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      label.col=c(rep("blue",9),rep("red",105)),
      edge.col="grey",
      vertex.col="transparent",
      label=rownames(net),
      boxed.labels=F,
      label.cex=(sna::degree(net,ignore.eval=T)^0.4)*0.3,
      )
dev.off()

data(coleman)
library(sna)
netfall <- coleman[1,,]
netspring <- coleman[2,,]
jpeg("colemanfall.jpg")
par(mar=c(0,0,0,0))
gplot(netfall,
      gmode="graph",
      vertex.cex=(sna::degree(netfall,ignore.eval=T))*0.1,
      vertex.col="lightgreen",
      edge.col="grey20"
      )
dev.off()
jpeg("colemanspring.jpg")
par(mar=c(0,0,0,0))
gplot(netspring,
      gmode="graph",
      vertex.cex=(sna::degree(netspring,ignore.eval=T))*0.1,
      vertex.col="lightgreen",
      edge.col="grey20"
      )
dev.off()

library(bipartite)
data(elberling1999)
net <- as.one.mode(elberling1999)
jpeg("elberling1999.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      label.col=c(rep("blue",23),rep("red",118)),
      edge.col="grey",
      vertex.col="transparent",
      label=rownames(net),
      boxed.labels=F,
      label.cex=(sna::degree(net,ignore.eval=T)^0.4)*0.3,
      )
dev.off()

library(sna)
library(network)
data(flobusiness)
net <- as.matrix.network(flobusiness)
jpeg("flobusiness.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      label=rownames(net),
      boxed.labels=F,
      label.cex=(sna::degree(net,cmode="freeman",ignore.eval=T)+2)*0.2,
      vertex.col="white",
      edge.col="grey20",
      vertex.cex=get.vertex.attribute(flobusiness,"wealth")*0.05
      )
dev.off()

library(sna)
library(network)
data(flomarriage)
net <- as.matrix.network(flomarriage)
jpeg("flomarriage.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      label=rownames(net),
      boxed.labels=F,
      label.cex=(sna::degree(net,cmode="freeman",ignore.eval=T)+2)*0.2,
      vertex.col="white",
      edge.col="grey20",
      vertex.cex=get.vertex.attribute(flomarriage,"wealth")*0.05
      )
dev.off()

library(sna)
library(igraph)
data(karate)
net <- get.adjacency(karate)
jpeg("karate.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      vertex.cex=sna::degree(net)*0.1,
      vertex.col="lightgreen"
      )
dev.off()

library(sna)
library(network)
data(sampson)
net <- as.matrix.network(samplike)
jpeg("sampson.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      vertex.cex=sna::degree(net)*0.1,
      vertex.col="lightgreen",
      label=get.vertex.attribute(samplike,"vertex.names"),
      boxed.labels=F
      )
dev.off()

library(sna)
library(network)
data(tribes)
tribes.neg <- as.matrix.network(tribes,matrix.type="adjacency",attrname="neg")
tribes.pos <- as.matrix.network(tribes,matrix.type="adjacency",attrname="pos")
jpeg("tribes.neg.jpg")
par(mar=c(0,0,0,0))
gplot(tribes.neg,
      gmode="graph",
      label=get.vertex.attribute(tribes,"vertex.names"),
      boxed.labels=F,
      vertex.col="lightgreen",
      vertex.cex=(sna::degree(tribes.neg,ignore.eval=T)+1)*0.2
      )
dev.off()
jpeg("tribes.pos.jpg")
par(mar=c(0,0,0,0))
gplot(tribes.pos,
      gmode="graph",
      label=get.vertex.attribute(tribes,"vertex.names"),
      boxed.labels=F,
      vertex.col="lightgreen",
      vertex.cex=(sna::degree(tribes.pos,ignore.eval=T)+1)*0.2
      )
dev.off()