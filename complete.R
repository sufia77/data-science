complete <- function(directory, id=1:332){
  
  datafiles <- list.files(directory, full.names = TRUE)
  dataframe <- data.frame()
  for (i in id) {
    
    data <- read.csv(datafiles[i])
    nobs <- sum(complete.cases(data))
    
    dataframe_i <- data.frame(i, nobs)
    dataframe <- rbind(dataframe, dataframe_i)
  }
  colnames(dataframe) <- c("id", "nobs")
  dataframe
}