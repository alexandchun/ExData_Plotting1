setwd("C:/Users/alex/Desktop/Coursera/Course 4/Week 1/Assignment/")

afile <- "./data/household_power_consumption.txt" 
#?read.table

data <- read.table(afile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

#str(subSetData) 
  
globalActivePower <- as.numeric(subSetData$Global_active_power) 
png("plot1.png", width=480, height=480) 

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 

dev.off()  
