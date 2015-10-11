# Load dataset household power consumption
filename <- "./data/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   dec =".",
                   stringsAsFactors=FALSE)

# Filter out dates 2007-02-01 and 2007-02-02
dataset <- subset(data, subset=(Date >= "1/2/2007" & Date <= "2/2/2007"))

# Remove data object
rm(data)
dim(dataset)

