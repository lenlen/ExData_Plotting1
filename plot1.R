#include script that read data
source("readcsv.R")
par(mfrow=c(1,1))
#plot the diagram
hist(subsetData$Global_active_power, col='red', xlab="Global Active Power (kilowatts)", main="Global Active Power")
#set the image in png format
dev.copy(png, file = "result/plot1.png")
dev.off()
