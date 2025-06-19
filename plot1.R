# plot1.R

# Read data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

# Convert Date
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

# Subset for Feb 1 and 2, 2007
data_subset <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

# Plot 1
png("plot1.png", width=480, height=480)
hist(data_subset$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()

