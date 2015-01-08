#lubridate packages is required 
library(lubridate)

#download file from internet
if(file.exists("household_power_consumption.txt") == FALSE){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="Dataset.zip", method="curl")
    #extract the archive
    unzip("Dataset.zip")
}
#read the dataset (missing values are coded as ?)
data<-read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

#subset date
subsetData<-subset(data, data$Date=="1/2/2007" | data$Date == "2/2/2007")

#convert date
subsetData$Date <- dmy(subsetData$Date)
subsetData$Time <- hms(subsetData$Time)

#create new column
subsetData$DateTime <- subsetData$Date + subsetData$Time