plot3<-function(subset_data){
  png(filename="plot3.png",width=480,height=480)
  with(subset_data,plot(Sub_metering_1,type="l",lwd=1, col="black",xlab="",ylab="Energy sub metering",axes=FALSE))
  with(subset_data,points(Sub_metering_2,type="l",lwd=1,col="red", xlab=""))
  with(subset_data,points(Sub_metering_3,type="l",lwd=1,col="blue", xlab=""))
  axis(side=2, at=seq(0, 50, by=10))
  axis(side=1, at=seq(0,nrow(subset_data),by=nrow(subset_data)/2), labels=c("Thu","Fri","Sat"))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
         col=c("black","red", "blue"), lty=1,lwd=2)
  box()
  dev.off()
}  
