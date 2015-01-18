pollutantmean <- function(directory, pollutant, id = 1:332) {
  values <- numeric()
  for(i in seq_along(id)) {
    file <- paste(directory,sprintf("%03d",id[i]),sep="/")
    filetmp <- paste(file,".csv", sep = "")
    data <- read.csv(file = filetmp)
    good <- data[!is.na(data[,pollutant]),pollutant]
    values <- c(values,good)
  }
  print(round(mean(values), 3))
  ## pollutantmean("C:/dev/courseraDataScience/02_Programming/specdata","sulfate", 1:2)
}