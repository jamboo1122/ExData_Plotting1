png(filename = "plot2.png",width = 480, height = 480, units = "px")
dt <- read.csv("household_power_consumption.txt",sep=";")
dt <- dt[dt$Date %in% c('2/2/2007','1/2/2007'),]
plot(dt$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt='n')
axis(2, at=c(0,2,4,6))
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(0,1440,2880))
dev.off()