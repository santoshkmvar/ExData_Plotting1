  wdURL <- "C:/Users/212446591/Desktop/coursera/Assignment/4. Explatory Data Analysis/Week1/Project"
  setwd(wdURL)
  ## Create folder UCI_Irvine_DATA in working directory
  if(!file.exists("./UCIrvine_DATA")){
    dir.create("./UCIrvine_DATA")
  } 
  
  ## download file and unzip it
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" 
  download.file(fileUrl,destfile="./UCIrvine_DATA/Data.zip")
  unzip(zipfile="./UCIrvine_DATA/Data.zip",exdir="./UCIrvine_DATA") 
  
  ## Read table 
  library(data.table)
  newFile <- fread("./UCIrvine_DATA/household_power_consumption.txt", na.strings = "?")
  newFile <- newFile[,DateTime := as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]
  
  
  ## loading dplyr & subsetting data
  library(dplyr)
  library(lubridate)
  subset_data <- filter(newFile, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-03 00:00:00"))
  subset_data <- arrange(subset_data,DateTime)
  rm(newFile)



  png(filename="plot2.png",width=480,height=480)
  with(subset_data,plot(Global_active_power,type="l",lwd=1, xlab="",ylab="Global Acive Power(kilowatts)",axes=FALSE))
  axis(side=2, at=seq(0, max(subset_data$Global_active_power), by=2))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), labels=c("Thu","Fri","Sat"))
  box()
  dev.off()
  ##cleanup
  rm(subset_data)

