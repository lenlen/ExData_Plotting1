#include script that read data
source("readcsv.R")
#plot the diagram
plot(subsetData$DateTime, subsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", main="")
#set the image in png format
dev.copy(png, file = "plot2.png")
dev.off()
