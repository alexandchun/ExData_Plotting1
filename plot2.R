setwd("C:/Users/alex/Desktop/Coursera/Course 4/Week 1/Assignment/")

afile <- "./data/household_power_consumption.txt" 
#?read.table

data <- read.table(afile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

str(subSetData) 

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subSetData$Global_active_power) 
png("plot2.png", width=480, height=480) 

#?plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") 

dev.off()  
