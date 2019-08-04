data<-read.table("C:\\Users\\zhaoz\\Desktop\\data.txt",header=T,sep=";",stringsAsFactors =F)
temp<-subset(data,data$Date %in% c("1/2/2007","2/2/2007") )
t<-strptime(paste(temp[["Date"]],temp[["Time"]],sep=" "),"%d/%m/%Y %H:%M:%S")
Global_active_power<-temp[["Global_active_power"]]
Global_active_power[Global_active_power=="?"]<-NA
Global_active_power<-as.numeric(Global_active_power)
plot(t,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()
