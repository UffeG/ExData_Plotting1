# R script for Course Project W1 - Exploratory Data Analysis 
# Create Plot 2

# Last modified 2014-07-12
# Created by Ulf Rosén

# Read source data
source("readSource.R")

# Plot 2
png(filename="plot2.png", width=480, height=480)
with(reducedConsumption, plot(DateTime, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab=""))
dev.off()

