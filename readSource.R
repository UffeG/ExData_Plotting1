# R script for Course Project W1 - Exploratory Data Analysis 
# Read source data

# Last modified 2014-07-12
# Created by Ulf Rosén

# Location of data file
target <- "./data/household_power_consumption.txt"

# Read first 73000 rows since we are only interested of a subset
consumption <- read.csv(target, sep=";", na.strings="?", nrows=73000)

# Set english to get correct weskdays
Sys.setlocale("LC_TIME", "English")

# Convert to date
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")

# Subset selected dates
reducedConsumption <- subset(consumption, (consumption$Date > '2007-01-31' & consumption$Date < '2007-02-03'))

# Create DateTime variabel
reducedConsumption$DateTime <- paste(reducedConsumption$Date, reducedConsumption$Time, sep=" ")
reducedConsumption$DateTime <- strptime(reducedConsumption$DateTime, "%Y-%m-%d %H:%M:%S")