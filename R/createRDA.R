### https://r-pkgs.org/data.html

library(usethis)
csvFileList <- list.files(path = "data-raw/",
                          full.names = TRUE,
                          pattern = "*.csv")

csvNumFiles <- length(csvFileList)

for (i in (1:csvNumFiles)) {

  # Read the csv file
  dataFile <- read.csv( csvFileList[i] )

  # Save as an rda file for faster access
  newFileName <- sub(".csv",
                     ".RData",
                     csvFileList[i])
  newFileName <- sub("data-raw",
                     "data",
                     newFileName)
  save(dataFile,
       file = newFileName )

}

