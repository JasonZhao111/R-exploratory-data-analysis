data<-read.table("C:\\Users\\zhaoz\\Desktop\\data.txt",header=T,sep=";",stringsAsFactors =F)
temp<-subset(data,data$Date %in% c("1/2/2007","2/2/2007") )
Global_active_power<-temp[["Global_active_power"]]
Global_active_power[Global_active_power=="?"]<-NA
Global_active_power<-as.numeric(Global_active_power)
hist(Global_active_power,col="red",xlab = "Global Active Power(kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
