clean2 <- function(x,pattern,replacement){
  for (i in seq_along(pattern)){
    if (is.element(pattern[i],x)){
     x[which(x==pattern[i])] <- ""
     x <- c(x,replacement[[i]])
     x <- x[nchar(x)>0]
    }
  }
  x
}