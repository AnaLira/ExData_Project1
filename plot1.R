data<-read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE)
plot1<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]

hist(plot1$Global_active_power,breaks=14,col="red",xlab="Global Active Power (kwatts)",main="Global Active Power")

png("plot1.png",width = 480, height = 480, units = "px")
hist(plot1$Global_active_power,breaks=14,col="red",xlab="Global Active Power (kwatts)",main="Global Active Power")
dev.off()