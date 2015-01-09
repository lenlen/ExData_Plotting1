#include script that read data
source("readcsv.R")
par(mfrow=c(1,1))
#plot the diagram
plot(subsetData$DateTime, subsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", main="")
#set the image in png format
dev.copy(png, file = "result/plot2.png")
dev.off()
