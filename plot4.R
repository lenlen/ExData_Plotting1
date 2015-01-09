#include script that read data
source("readcsv.R")
#subplotting
par(mfrow=c(2,2))
#plot the diagram topleft
plot(subsetData$DateTime, subsetData$Global_active_power, cex.lab=0.8, cex.axis=0.7, type="l", xlab="", ylab="Global Active Power", main="")
#plot the diagram topright
plot(subsetData$DateTime, subsetData$Voltage, cex.lab=0.8, cex.axis=0.7, type="l", xlab="datetime", ylab="Voltage", main="")
#plot the diagram bottomleft
plot(subsetData$DateTime, subsetData$Sub_metering_1, cex.lab=0.8, cex.axis=0.7, type="l", xlab="", ylab="Energy sub metering", main="", col="black")
lines(subsetData$DateTime, subsetData$Sub_metering_2, col="red")
lines(subsetData$DateTime, subsetData$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"), bty = "n", lty=1, col=c('black', 'red', 'blue'), cex=0.7)
#plot the diagram bottomright
plot(subsetData$DateTime, subsetData$Global_reactive_power, cex.lab=0.8, cex.axis=0.7, type="l", xlab="datetime", ylab="Global_reactive_power", main="")
#set the image in png format
dev.copy(png, file = "result/plot4.png")
dev.off()
