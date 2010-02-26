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
pdf("adjnoun.pdf")
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
pdf("barrett1987.pdf")
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
pdf("colemanfall.pdf")
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
pdf("colemanspring.pdf")
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
pdf("elberling1999.pdf")
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
pdf("karate.pdf")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      vertex.cex=sna::degree(net)*0.1,
      vertex.col="lightgreen"
      )
dev.off()

library(sna)
library(snatm) # from R-Forge
net <- cran.authors()
net <- component.largest(net,connected="weak",result="graph")
jpeg("cran.authors.jpg")
par(mar=c(0,0,0,0))
gplot(net,
      gmode="graph",
      edge.col="grey",
      vertex.col="transparent",
      vertex.border="black",
      vertex.cex=(sna::degree(net,cmode="freeman",ignore.eval=T)^0.5)*0.1)
dev.off()
pdf("cran.authors.pdf")
par(mar=c(0,0,0,0))
gplot.snatm(net,
      gmode="graph",
      edge.col="grey",
      vertex.col="transparent",
#      vertex.border="black",
      label=rownames(net),
      boxed.labels=F,
      label.cex=(sna::degree(net,cmode="freeman",ignore.eval=T)^0.4)*0.1,
      label.pos=5)
dev.off()

library(sna)
library(snatm)   # from R-Forge
elist <- taskviews()
net <- adjacency(elist,mode="multiple")
pkgs <- which(is.element(rownames(net),elist[,1]))
tasks <- which(is.element(rownames(net),elist[,2]))
vertex.col <- 1:ncol(net)
vertex.col[pkgs] <- "blue"
vertex.col[tasks] <- "red"
jpeg("taskviews.jpg")
par(mar=c(0,0,0,0))
gplot(net, 
      gmode="graph",
      vertex.col=vertex.col,
      edge.col="grey")
dev.off()
label <- rownames(net)
label.cex <- rep(1,ncol(net))
label.cex[pkgs] <- 0.3
pdf("taskviews.pdf")
par(mar=c(0,0,0,0))
gplot.snatm(net, 
      gmode="graph",
      vertex.col=vertex.col,
      edge.col="grey",
      label=label,
      boxed.labels=F,
      label.pos=5,
      label.cex=label.cex)
dev.off()

library(sna)
library(snatm)   # from R-Forge
net <- jss()
deg <- degree(net,cmode="freeman",ignore.eval=T)
net <- net[,deg>0]
net <- net[deg>0,]
jpeg("jss.jpg")
par(mar=c(0,0,0,0))
gplot.snatm(net,
            gmode="graph",
            label=rownames(net),
            label.cex=degree(net,cmode="freeman",ignore.eval=T)*0.05,
            boxed.labels=F,
            label.pos=5,
            vertex.col="transparent",
            label.col=rainbow(ncol(net)))
dev.off()
pdf("jss.pdf")
par(mar=c(0,0,0,0))
gplot.snatm(net,
            gmode="graph",
            label=rownames(net),
            label.cex=degree(net,cmode="freeman",ignore.eval=T)*0.05,
            boxed.labels=F,
            label.pos=5,
            vertex.col="transparent",
            label.col=rainbow(ncol(net)))
dev.off()

library(snatm)
library(sna)
net <- cran.depends()
net <- component.largest(net,connected="weak",result="graph")
jpeg("cran.depends.jpg")
par(mar=c(0,0,0,0))
gplot.snatm(net,
      vertex.col="transparent",
      edge.col="grey")
dev.off()
pdf("cran.depends.pdf")
par(mar=c(0,0,0,0))
gplot.snatm(net,
      label=rownames(net),
      boxed.labels=F,
      label.pos=5,
      label.cex=(sna::degree(net,cmode="freeman",ignore.eval=T)^0.3)*0.3,
      vertex.col="transparent",
      label.col=rainbow(ncol(net)),
      edge.col="grey",
      vertex.border="transparent",
      edge.lwd=0.1)
dev.off()

library(snatm)
library(sna)
net <- cran.suggests()
net <- component.largest(net,connected="weak",result="graph")
jpeg("cran.suggests.jpg")
par(mar=c(0,0,0,0))
gplot.snatm(net,
      vertex.col="transparent",
      edge.col="grey")
dev.off()
pdf("cran.suggests.pdf")
par(mar=c(0,0,0,0))
gplot.snatm(net,
      label=rownames(net),
      boxed.labels=F,
      label.pos=5,
      label.cex=(sna::degree(net,cmode="freeman",ignore.eval=T)^0.5)*0.3,
      vertex.col="transparent",
      label.col=rainbow(ncol(net)),
      edge.col="grey",
      vertex.border="transparent",
      edge.lwd=0.1)
dev.off()