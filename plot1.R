# Load load_transform.R code
source("load_transform.R")

# Convert GlobalActivePower in dataset
GlobalActivePower <- as.numeric(dataset$Global_active_power)

# Open graphics device
png("plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# Draw the histogram
hist(GlobalActivePower, 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     col = "red",
     breaks = 12)

#Close the graphics device
dev.off()