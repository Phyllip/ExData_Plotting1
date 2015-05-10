source("LoadData.R")

png("plot2.png", width=400, height=400)
plot(data2$DateNtime, data2$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()