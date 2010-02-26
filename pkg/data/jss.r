jss <- function(){
  x <- OAIHarvester::oaih_list_records("http://www.jstatsoft.org/oai")
  m <- OAIHarvester::oaih_transform(x[, "metadata"])
  authors <- m[,2]
  jss.list <- c()
  for (i in seq_along(authors)){
    if (length(authors[[i]])==1){
      jss.list <- rbind(jss.list,cbind(authors[[i]][1],authors[[i]][1]))
    }
    if (length(authors[[i]])>1){
      for (j in seq_along(authors[[i]])){
        jss.list <- rbind(jss.list,cbind(authors[[i]][j],authors[[i]][-j]))
      }
    }
  }
  jss.list <- snatm::adjacency(jss.list,mode="multiple",directed=F)
  jss.list <- jss.list/2
  jss.list
}