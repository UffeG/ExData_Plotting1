# R script for Course Project W1 - Exploratory Data Analysis 
# Create Plot 1

# Last modified 2014-07-12
# Created by Ulf Rosén

# Read source data
source("readSource.R")

# Plot 1 as png
png(filename="plot1.png", width=480, height=480)
hist(reducedConsumption$Global_active_power, main="Global Active Power", col="red", xlab = "Global Active Power (kilowatts)")
dev.off()

