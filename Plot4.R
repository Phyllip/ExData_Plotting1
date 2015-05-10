
source("LoadData.R")

png("plot4.png", width=400, height=400)

par(mfrow=c(2,2))

# Graph 1
plot(data2$DateNtime, 
     data2$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

# Graph 2
plot(data2$DateNtime, 
     data2$Voltage, 
     type="l",
     xlab="datetime", ylab="Voltage")

# Graph 3
plot(data2$DateNtime, data2$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")

lines(data2$DateNtime, data2$Sub_metering_2, col="red")
lines(data2$DateNtime, data2$Sub_metering_3, col="blue")
legend("topright",col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,bty='n', cex=.75,
       box.lwd=0)

# Graph 4
plot(data2$DateNtime, data2$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(data2$DateNtime, data2$Global_reactive_pow)
      
dev.off()     