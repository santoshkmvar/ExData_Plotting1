plot4<-function(subset_data){
  png(filename="plot4.png",width=480,height=480)  
  par(mfcol=c(2,2))
  with(subset_data,plot(Global_active_power,type="l",lwd=1, xlab="",ylab="Global Acive Power",axes=FALSE))
  axis(side=2, at=seq(0, max(subset_data$Global_active_power), by=2))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), labels=c("Thu","Fri","Sat"))
  box()
  
  with(subset_data,plot(Sub_metering_1,type="l",lwd=1, col="black",xlab="",ylab="Energy sub metering",axes=FALSE))
  with(subset_data,points(Sub_metering_2,type="l",lwd=1,col="red", xlab=""))
  with(subset_data,points(Sub_metering_3,type="l",lwd=1,col="blue", xlab=""))
  axis(side=2, at=seq(0, 50, by=10))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), labels=c("Thu","Fri","Sat"))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
         col=c("black","red", "blue"), lty=1,lwd=2,bty = "n")
  box()
  
  with(subset_data,plot(Voltage,type="l",lwd=1, col="black",yaxt="n",
                        ylab="Voltage",xlab="datetime",axes=FALSE))
  axis(side=2, at=seq(ceiling(min(subset_data$Voltage)), ceiling(max(subset_data$Voltage)), 
                      by=2),labels = FALSE)
  axis(side=2, at=seq(ceiling(min(subset_data$Voltage)), ceiling(max(subset_data$Voltage)), 
                      by=4))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), 
       labels=c("Thu","Fri","Sat"))
  box()
  
  with(subset_data,plot(Global_reactive_power,type="l",lwd=1, xlab="datetime",ylab="Global_reactive_power",axes=FALSE))
  axis(side=2, at=seq(0.0, max(subset_data$Global_reactive_power), by=0.1))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), labels=c("Thu","Fri","Sat"))
  box()
  dev.off()
}  
