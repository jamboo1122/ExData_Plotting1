png(filename = "plot4.png",width = 480, height = 480, units = "px")
dt <- read.csv("household_power_consumption.txt",sep=";")
dt <- dt[dt$Date %in% c('2/2/2007','1/2/2007'),]
par(mfrow=c(2,2))
## first plot
plot(dt$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt='n')
axis(2, at=c(0,2,4,6))
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(0,1440,2880))

## second plot
plot(dt$Voltage, type="l", ylab="Voltage", xlab="datetime", xaxt='n')
axis(2, at=c(234,238,242,246))
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(0,1440,2880))

## third plot
plot(dt$Sub_metering_1, type="l", xlab="", xaxt='n', col="black", ylab="Energy sub metering")
lines(dt$Sub_metering_2, type="l", xlab="", xaxt='n', col="red")
lines(dt$Sub_metering_3, type="l", xlab="", xaxt='n', col="blue")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(0,1440,2880))
axis(2, at=c(0,10,20,30))
legend("topright", lty=c(1,1),bty = "n", col = c("black", "red", "blue" ), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## forth plot
plot(dt$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime", xaxt='n')
axis(2, at=c(0.0,0.1,0.2,0.3,0.4,0.5))
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(0,1440,2880))

dev.off()