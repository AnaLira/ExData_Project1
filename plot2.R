library(stringr)


data<-read.table("household_power_consumption.txt",sep=";",na.string="?",header=TRUE)

Sys.setlocale("LC_TIME", "English") 

plot2<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]

plot2$DT<-strptime(paste(str_trim(plot2$Date),str_trim(plot2$Time),sep=" "),format="%d/%m/%Y %H:%M:%S")
plot(plot2$DT,plot2$Global_active_power,pch=46,ylab="Global Active Power (kwatts)",xlab="")
lines(plot2$DT,plot2$Global_active_power)

png("plot2.png",width = 480, height = 480, units = "px")
plot(plot2$DT,plot2$Global_active_power,pch=46,ylab="Global Active Power (kwatts)",xlab="")
lines(plot2$DT,plot2$Global_active_power)
dev.off()