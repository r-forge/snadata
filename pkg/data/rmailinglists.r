rmailinglists <- function(list,files){
  dir.create(list)
  filename <- file.path(list,"allthreads")
  unlink(filename,recursive=T)
  if (any(is.element(files,list.files(list))==F)){
    stop(paste("Required data is missing. Download ",files[which(!is.element(files,list.files(list)))],"\n",
    " from https://stat.ethz.ch/pipermail/r-",list,"\n",
    " and save it in a subordinate directory of your working directory called ",list,".",sep=""))
  }
  snatm::as.one.file(files,filename=paste(filename,".txt",sep=""),list=list)
  threads <- function (x){
      ht <- new.env()
      tid <- 1
      threadIDs <- threadLevels <- integer(length(x))
      for (i in seq_along(x)) {
          messageID <- tm::ID(x[[i]])[1]
          parentID <- gsub("In-Reply-To: ", "", grep("^In-Reply-To:",
              attr(x[[i]], "Header"), value = TRUE))
          if (!length(parentID)) {
              ht[[messageID]] <- c(tid, 1)
              threadIDs[i] <- tid
              threadLevels[i] <- 1
              tid <- tid + 1
          }
          else {
              threadID <- if (!is.numeric(ht[[parentID]][1]))
                  NA
              else as.integer(ht[[parentID]][1])
              threadLevel <- if (!is.numeric(ht[[parentID]][2]))
                  2
              else as.integer(ht[[parentID]][2] + 1)
              ht[[messageID]] <- c(threadID, threadLevel)
              threadIDs[i] <- threadID
              threadLevels[i] <- threadLevel
          }
      }
      list(ThreadID = threadIDs, ThreadDepth = threadLevels)
  }
  makeforest <- function (month){
      tm.plugin.mail::convert_mbox_eml(paste(month, ".txt", sep = ""),
          paste(month, "/", sep = ""))
      workingobject <- tm::Corpus(DirSource(month), readerControl = list(reader = readMail(DateFormat = "%a, %d %b %Y %H:%M:%S")))
      workingobject <- sapply(workingobject, tm.plugin.mail::removeCitation)
      workingobject <- sapply(workingobject, tm.plugin.mail::removeSignature)
      threadid <- threads(workingobject)$ThreadID
      workingobject <- workingobject[!is.na(threadid)]
      Content <- sapply(sapply(workingobject, "Content"), paste,
          collapse = "\n")
      numberofmail <- 1:length(workingobject)
      authorlist <- sapply(workingobject, "Author")
      authors <- c()
      for (i in seq_along(authorlist)) {
          authors <- c(authors, authorlist[[i]][1])
      }
      headinglist <- sapply(workingobject, "Heading")
      headings <- c()
      for (i in 1:length(headinglist)) {
          headings <- c(headings, headinglist[[i]][1])
      }
      forest <- cbind(numberofmail, threadid[!is.na(threadid)],
          authors, headings, Content[!is.na(threadid)])
      colnames(forest) <- c("emailID", "threadID", "author", "subjects",
          "content")
      forest
  }
  forest <- makeforest(filename)
  authors <- forest[,3]
  normalizeauthors <- function (authors){
    a <- gsub(x = authors, pattern = "[[:print:]]*r-help-bounces[[:print:]]*",
        replacement = "bounce")
    a <- gsub(x = a, pattern = "[[:print:]]*r-project.org[[:print:]]*",
        replacement = "bounce")
    a <- gsub(x = a, pattern = "[[:print:]]*Mail Delivery System[[:print:]]*",
        replacement = "bounce")
    a <- gsub(x = a, pattern = "[[:print:]]*[Bb]ehalf[[:print:]]*",
        replacement = "bounce")
    a <- gsub(pattern = " at [[:print:]]*\\.[[:lower:]]{2,3} \\(",
        x = authors, replacement = "|")
    a <- gsub(pattern = "\\)$", x = a, replacement = "")
    a <- gsub(pattern = "\\|\\=\\?[[:print:]]*\\?\\=", x = a,
        replacement = "|")
    a <- gsub(pattern = " \\[mailto:", x = a, replacement = "|")
    a <- gsub(pattern = " at [[:print:]]*>?|\\]?", x = a, replacement = "")
    a <- gsub(pattern = " <", x = a, replacement = "|")
    a <- gsub(pattern = " \\[", x = a, replacement = "|")
    a <- gsub(pattern = " \\([[:print:]]*\\)?$", x = a, replacement = "")
    a <- gsub(pattern = " \\([[:print:]]*\\)?\\|", x = a, replacement = "|")
    a <- gsub(pattern = " \\{[[:print:]]*\\}?$", x = a, replacement = "")
    a <- gsub(pattern = " \\{[[:print:]]*\\}?\\|", x = a, replacement = "")
    a <- gsub(pattern = " Jr\\.?", x = a, replacement = "")
    a <- gsub(pattern = ",? ?\\(?Prof(essor)?\\.?\\)? ?", x = a,
        replacement = "")
    a <- gsub(pattern = "Dr ", x = a, replacement = "")
    a <- gsub(pattern = "Dr\\.", x = a, replacement = "")
    a <- gsub(pattern = ",? ?\\(?Dr\\.?\\)? ", x = a, replacement = "")
    a <- gsub(pattern = ",? ?\\(?Dr\\.?\\)?$", x = a, replacement = "")
    a <- gsub(pattern = ",? ?Dr\\.", x = a, replacement = "")
    a <- gsub(pattern = ",? ?\\(?Mag\\.\\)? ?", x = a, replacement = "")
    a <- gsub(pattern = ",? ?\\(?Ph\\.?D\\.?\\)?", x = a, replacement = "")
    a <- sub(pattern = "[[:digit:]]{1,2}", x = a, replacement = "")
    a <- gsub(pattern = "\"", x = a, replacement = "")
    a <- gsub(pattern = " [[:upper:]]\\. ", x = a, replacement = " ")
    a <- gsub(pattern = "@[[:print:]]*", x = a, replacement = "")
    a <- gsub(pattern = "Ltd\\.?", x = a, replacement = "")
    a
  }
  a <- normalizeauthors(authors)
  b <- sapply(a,sortnames,USE.NAMES=FALSE)
  c <- sapply(b,emailfirst,USE.NAMES=FALSE)
  data(take.memory)
  data(not.take.memory)  
  d <- changenames(clusters=take.memory,forest=c,accept=1:length(take.memory))
  final <- function(d){
      e <- gsub(d, pattern = "\\|$", replacement = "")
      ename <- gsub(e, pattern = "[[:print:]][^[:space:]]*\\|", replacement = "")
      email <- gsub(e, pattern = "\\>\\|[[:print:]]*$", replacement = "")
      e <- ename
      e[grep(e,pattern="^[[:punct:]]+$")] <- email[grep(e,pattern="^[[:punct:]]+$")]
      e <- gsub(pattern = "[[:punct:]] ", x = e, replacement = " ")
      e <- gsub(pattern = " [[:punct:]]", x = e, replacement = " ")
      e <- gsub(pattern = "[[:punct:]]", x = e, replacement = " ")
      e <- gsub(pattern = "^ \\<", x = e, replacement = "")
      e <- gsub(pattern = "[[:blank:]]{2,}", x = e, replacement = " ")
      e
  }
  f <- final(d)
  forest_corrected <- cbind(forest[,1:2],f,forest[,4:5])
  commlist <- createedges(forest_corrected)
  commnet <- adjacency(commlist)
  #unlink(list,recursive=T)
  commnet
}