# R script for Course Project W1 - Exploratory Data Analysis 
# Create Plot 4

# Last modified 2014-07-12
# Created by Ulf Rosén

# Read source data
source("readSource.R")

# Plot 4
png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
with(reducedConsumption, plot(DateTime, Global_active_power, type="l", ylab = "Global Active Power", xlab=""))
with(reducedConsumption, plot(DateTime, Voltage, type="l", ylab = "Voltage", xlab="datetime"))
with(reducedConsumption, plot(DateTime, Sub_metering_1, type="l", ylab = "Energy sub metering", xlab=""))
with(reducedConsumption, lines(DateTime, Sub_metering_2, col="red"))
with(reducedConsumption, lines(DateTime, Sub_metering_3, col="blue"))
legend("topright", lty=1, bty="n", col=c("black","blue", "red"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(reducedConsumption, plot(DateTime, Global_reactive_power, type="l", xlab="datetime"))
dev.off()
