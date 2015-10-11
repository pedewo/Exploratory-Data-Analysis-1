# Load load_transform.R code
source("load_transform.R")

# Covert data and time
DateTime <- strptime(paste(dataset$Date, dataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Convert GlobalActivePower in dataset
GlobalActivePower <- as.numeric(dataset$Global_active_power)

# Open graphics device
png("plot2.png", width=480, height=480)

# Draw the plot
plot(DateTime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Close the graphics device
dev.off()