corr <- function(directory, threshold = 0) {
  completeList <- complete(directory, 1:332)
  
  
  #files <- character()
  returnVals <- vector()
  for (i in seq_along(completeList[,"id"])) {
    if (completeList[i,"nobs"] > threshold) {
      #files[[length(files)+1]]=sprintf("%s\\%03d.csv",directory,completeList[i,"id"])
      file <- sprintf("%s\\%03d.csv",directory,completeList[i,"id"])
      mydata  <- read.csv(file)
      good <- complete.cases(mydata)
      corValue = cor(mydata[good,c("nitrate","sulfate")])
      returnVals <- c(returnVals,corValue)
      #print(c(mydata[good,"nitrate"],mydata[good,"sulfate"]))
      #c(files, list(completeList[,"id"]))
      #print(completeList[i,"nobs"])
    }
  }
  returnVals
  #files <- dir(directory, pattern = '\\.csv', full.names = TRUE)
  #print(files)

  #load_data <- function(files) { 
    #files <- dir(directory, pattern = '\\.csv', full.names = TRUE)
  #  tables <- lapply(files, read.csv)
  #  do.call(rbind, tables)
  #}
  #mydata <- load_data(files)
  #print(mydata)
  #good <- complete.cases(mydata)
  #print(c(mydata[good,"nitrate"],mydata[good,"sulfate"]))
  #cor(mydata[good,"nitrate"],mydata[good,"sulfate"])
  #dim(completeList)[1]
  #ids <- completeList[(completeList$nobs > threshold),"id"]
#  load_data <- function(directory) { 
#    files <- dir(directory, pattern = '\\.csv', full.names = TRUE)
#    tables <- lapply(files, read.csv)
#    do.call(rbind, tables)
#  }
#  allData <- load_data("specdata")
  #files <- dir(directory, pattern = '\\.csv', full.names = TRUE)
#  print(allData)
#  return
#  x <- numeric()
#  for(i in 1:332) {
#    file <- paste(directory,sprintf("%03d",i),sep="/")
#    filetmp <- paste(file,".csv", sep = "")
#    datain <- read.csv(file = filetmp)
#    good <- complete.cases(datain)
    
#    if (sum(good) > threshold) {
#      x <- append(x,c(datain[good,"nitrate"],datain[good,"sulfate"]))
#    }
    
#  }
  #y <- data.frame(x)
  #head(mat)
  #for (i in seq_along(completeList[,"id"])) {
    #print(completeList[i,"nobs"])
  #  print(i)
  #}
  #id <- with (completeList, {
  #  class(nobs)
    #if (nobs > threshold) {
    #  id
    #} else {0}
  #}) 
  
  #print(id)
  #for(i in 1:332) {
  #  file <- paste(directory,sprintf("%03d",i),sep="/")
   # filetmp <- paste(file,".csv", sep = "")
  #  datain <- read.csv(file = filetmp)
  #  good <- complete.cases(datain)
  #  sulfate <- datain[good,"sulfate"]
  #  nitrate <- datain[good,"nitrate"]
  
    
    #ids <- append(ids,id[i])
    #nobs <- append(nobs,sum(cases))
  #}
  #print(sulfate)
  #data.frame(id = ids,nobs)
}