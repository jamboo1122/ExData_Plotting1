png(filename = "plot1.png",width = 480, height = 480, units = "px")
dt <- read.csv("household_power_consumption.txt",sep=";")
dt <- dt[dt$Date %in% c('2/2/2007','1/2/2007'),]
hist(dt$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red", main="Global Active Power", breaks=15)
axis(2, at=c(0,200,400,600,800,1000,1200))
axis(1, at=c(0,2,4,6))
dev.off()