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
  x <- gsub(x,pattern="á",replacement="a")
  x <- gsub(x,pattern="à",replacement="a")
  x <- gsub(x,pattern="ä",replacement="ae")
  x <- gsub(x,pattern="é",replacement="e")
  x <- gsub(x,pattern="è",replacement="e")
  x <- gsub(x,pattern="ê",replacement="e")
  x <- gsub(x,pattern="í",replacement="i")
  x <- gsub(x,pattern="ì",replacement="i")
  x <- gsub(x,pattern="ó",replacement="o")
  x <- gsub(x,pattern="ò",replacement="o")
  x <- gsub(x,pattern="ø",replacement="o")
  x <- gsub(x,pattern="ö",replacement="oe")
  x <- gsub(x,pattern="ú",replacement="u")
  x <- gsub(x,pattern="ù",replacement="u")
  x <- gsub(x,pattern="ü",replacement="ue")
  x <- gsub(x,pattern="ñ",replacement="n")
  x
}