clean1 <- function(x){
  x <- gsub(x,pattern="\\> [[:upper:]]\\.( ?[[:upper:]]\\.)? \\<",replacement=" ")
  x <- gsub(x,pattern="\\> [[:upper:]] ([[:upper:]] )?\\<",replacement=" ")
  x <- gsub(x,pattern="(\\(? Jr\\.?\\)?|Sc\\.D\\.|Ph\\.?D\\.?)",replacement="")
  x[grep(x,pattern="^[[:punct:][:space:]]+$")] <- ""
  x <- x[nchar(x)>0]
  x <- gsub(x,pattern="[[:punct:]]+",replacement=" ")
  x <- gsub(x,pattern="[[:space:]]+",replacement=" ")
  x <- gsub(x,pattern="^[[:space:]]+",replacement="")
  x <- gsub(x,pattern="[[:space:]]+$",replacement="")
  x <- gsub(x,pattern="�",replacement="a")
  x <- gsub(x,pattern="�",replacement="a")
  x <- gsub(x,pattern="�",replacement="ae")
  x <- gsub(x,pattern="�",replacement="e")
  x <- gsub(x,pattern="�",replacement="e")
  x <- gsub(x,pattern="�",replacement="e")
  x <- gsub(x,pattern="�",replacement="i")
  x <- gsub(x,pattern="�",replacement="i")
  x <- gsub(x,pattern="�",replacement="o")
  x <- gsub(x,pattern="�",replacement="o")
  x <- gsub(x,pattern="�",replacement="o")
  x <- gsub(x,pattern="�",replacement="oe")
  x <- gsub(x,pattern="�",replacement="u")
  x <- gsub(x,pattern="�",replacement="u")
  x <- gsub(x,pattern="�",replacement="ue")
  x <- gsub(x,pattern="�",replacement="n")
  x
}