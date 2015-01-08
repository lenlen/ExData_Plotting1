#include script that read data
source("readcsv.R")
#plot the diagram
hist(subsetData$Global_active_power, col='red', xlab="Global Active Power (kilowatts)", main="Global Active Power")
#set the image in png format
dev.copy(png, file = "plot1.png")
dev.off()
