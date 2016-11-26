plot2<-function(subset_data){
  png(filename="plot2.png",width=480,height=480)
  with(subset_data,plot(Global_active_power,type="l",lwd=1, xlab="",ylab="Global Acive Power(kilowatts)",axes=FALSE))
  axis(side=2, at=seq(0, max(subset_data$Global_active_power), by=2))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), labels=c("Thu","Fri","Sat"))
  box()
  dev.off()
}  

