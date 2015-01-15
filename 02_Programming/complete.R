complete <- function(directory, id = 1:332) {
  ids <- numeric()
  nobs <- numeric()
  for(i in seq_along(id)) {
    file <- paste(directory,sprintf("%03d",id[i]),sep="/")
    filetmp <- paste(file,".csv", sep = "")
    datain <- read.csv(file = filetmp)
    cases <- complete.cases(datain)
    
    ids <- append(ids,id[i])
    nobs <- append(nobs,sum(cases))
  }
  data.frame(id = ids,nobs)
}