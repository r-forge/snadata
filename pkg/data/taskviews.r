taskviews <- function(){
    views <- .readRDS(url("http://CRAN.R-project.org/src/contrib/Views.rds"))
    do.call("rbind",
            mapply(cbind,
                   Package =
                   lapply(views, function(v) v$packagelist$name),
                   View = sapply(views, "[[", "name")))
}