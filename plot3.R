#include script that read data
source("readcsv.R")
par(mfrow=c(1,1))
#plot the diagram
plot(subsetData$DateTime, subsetData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", main="", col="black")
lines(subsetData$DateTime, subsetData$Sub_metering_2, col="red")
lines(subsetData$DateTime, subsetData$Sub_metering_3, col="blue")
#add legend
legend("topright", legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty=1, col=c('black', 'red', 'blue'), cex=0.8)
#set the image in png format
dev.copy(png, file = "result/plot3.png")
dev.off()


