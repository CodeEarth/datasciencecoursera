pollutantmean <- function(directory, pollutant, id = 1:332) {
  values <- numeric()
  for(i in seq_along(id)) {
    file <- paste(directory,sprintf("%03d",id[i]),sep="/")
    print(file)
    filetmp <- paste(file,".csv", sep = "")
    data <- read.csv(file = filetmp)
    good <- data[complete.cases(data),]
    
    #print(good)
    val <- good[,pollutant]
    values <- c(values,val)
    #data[!is.na(data[pollutant])]
    print(mean(val))
  }
  print(mean(values))
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## pollutantmean("C:/dev/courseraDataScience/02_Programming/specdata","sulfate", 1:2)
}