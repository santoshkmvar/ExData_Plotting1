plot1<-function(subset_data){
  png(filename="plot1.png",width=480,height=480)
  with(subset_data,hist(Global_active_power,main = "Global Active Power",col="RED",xlab="Global Active Power(kilowatts)"))
  dev.off()
}  


