## Getting file and subsetting data
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting dates/times in R
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plot 4
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
## saving as png
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
dev.off()

