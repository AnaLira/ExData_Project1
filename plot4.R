data<-read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE)
p4<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]

p4$DT<-strptime(paste(str_trim(p4$Date),str_trim(p4$Time),sep=" "),format="%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2),cex.lab=0.8,cex.axis=0.8)
##upper left plot
plot(p4$DT,p4$Global_active_power,pch=46,ylab="Global Active Power",xlab="")
lines(p4$DT,p4$Global_active_power)

##upper right plot
plot(p4$DT,p4$Voltage,xlab="datetime",ylab="Voltage",pch=46)
lines(p4$DT,p4$Voltage)

##bottom left plot
plot(p4$DT,p4$Sub_metering_1,pch=46,ylab="Energy sub metering",xlab="")
lines(p4$DT,p4$Sub_metering_1)
points(p4$Sub_metering_2,col="red")
lines(p4$DT,p4$Sub_metering_2,col="red")
points(p4$Sub_metering_3,col="blue")
lines(p4$DT,p4$Sub_metering_3,col="blue")
legend("topright",pch="_____",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.6)

##bottom right plot
plot(p4$DT,p4$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",pch=46)
lines(p4$DT,p4$Global_reactive_power)

##png("plot4.png",width = 480, height = 480, units = "px")
dev.copy(png,file="plot4.png",width = 480, height = 480, units = "px")
dev.off()