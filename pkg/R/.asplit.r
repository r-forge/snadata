.asplit <- function(x){
    out <- c()
    temp <- unlist(strsplit(x,"; |[[:space:]]+(and|amd|&)[[:space:]]+"))
    for (i in seq_along(temp)){
      if (length(unlist(strsplit(temp[i],"[[:space:]]+")))>3){
        out <- c(out,unlist(strsplit(temp[i],",")))
      }
      if (length(unlist(strsplit(temp[i],"[[:space:]]+")))<=3){
        out <- c(out,temp[i])
      }
    }
    out
}