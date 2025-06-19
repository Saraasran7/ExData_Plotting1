# plot2.R

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

sub_data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
sub_data$DateTime <- strptime(paste(sub_data$Date, sub_data$Time), "%Y-%m-%d %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(sub_data$DateTime, sub_data$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

