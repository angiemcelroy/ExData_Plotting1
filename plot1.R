## Getting Data File 
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Setting Sub Data- Need 2007-02-01 to 2007-02-02
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting Date/Time in R
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)


## Plot 1 and Saving as png
dev.copy(png, file="plot1.png", height=480, width=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()