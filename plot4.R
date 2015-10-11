# Covert data and time
DateTime <- strptime(paste(dataset$Date, dataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Convert GlobalActivePower in dataset
GlobalActivePower <- as.numeric(dataset$Global_active_power)

# Convert GlobalReactivePower in dataset
GlobalReactivePower <- as.numeric(dataset$Global_reactive_power)

voltage <- as.numeric(dataset$Voltage)

#Convert submetering
subMetering1 <- as.numeric(dataset$Sub_metering_1)
subMetering2 <- as.numeric(dataset$Sub_metering_2)
subMetering3 <- as.numeric(dataset$Sub_metering_3)

# Open graphics device
png("plot4.png", width=480, height=480)

# Draw the plot
par(mfrow = c(2, 2)) 

plot(DateTime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(DateTime, voltage, type="l", xlab="DateTime", ylab="Voltage")

plot(DateTime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTime, subMetering2, type="l", col="red")
lines(DateTime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(DateTime, GlobalReactivePower, type="l", xlab="DateTime", ylab="Global_reactive_power")

# Close the graphics device
dev.off()