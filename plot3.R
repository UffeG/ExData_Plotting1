# R script for Course Project W1 - Exploratory Data Analysis 
# Create Plot 3

# Last modified 2014-07-12
# Created by Ulf Rosén

# Read source data
source("readSource.R")

# Plot 3
png(filename="plot3.png", width=480, height=480)
with(reducedConsumption, plot(DateTime, Sub_metering_1, type="l", ylab = "Energy sub metering", xlab=""))
with(reducedConsumption, lines(DateTime, Sub_metering_2, col="red"))
with(reducedConsumption, lines(DateTime, Sub_metering_3, col="blue"))
legend("topright", lty=1, col=c("black","blue", "red"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

