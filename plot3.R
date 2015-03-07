data<-read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE)
plot3<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]

plot3$DT<-strptime(paste(str_trim(plot3$Date),str_trim(plot3$Time),sep=" "),format="%d/%m/%Y %H:%M:%S")
plot(plot3$DT,plot3$Sub_metering_1,pch=46,ylab="Energy sub metering",xlab="")
lines(plot3$DT,plot3$Sub_metering_1)
points(plot3$Sub_metering_2,col="red")
lines(plot3$DT,plot3$Sub_metering_2,col="red")
points(plot3$Sub_metering_3,col="blue")
lines(plot3$DT,plot3$Sub_metering_3,col="blue")
legend("topright",pch="_____",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

png("plot3.png",width = 480, height = 480, units = "px")

plot3$DT<-strptime(paste(str_trim(plot3$Date),str_trim(plot3$Time),sep=" "),format="%d/%m/%Y %H:%M:%S")
plot(plot3$DT,plot3$Sub_metering_1,pch=46,ylab="Energy sub metering",xlab="")
lines(plot3$DT,plot3$Sub_metering_1)
points(plot3$Sub_metering_2,col="orange")
lines(plot3$DT,plot3$Sub_metering_2,col="orange")
points(plot3$Sub_metering_3,col="blue")
lines(plot3$DT,plot3$Sub_metering_3,col="blue")
legend("topright",pch="_____",col=c("black","orange","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()