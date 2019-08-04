data<-read.table("C:\\Users\\zhaoz\\Desktop\\data.txt",header=T,sep=";",stringsAsFactors =F)
temp<-subset(data,data$Date %in% c("1/2/2007","2/2/2007") )
t<-strptime(paste(temp[["Date"]],temp[["Time"]],sep=" "),"%d/%m/%Y %H:%M:%S")
Sub_metering_1<-as.numeric(temp[["Sub_metering_1"]])
Sub_metering_2<-as.numeric(temp[["Sub_metering_2"]])
Sub_metering_3<-as.numeric(temp[["Sub_metering_3"]])


png("plot3.png", width=480, height=480)
plot(t, Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(t, Sub_metering_2, type="l", col="red")
lines(t, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
