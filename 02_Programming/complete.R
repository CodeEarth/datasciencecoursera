complete <- function(directory, id = 1:332) {
  df <- data.frame(id = numeric(),nobs = numeric())
  for(i in seq_along(id)) {
    file <- paste(directory,sprintf("%03d",id[i]),sep="/")
    filetmp <- paste(file,".csv", sep = "")
    datain <- read.csv(file = filetmp)
    cases <- complete.cases(datain)
    df$id[i] <- id[i]
    df$nobs[i] <- length(cases)
    #good <- data[!is.na(data[,pollutant]),pollutant]
    #values <- c(values,good)
    #print(length(cases))
  }
  df
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}