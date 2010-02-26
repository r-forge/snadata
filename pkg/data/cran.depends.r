cran.depends <- function(){
  split_dependencies <- function(s) {
    s[is.na(s)] <- ""
    s <- gsub("\\([^)]*\\)", "", s)
    s <- gsub("(^|,) *R *($|, *)", "\\1", s)
    strsplit(s, " *, *")
  }
  x <- .readRDS(file=url("http://cran.r-project.org/web/packages/packages.rds",encoding="UTF-8"))
  x <- cbind(x[,c(1,6)])
  rownames(x) <- NULL
  x <- gsub(x,pattern="\n",replacement="")
  xlist <- split_dependencies(x[,2])
  names(xlist) <- x[,1]
  remove.space <- function(y){
    y <- gsub(y,pattern="[[:space:]]+",replacement="")
  }
  xlist <- lapply(xlist,remove.space)
  edgelist <- c()
  for (i in seq_along(xlist)){
    if (length(xlist[[i]])>0){
      edgelist <- rbind(edgelist,cbind(names(xlist)[i],xlist[[i]]))
    }
    if (length(xlist[[i]])==0){
      edgelist <- rbind(edgelist,cbind(names(xlist)[i],names(xlist)[i]))
    }
  }
  edgelist <- snatm::adjacency(edgelist,valued=F)
  edgelist
}